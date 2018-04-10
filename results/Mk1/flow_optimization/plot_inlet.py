# plot the center inlet boundary condition
import matplotlib.pyplot as plt
import numpy as np


def f1(x):
    # bottom heavy inlet
    if x < 4.305 and x > 1.4482:
        return (3.3-0.45*(2-x)**2)*0.016
    if x < 1.4482:
        return 0.04
    if x > 4.305 and x < 4.925:
        return 0.01
    if x > 4.925 and x < 5.7285:
        return 0.005
    return 0
f1 = np.vectorize(f1)


def f2(x):
    # evenly distributed inlet
    if x < 4.305 and x > 1.4482:
        return (2.9-0.1*(2.8-x)**2)*0.015
    if x < 1.4482:
        return 0.04
    if x > 4.305 and x < 4.925:
        return 0.01
    if x > 4.925 and x < 5.7285:
        return 0.005
    return 0
f2 = np.vectorize(f2)


def f3(x):
    # initial inlet design with only a small opening in the middle
    if x < 3 and x > 1.5:
        return 0.14*(x-1.5)
    return 0.00000001
f3 = np.vectorize(f3)

# define the grid
x = np.arange(0, 5.8, 0.1)
vel_max = 0.2

# plot
f, (ax1, ax2, ax3) = plt.subplots(1, 3, sharey=True)

ax1.plot(f3(x), x, '.')
ax1.set_title('Limited opening')
ax1.set_ylabel('Height (m)')
plt.xlim(0, vel_max)

ax2.plot(f2(x), x, '.')
ax2.set_title('Even inlet')
ax2.set_xlabel('Inlet velocity (m/s)')
ax2.set_xlim(0, vel_max)

ax3.plot(f1(x), x, '.')
ax3.set_title('Bottom heavy inlet')
plt.savefig('inlet_vel')
plt.show()
