
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input15' ;
HOSTNAME                  (idx, [1: 12])  = 'n0089.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:43 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00928E+00  1.00307E+00  1.00391E+00  1.00125E+00  9.92589E-01  9.99203E-01  1.00009E+00  9.93709E-01  1.00501E+00  9.98961E-01  9.97953E-01  9.95929E-01  9.99551E-01  9.96232E-01  1.00439E+00  9.95759E-01  1.00124E+00  1.00350E+00  9.99364E-01  9.99022E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.12824E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.28718E-01 2.5E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81986E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.86093E-01 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.48783E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.85541E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.85526E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.62971E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.57908E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002042 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00032 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00032 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.82538E+02 ;
RUNNING_TIME              (idx, 1)        =  2.94716E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.22283E-01  1.22283E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.38333E-03  1.38333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.93479E+01  2.93479E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.94712E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76607 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98370E+01 0.00015 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86722E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4798.29;
MEMSIZE                   (idx, 1)        = 831.78;
XS_MEMSIZE                (idx, 1)        = 499.42;
MAT_MEMSIZE               (idx, 1)        = 195.47;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.51;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 164840 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35785E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.44633E-01 0.00062 ];
U235_FISS                 (idx, [1:   4]) = [  7.27181E+18 0.00020  9.98350E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20174E+16 0.00738  1.64962E-03 0.00737 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71374E+18 0.00062  2.75721E-01 0.00055 ];
U238_CAPT                 (idx, [1:   4]) = [  2.19813E+18 0.00062  3.53622E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002042 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80408E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002042 2.01804E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9074570 9.15509E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10633580 1.07291E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 293892 2.96269E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002042 2.01804E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -1.89990E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.2E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.21507E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34971E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35785E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.00314E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.01172E+17 0.00218 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36983E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.54125E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.7E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.30759E+00 0.00022  1.29896E+00 0.00022  8.61882E-03 0.00388 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30749E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.30730E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30749E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32715E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80721E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80719E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.83580E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.83516E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.63992E-03 0.00564 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.58950E-03 0.00153 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.09002E-03 0.00291  1.60749E-04 0.01551  8.44596E-04 0.00698  8.29694E-04 0.00709  2.32700E-03 0.00415  6.78909E-04 0.00765  2.49074E-04 0.01290 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.72730E-01 0.00691  1.10666E-02 0.00802  3.18208E-02 1.5E-05  1.09344E-01 0.00050  3.17094E-01 2.1E-05  1.35366E+00 2.0E-05  8.21462E+00 0.00511 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.58757E-03 0.00386  2.10295E-04 0.02076  1.09474E-03 0.00900  1.07137E-03 0.00968  3.01134E-03 0.00552  8.79180E-04 0.01000  3.20634E-04 0.01726 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.71204E-01 0.00913  1.24906E-02 1.9E-07  3.18207E-02 2.0E-05  1.09401E-01 3.6E-05  3.17094E-01 2.8E-05  1.35365E+00 2.9E-05  8.64221E+00 0.00018 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.73958E-04 0.00065  3.74104E-04 0.00065  3.51563E-04 0.00761 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.88933E-04 0.00060  4.89123E-04 0.00061  4.59714E-04 0.00761 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.58812E-03 0.00391  2.11782E-04 0.02137  1.08683E-03 0.00955  1.06245E-03 0.01011  3.01670E-03 0.00557  8.88730E-04 0.01019  3.21628E-04 0.01728 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.74373E-01 0.00923  1.24906E-02 2.5E-07  3.18207E-02 2.2E-05  1.09396E-01 3.6E-05  3.17089E-01 2.9E-05  1.35368E+00 2.5E-05  8.64290E+00 0.00020 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.57856E-04 0.00144  3.57903E-04 0.00145  3.52071E-04 0.01936 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.67892E-04 0.00143  4.67954E-04 0.00144  4.60355E-04 0.01937 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.60535E-03 0.01126  2.06389E-04 0.06319  1.11137E-03 0.02817  1.02900E-03 0.02892  2.98183E-03 0.01650  9.24832E-04 0.03160  3.51936E-04 0.05098 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.96665E-01 0.02633  1.24906E-02 7.5E-07  3.18186E-02 7.5E-05  1.09395E-01 8.9E-05  3.17097E-01 8.9E-05  1.35375E+00 5.3E-05  8.64575E+00 0.00054 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.60985E-03 0.01084  2.08266E-04 0.06173  1.10193E-03 0.02742  1.04221E-03 0.02792  2.99339E-03 0.01586  9.17199E-04 0.03041  3.46864E-04 0.04907 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.97690E-01 0.02567  1.24906E-02 7.5E-07  3.18188E-02 7.3E-05  1.09397E-01 9.2E-05  3.17095E-01 8.3E-05  1.35376E+00 4.9E-05  8.64572E+00 0.00054 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.85401E+01 0.01142 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.66468E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79141E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.59795E-03 0.00214 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.80091E+01 0.00217 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08756E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59096E-05 8.5E-05  3.59086E-05 8.5E-05  3.60569E-05 0.00107 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.53025E-04 0.00040  7.53267E-04 0.00040  7.15305E-04 0.00484 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.08039E-01 0.00015  7.07070E-01 0.00015  9.13861E-01 0.00463 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08592E+01 0.00662 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.85526E+02 0.00023  1.78420E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.94795E+04 0.00170  3.79364E+05 0.00069  8.97000E+05 0.00039  1.66341E+06 0.00030  1.87416E+06 0.00021  1.94173E+06 0.00015  1.45921E+06 0.00013  1.14286E+06 0.00018  1.62974E+06 0.00014  1.60426E+06 0.00011  1.75053E+06 0.00011  1.74175E+06 9.9E-05  1.89968E+06 1.0E-04  1.85602E+06 0.00011  1.86309E+06 0.00011  1.63584E+06 0.00012  1.64698E+06 0.00011  1.63842E+06 0.00012  1.62907E+06 0.00012  3.22893E+06 8.7E-05  3.17406E+06 9.3E-05  2.32571E+06 0.00011  1.51521E+06 0.00014  1.79827E+06 0.00014  1.72199E+06 0.00014  1.46342E+06 0.00016  2.58507E+06 0.00015  5.52158E+05 0.00025  6.91957E+05 0.00026  6.25019E+05 0.00025  3.68170E+05 0.00032  6.44158E+05 0.00030  4.45508E+05 0.00036  3.90725E+05 0.00034  7.67625E+04 0.00068  7.62917E+04 0.00073  7.87319E+04 0.00068  8.14622E+04 0.00065  8.07855E+04 0.00065  8.05481E+04 0.00075  8.33721E+04 0.00065  7.91673E+04 0.00071  1.51677E+05 0.00053  2.49879E+05 0.00053  3.36874E+05 0.00046  1.06467E+06 0.00033  1.61435E+06 0.00035  2.53987E+06 0.00042  2.08070E+06 0.00047  1.64684E+06 0.00048  1.30880E+06 0.00048  1.49744E+06 0.00050  2.66037E+06 0.00048  3.24138E+06 0.00050  5.34585E+06 0.00051  6.58256E+06 0.00051  7.61370E+06 0.00054  3.97353E+06 0.00053  2.52288E+06 0.00060  1.66777E+06 0.00058  1.41304E+06 0.00062  1.33727E+06 0.00063  1.02903E+06 0.00063  6.78623E+05 0.00068  5.76593E+05 0.00061  5.26075E+05 0.00071  4.35765E+05 0.00084  2.98174E+05 0.00092  1.96046E+05 0.00089  6.18915E+04 0.00142 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32696E+00 0.00023 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.55098E+21 0.00021  3.45223E+21 0.00055 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38934E-01 1.8E-05  3.87494E-01 4.1E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.19267E-04 0.00038  9.57604E-04 0.00039 ];
INF_ABS                   (idx, [1:   4]) = [  1.14960E-03 0.00032  2.72743E-03 0.00045 ];
INF_FISS                  (idx, [1:   4]) = [  3.30334E-04 0.00042  1.76982E-03 0.00053 ];
INF_NSF                   (idx, [1:   4]) = [  8.06446E-04 0.00042  4.31253E-03 0.00053 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44130E+00 4.2E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.5E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.16410E-07 0.00011  2.08667E-06 4.4E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37784E-01 1.8E-05  3.84766E-01 4.3E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13583E-02 0.00018  1.14241E-02 0.00041 ];
INF_SCATT2                (idx, [1:   4]) = [  2.47960E-03 0.00145 -4.36292E-03 0.00094 ];
INF_SCATT3                (idx, [1:   4]) = [  4.65475E-04 0.00645 -4.01063E-03 0.00082 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.50348E-04 0.01803 -4.65329E-03 0.00061 ];
INF_SCATT5                (idx, [1:   4]) = [  1.15211E-04 0.02047 -2.69677E-03 0.00088 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.38544E-04 0.00670 -4.47430E-03 0.00055 ];
INF_SCATT7                (idx, [1:   4]) = [  1.35173E-04 0.01375 -6.11036E-04 0.00360 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37819E-01 1.8E-05  3.84766E-01 4.3E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13674E-02 0.00018  1.14241E-02 0.00041 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48132E-03 0.00145 -4.36292E-03 0.00094 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.65734E-04 0.00644 -4.01063E-03 0.00082 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.50370E-04 0.01804 -4.65329E-03 0.00061 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.15196E-04 0.02043 -2.69677E-03 0.00088 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.38505E-04 0.00671 -4.47430E-03 0.00055 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.35173E-04 0.01377 -6.11036E-04 0.00360 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01034E-01 3.2E-05  3.74564E-01 4.5E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10729E+00 3.2E-05  8.89924E-01 4.5E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.11511E-03 0.00034  2.72743E-03 0.00045 ];
INF_REMXS                 (idx, [1:   4]) = [  5.64749E-03 0.00014  4.58592E-03 0.00039 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33287E-01 1.7E-05  4.49789E-03 0.00022  1.85788E-03 0.00042  3.82909E-01 4.4E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23446E-02 0.00017 -9.86295E-04 0.00052 -2.08816E-04 0.00166  1.16329E-02 0.00040 ];
INF_S2                    (idx, [1:   8]) = [  2.66173E-03 0.00133 -1.82122E-04 0.00226 -1.18171E-04 0.00217 -4.24475E-03 0.00096 ];
INF_S3                    (idx, [1:   8]) = [  5.13926E-04 0.00587 -4.84517E-05 0.00697 -4.19755E-05 0.00451 -3.96866E-03 0.00082 ];
INF_S4                    (idx, [1:   8]) = [ -1.12048E-04 0.02380 -3.83003E-05 0.00814 -2.73282E-05 0.00650 -4.62596E-03 0.00061 ];
INF_S5                    (idx, [1:   8]) = [  1.18987E-04 0.01995 -3.77562E-06 0.06563 -6.48075E-06 0.02598 -2.69029E-03 0.00087 ];
INF_S6                    (idx, [1:   8]) = [ -3.13454E-04 0.00714 -2.50899E-05 0.00948 -1.83096E-05 0.00788 -4.45599E-03 0.00056 ];
INF_S7                    (idx, [1:   8]) = [  1.13012E-04 0.01670  2.21601E-05 0.00977  8.03245E-06 0.01654 -6.19068E-04 0.00357 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33321E-01 1.8E-05  4.49789E-03 0.00022  1.85788E-03 0.00042  3.82909E-01 4.4E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23537E-02 0.00017 -9.86295E-04 0.00052 -2.08816E-04 0.00166  1.16329E-02 0.00040 ];
INF_SP2                   (idx, [1:   8]) = [  2.66345E-03 0.00133 -1.82122E-04 0.00226 -1.18171E-04 0.00217 -4.24475E-03 0.00096 ];
INF_SP3                   (idx, [1:   8]) = [  5.14186E-04 0.00587 -4.84517E-05 0.00697 -4.19755E-05 0.00451 -3.96866E-03 0.00082 ];
INF_SP4                   (idx, [1:   8]) = [ -1.12070E-04 0.02382 -3.83003E-05 0.00814 -2.73282E-05 0.00650 -4.62596E-03 0.00061 ];
INF_SP5                   (idx, [1:   8]) = [  1.18972E-04 0.01991 -3.77562E-06 0.06563 -6.48075E-06 0.02598 -2.69029E-03 0.00087 ];
INF_SP6                   (idx, [1:   8]) = [ -3.13415E-04 0.00716 -2.50899E-05 0.00948 -1.83096E-05 0.00788 -4.45599E-03 0.00056 ];
INF_SP7                   (idx, [1:   8]) = [  1.13013E-04 0.01673  2.21601E-05 0.00977  8.03245E-06 0.01654 -6.19068E-04 0.00357 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98852E-01 0.00023  4.25639E-01 0.00064 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99187E-01 0.00037  4.20778E-01 0.00080 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99463E-01 0.00037  4.21341E-01 0.00096 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97918E-01 0.00035  4.35168E-01 0.00105 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11539E+00 0.00023  7.83167E-01 0.00064 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11415E+00 0.00037  7.92233E-01 0.00080 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11312E+00 0.00037  7.91199E-01 0.00097 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11889E+00 0.00035  7.66071E-01 0.00105 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.58757E-03 0.00386  2.10295E-04 0.02076  1.09474E-03 0.00900  1.07137E-03 0.00968  3.01134E-03 0.00552  8.79180E-04 0.01000  3.20634E-04 0.01726 ];
LAMBDA                    (idx, [1:  14]) = [  7.71204E-01 0.00913  1.24906E-02 1.9E-07  3.18207E-02 2.0E-05  1.09401E-01 3.6E-05  3.17094E-01 2.8E-05  1.35365E+00 2.9E-05  8.64221E+00 0.00018 ];

