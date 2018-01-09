
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.29' ;
COMPILE_DATE              (idx, [1: 20])  = 'Jun 28 2017 19:26:40' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1:  8])  = 'FHR core' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1: 14])  = 'serp_full_core' ;
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input36' ;
HOSTNAME                  (idx, [1: 12])  = 'n0064.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:22 2018' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 2000 ;
SKIP                      (idx, 1)        = 500 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1515449715 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 20 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00187E+00  1.00456E+00  9.98158E-01  9.96963E-01  9.99170E-01  1.00346E+00  9.98967E-01  1.00093E+00  9.95922E-01  9.96809E-01  1.00295E+00  1.00319E+00  9.98517E-01  1.00314E+00  9.96955E-01  1.00033E+00  1.00153E+00  9.95275E-01  1.00158E+00  9.99716E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 4.7E-10  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.55696E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.24430E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83793E-01 4.8E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87991E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.88265E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.83385E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.83371E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.53369E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.80249E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002228 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.75820E+02 ;
RUNNING_TIME              (idx, 1)        =  2.91147E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.22033E-01  1.22033E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.13333E-03  1.13333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.89915E+01  2.89915E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.91143E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77762 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98503E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87151E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4736.89;
MEMSIZE                   (idx, 1)        = 768.18;
XS_MEMSIZE                (idx, 1)        = 458.05;
MAT_MEMSIZE               (idx, 1)        = 173.23;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3968.71;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 146032 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E-03 ;
URES_EMAX                 (idx, 1)        =  1.49029E-01 ;
URES_AVAIL                (idx, 1)        = 7 ;
URES_USED                 (idx, 1)        = 7 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 47 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 47 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 1455 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 1 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, 1)        =  0.00000E+00 ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
BETA_DECAY_SOURCE         (idx, 1)        =  0.00000E+00 ;

% Normaliation coefficient:

NORM_COEF                 (idx, [1:   4]) = [  1.36935E+15 0.00022  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.58864E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.26841E+18 0.00021  9.98334E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.21338E+16 0.00754  1.66642E-03 0.00754 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71085E+18 0.00061  2.70165E-01 0.00056 ];
U238_CAPT                 (idx, [1:   4]) = [  2.32436E+18 0.00063  3.66998E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002228 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79974E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002228 2.01800E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9167961 9.24952E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10540329 1.06341E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 293938 2.96309E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002228 2.01800E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.04891E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.2E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.33119E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.36132E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.36935E+19 0.00022 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.98155E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.02899E+17 0.00222 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.38161E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.53293E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43745E+00 6.6E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.29593E+00 0.00022  1.28747E+00 0.00022  8.53722E-03 0.00376 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.29633E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.29633E+00 0.00022 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.29633E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.31582E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81175E+01 4.6E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81163E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.71010E-07 0.00084 ];
IMP_EALF                  (idx, [1:   2]) = [  2.71200E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.64031E-03 0.00565 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.65778E-03 0.00151 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.10778E-03 0.00281  1.61683E-04 0.01611  8.49519E-04 0.00696  8.21059E-04 0.00687  2.34696E-03 0.00411  6.89182E-04 0.00757  2.39382E-04 0.01230 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.57148E-01 0.00647  1.08168E-02 0.00880  3.18192E-02 1.9E-05  1.09398E-01 2.7E-05  3.17087E-01 2.0E-05  1.35369E+00 1.9E-05  8.28523E+00 0.00466 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.57640E-03 0.00369  2.08686E-04 0.02142  1.10625E-03 0.00921  1.06534E-03 0.00909  3.00586E-03 0.00557  8.83988E-04 0.01024  3.06273E-04 0.01667 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.53507E-01 0.00878  1.24906E-02 2.3E-07  3.18190E-02 2.5E-05  1.09392E-01 2.9E-05  3.17099E-01 2.9E-05  1.35369E+00 2.5E-05  8.64295E+00 0.00018 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.77492E-04 0.00064  3.77627E-04 0.00064  3.57035E-04 0.00772 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.89156E-04 0.00060  4.89332E-04 0.00060  4.62691E-04 0.00773 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.59319E-03 0.00382  2.10376E-04 0.02183  1.09452E-03 0.00972  1.06547E-03 0.00946  3.02164E-03 0.00566  8.89596E-04 0.01054  3.11585E-04 0.01706 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.59653E-01 0.00899  1.24906E-02 3.6E-07  3.18184E-02 2.8E-05  1.09398E-01 4.5E-05  3.17099E-01 3.2E-05  1.35368E+00 3.0E-05  8.64278E+00 0.00019 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.62349E-04 0.00145  3.62473E-04 0.00146  3.44631E-04 0.01766 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.69532E-04 0.00144  4.69693E-04 0.00144  4.46551E-04 0.01766 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.49567E-03 0.01115  1.85100E-04 0.06834  1.07861E-03 0.02690  1.04651E-03 0.02860  2.95862E-03 0.01681  9.11486E-04 0.02974  3.15345E-04 0.05472 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.79357E-01 0.02710  1.24906E-02 7.5E-09  3.18165E-02 8.7E-05  1.09395E-01 8.4E-05  3.17089E-01 8.0E-05  1.35382E+00 4.8E-05  8.64142E+00 0.00041 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.47623E-03 0.01079  1.84257E-04 0.06491  1.07842E-03 0.02615  1.04034E-03 0.02766  2.95613E-03 0.01636  9.04473E-04 0.02915  3.12604E-04 0.05270 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.76868E-01 0.02657  1.24906E-02 7.5E-09  3.18166E-02 8.6E-05  1.09397E-01 8.7E-05  3.17100E-01 8.1E-05  1.35381E+00 4.9E-05  8.64139E+00 0.00041 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.79984E+01 0.01128 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.70400E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79965E-04 0.00031 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.54297E-03 0.00215 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.76713E+01 0.00221 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08704E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58064E-05 8.4E-05  3.58056E-05 8.5E-05  3.59365E-05 0.00103 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.51344E-04 0.00040  7.51581E-04 0.00040  7.14421E-04 0.00501 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.01076E-01 0.00015  7.00167E-01 0.00015  8.92857E-01 0.00450 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.06655E+01 0.00640 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.83371E+02 0.00023  1.77238E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.93924E+04 0.00155  3.79756E+05 0.00080  8.96771E+05 0.00042  1.66376E+06 0.00030  1.87361E+06 0.00020  1.94110E+06 0.00014  1.45918E+06 0.00015  1.14307E+06 0.00017  1.62963E+06 0.00014  1.60420E+06 0.00012  1.75059E+06 9.2E-05  1.74185E+06 0.00011  1.89905E+06 0.00011  1.85585E+06 0.00010  1.86298E+06 0.00012  1.63598E+06 0.00012  1.64658E+06 0.00012  1.63869E+06 0.00011  1.62934E+06 0.00012  3.22833E+06 9.3E-05  3.17279E+06 9.6E-05  2.32382E+06 0.00012  1.51279E+06 0.00015  1.79172E+06 0.00013  1.71228E+06 0.00016  1.45346E+06 0.00016  2.55774E+06 0.00017  5.44750E+05 0.00026  6.82719E+05 0.00027  6.15716E+05 0.00026  3.62334E+05 0.00032  6.33748E+05 0.00026  4.37180E+05 0.00031  3.81912E+05 0.00036  7.49381E+04 0.00075  7.43274E+04 0.00068  7.65751E+04 0.00063  7.91122E+04 0.00069  7.86258E+04 0.00068  7.79810E+04 0.00065  8.07816E+04 0.00063  7.66034E+04 0.00075  1.46216E+05 0.00050  2.39788E+05 0.00046  3.20870E+05 0.00047  1.00091E+06 0.00034  1.50370E+06 0.00040  2.38209E+06 0.00047  1.97173E+06 0.00051  1.57183E+06 0.00053  1.25467E+06 0.00056  1.44312E+06 0.00055  2.57479E+06 0.00054  3.15603E+06 0.00058  5.23872E+06 0.00058  6.49589E+06 0.00059  7.56570E+06 0.00062  3.96743E+06 0.00064  2.52346E+06 0.00067  1.67137E+06 0.00068  1.41704E+06 0.00067  1.34230E+06 0.00068  1.03310E+06 0.00073  6.81940E+05 0.00075  5.79453E+05 0.00072  5.28989E+05 0.00078  4.37487E+05 0.00082  2.99942E+05 0.00101  1.97349E+05 0.00109  6.22569E+04 0.00131 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.31582E+00 0.00021 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.56506E+21 0.00021  3.41656E+21 0.00064 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38969E-01 1.8E-05  3.87670E-01 4.7E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.50964E-04 0.00039  9.65152E-04 0.00045 ];
INF_ABS                   (idx, [1:   4]) = [  1.17752E-03 0.00034  2.75606E-03 0.00052 ];
INF_FISS                  (idx, [1:   4]) = [  3.26559E-04 0.00045  1.79090E-03 0.00062 ];
INF_NSF                   (idx, [1:   4]) = [  7.97254E-04 0.00045  4.36389E-03 0.00062 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44138E+00 4.2E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.4E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.14303E-07 0.00011  2.10223E-06 4.9E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37792E-01 1.8E-05  3.84914E-01 5.0E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13707E-02 0.00021  1.13290E-02 0.00043 ];
INF_SCATT2                (idx, [1:   4]) = [  2.49557E-03 0.00138 -4.41493E-03 0.00092 ];
INF_SCATT3                (idx, [1:   4]) = [  4.70661E-04 0.00624 -4.04560E-03 0.00079 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.45569E-04 0.02021 -4.66265E-03 0.00061 ];
INF_SCATT5                (idx, [1:   4]) = [  1.19600E-04 0.02101 -2.71752E-03 0.00098 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.23255E-04 0.00719 -4.44898E-03 0.00052 ];
INF_SCATT7                (idx, [1:   4]) = [  1.27118E-04 0.01642 -6.21617E-04 0.00373 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37826E-01 1.8E-05  3.84914E-01 5.0E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13797E-02 0.00021  1.13290E-02 0.00043 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.49725E-03 0.00138 -4.41493E-03 0.00092 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.70928E-04 0.00623 -4.04560E-03 0.00079 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.45516E-04 0.02022 -4.66265E-03 0.00061 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.19579E-04 0.02100 -2.71752E-03 0.00098 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.23244E-04 0.00718 -4.44898E-03 0.00052 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.27120E-04 0.01640 -6.21617E-04 0.00373 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00983E-01 3.5E-05  3.74881E-01 5.1E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10748E+00 3.5E-05  8.89171E-01 5.1E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.14296E-03 0.00036  2.75606E-03 0.00052 ];
INF_REMXS                 (idx, [1:   4]) = [  5.44385E-03 0.00014  4.41084E-03 0.00045 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  3.33525E-01 1.7E-05  4.26648E-03 0.00023  1.65463E-03 0.00048  3.83259E-01 5.0E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23225E-02 0.00020 -9.51806E-04 0.00052 -1.76919E-04 0.00175  1.15059E-02 0.00042 ];
INF_S2                    (idx, [1:   8]) = [  2.66473E-03 0.00128 -1.69160E-04 0.00261 -1.07541E-04 0.00202 -4.30739E-03 0.00094 ];
INF_S3                    (idx, [1:   8]) = [  5.15414E-04 0.00582 -4.47536E-05 0.00772 -3.83096E-05 0.00514 -4.00729E-03 0.00079 ];
INF_S4                    (idx, [1:   8]) = [ -1.09808E-04 0.02678 -3.57607E-05 0.00824 -2.45607E-05 0.00718 -4.63809E-03 0.00061 ];
INF_S5                    (idx, [1:   8]) = [  1.21796E-04 0.02073 -2.19610E-06 0.12641 -5.95867E-06 0.02978 -2.71156E-03 0.00097 ];
INF_S6                    (idx, [1:   8]) = [ -2.99071E-04 0.00776 -2.41840E-05 0.00923 -1.67541E-05 0.00886 -4.43222E-03 0.00051 ];
INF_S7                    (idx, [1:   8]) = [  1.05888E-04 0.01983  2.12296E-05 0.01156  6.96127E-06 0.02173 -6.28578E-04 0.00371 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33560E-01 1.7E-05  4.26648E-03 0.00023  1.65463E-03 0.00048  3.83259E-01 5.0E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23315E-02 0.00020 -9.51806E-04 0.00052 -1.76919E-04 0.00175  1.15059E-02 0.00042 ];
INF_SP2                   (idx, [1:   8]) = [  2.66641E-03 0.00128 -1.69160E-04 0.00261 -1.07541E-04 0.00202 -4.30739E-03 0.00094 ];
INF_SP3                   (idx, [1:   8]) = [  5.15681E-04 0.00581 -4.47536E-05 0.00772 -3.83096E-05 0.00514 -4.00729E-03 0.00079 ];
INF_SP4                   (idx, [1:   8]) = [ -1.09755E-04 0.02678 -3.57607E-05 0.00824 -2.45607E-05 0.00718 -4.63809E-03 0.00061 ];
INF_SP5                   (idx, [1:   8]) = [  1.21775E-04 0.02073 -2.19610E-06 0.12641 -5.95867E-06 0.02978 -2.71156E-03 0.00097 ];
INF_SP6                   (idx, [1:   8]) = [ -2.99059E-04 0.00775 -2.41840E-05 0.00923 -1.67541E-05 0.00886 -4.43222E-03 0.00051 ];
INF_SP7                   (idx, [1:   8]) = [  1.05891E-04 0.01980  2.12296E-05 0.01156  6.96127E-06 0.02173 -6.28578E-04 0.00371 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98846E-01 0.00022  4.26795E-01 0.00066 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99360E-01 0.00035  4.22212E-01 0.00097 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99322E-01 0.00039  4.22169E-01 0.00096 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97869E-01 0.00037  4.36390E-01 0.00109 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11541E+00 0.00022  7.81048E-01 0.00066 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11350E+00 0.00035  7.89566E-01 0.00096 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11365E+00 0.00039  7.89646E-01 0.00097 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11908E+00 0.00037  7.63932E-01 0.00108 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.57640E-03 0.00369  2.08686E-04 0.02142  1.10625E-03 0.00921  1.06534E-03 0.00909  3.00586E-03 0.00557  8.83988E-04 0.01024  3.06273E-04 0.01667 ];
LAMBDA                    (idx, [1:  14]) = [  7.53507E-01 0.00878  1.24906E-02 2.3E-07  3.18190E-02 2.5E-05  1.09392E-01 2.9E-05  3.17099E-01 2.9E-05  1.35369E+00 2.5E-05  8.64295E+00 0.00018 ];

