
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input10' ;
HOSTNAME                  (idx, [1: 12])  = 'n0084.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:44 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00689E+00  9.97735E-01  1.00008E+00  9.95199E-01  1.00123E+00  9.98830E-01  1.00329E+00  1.00257E+00  1.00255E+00  9.98088E-01  9.98837E-01  1.00598E+00  1.00562E+00  9.96066E-01  9.88862E-01  9.98256E-01  1.00332E+00  1.00291E+00  9.95050E-01  9.98636E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 1.1E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.45128E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.25487E-01 2.7E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81348E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85529E-01 4.6E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.65938E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84144E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84130E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.60757E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.78768E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002177 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.82894E+02 ;
RUNNING_TIME              (idx, 1)        =  2.94915E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.29333E-01  1.29333E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.41666E-03  1.41666E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.93608E+01  2.93608E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.94911E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76477 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98393E+01 0.00014 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86740E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4800.52;
MEMSIZE                   (idx, 1)        = 834.28;
XS_MEMSIZE                (idx, 1)        = 501.06;
MAT_MEMSIZE               (idx, 1)        = 196.32;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.24;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 165563 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.33856E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.30159E-01 0.00064 ];
U235_FISS                 (idx, [1:   4]) = [  7.26925E+18 0.00021  9.98382E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.17825E+16 0.00768  1.61794E-03 0.00767 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70345E+18 0.00062  2.82554E-01 0.00056 ];
U238_CAPT                 (idx, [1:   4]) = [  2.06512E+18 0.00065  3.42508E-01 0.00049 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002177 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80538E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002177 2.01805E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8928727 9.00816E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10782808 1.08794E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 290642 2.92964E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002177 2.01805E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.79397E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.03144E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.33135E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.33856E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.85451E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.96100E+17 0.00224 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35096E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.48630E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.32581E+00 0.00022  1.31713E+00 0.00021  8.76028E-03 0.00376 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.32573E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.32613E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.32573E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.34543E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81573E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81562E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.60435E-07 0.00081 ];
IMP_EALF                  (idx, [1:   2]) = [  2.60588E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.39820E-03 0.00580 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.46015E-03 0.00152 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.03389E-03 0.00284  1.58449E-04 0.01586  8.38188E-04 0.00674  8.19505E-04 0.00707  2.30893E-03 0.00408  6.70345E-04 0.00756  2.38472E-04 0.01310 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.59290E-01 0.00682  1.08418E-02 0.00872  3.18181E-02 2.3E-05  1.09396E-01 2.5E-05  3.17087E-01 2.0E-05  1.35373E+00 1.7E-05  8.19446E+00 0.00524 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.60257E-03 0.00372  2.04554E-04 0.02073  1.10083E-03 0.00896  1.07337E-03 0.00951  3.01623E-03 0.00537  8.95079E-04 0.01005  3.12515E-04 0.01723 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.61415E-01 0.00889  1.24906E-02 2.7E-07  3.18187E-02 2.7E-05  1.09396E-01 3.2E-05  3.17093E-01 2.9E-05  1.35373E+00 2.2E-05  8.64483E+00 0.00021 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.65793E-04 0.00064  3.65889E-04 0.00064  3.51210E-04 0.00733 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.84923E-04 0.00060  4.85050E-04 0.00060  4.65597E-04 0.00733 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.61153E-03 0.00386  2.03137E-04 0.02130  1.10619E-03 0.00931  1.07207E-03 0.00960  3.02584E-03 0.00567  8.91003E-04 0.01037  3.13290E-04 0.01765 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.60382E-01 0.00914  1.24906E-02 2.3E-07  3.18199E-02 2.3E-05  1.09397E-01 3.8E-05  3.17081E-01 2.8E-05  1.35371E+00 2.5E-05  8.64529E+00 0.00025 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.50502E-04 0.00148  3.50620E-04 0.00148  3.32257E-04 0.01720 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.64656E-04 0.00146  4.64813E-04 0.00147  4.40452E-04 0.01719 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.60883E-03 0.01106  1.91312E-04 0.06308  1.08745E-03 0.02772  1.05907E-03 0.02786  2.97545E-03 0.01655  9.52142E-04 0.03012  3.43402E-04 0.05036 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.14301E-01 0.02668  1.24906E-02 7.5E-09  3.18208E-02 4.9E-05  1.09390E-01 6.1E-05  3.17098E-01 8.3E-05  1.35370E+00 6.1E-05  8.65512E+00 0.00076 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.61063E-03 0.01081  1.93789E-04 0.06170  1.10782E-03 0.02721  1.05405E-03 0.02699  2.95160E-03 0.01618  9.57108E-04 0.02915  3.46267E-04 0.04942 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.14313E-01 0.02632  1.24906E-02 7.5E-09  3.18205E-02 5.1E-05  1.09391E-01 6.5E-05  3.17100E-01 8.2E-05  1.35369E+00 6.2E-05  8.65506E+00 0.00076 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.89326E+01 0.01120 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.58570E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.75350E-04 0.00031 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.63957E-03 0.00212 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.85238E+01 0.00217 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.09198E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58056E-05 8.2E-05  3.58050E-05 8.3E-05  3.59073E-05 0.00102 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.42743E-04 0.00040  7.42967E-04 0.00040  7.07730E-04 0.00470 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.15335E-01 0.00015  7.14307E-01 0.00015  9.34301E-01 0.00452 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08288E+01 0.00658 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84130E+02 0.00023  1.76072E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.92712E+04 0.00147  3.79606E+05 0.00067  8.97103E+05 0.00038  1.66346E+06 0.00028  1.87394E+06 0.00017  1.94210E+06 0.00014  1.45876E+06 0.00016  1.14331E+06 0.00016  1.62955E+06 0.00014  1.60440E+06 0.00011  1.75090E+06 0.00011  1.74182E+06 0.00011  1.89995E+06 0.00011  1.85599E+06 0.00011  1.86326E+06 0.00011  1.63610E+06 0.00013  1.64687E+06 9.9E-05  1.63841E+06 0.00012  1.62962E+06 0.00012  3.22966E+06 0.00010  3.17492E+06 9.6E-05  2.32786E+06 0.00011  1.51760E+06 0.00014  1.80186E+06 0.00012  1.72923E+06 0.00015  1.47106E+06 0.00016  2.60220E+06 0.00016  5.55998E+05 0.00026  6.96962E+05 0.00029  6.27126E+05 0.00026  3.69291E+05 0.00032  6.44768E+05 0.00027  4.44622E+05 0.00035  3.87996E+05 0.00033  7.60141E+04 0.00063  7.54173E+04 0.00063  7.77003E+04 0.00076  8.02027E+04 0.00067  7.96785E+04 0.00068  7.89124E+04 0.00068  8.17174E+04 0.00068  7.74743E+04 0.00067  1.47786E+05 0.00056  2.41741E+05 0.00045  3.22732E+05 0.00046  9.97807E+05 0.00034  1.48522E+06 0.00038  2.34971E+06 0.00045  1.94946E+06 0.00044  1.55814E+06 0.00050  1.24512E+06 0.00050  1.43462E+06 0.00047  2.56652E+06 0.00048  3.15444E+06 0.00050  5.25445E+06 0.00050  6.54448E+06 0.00050  7.65079E+06 0.00053  4.02249E+06 0.00051  2.56178E+06 0.00056  1.69750E+06 0.00056  1.44007E+06 0.00058  1.36378E+06 0.00059  1.05114E+06 0.00066  6.93167E+05 0.00060  5.89738E+05 0.00067  5.37989E+05 0.00076  4.44538E+05 0.00071  3.05768E+05 0.00077  2.00316E+05 0.00099  6.33770E+04 0.00137 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.34585E+00 0.00019 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.49716E+21 0.00019  3.35740E+21 0.00052 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38861E-01 1.5E-05  3.87580E-01 4.6E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.90713E-04 0.00038  9.72832E-04 0.00040 ];
INF_ABS                   (idx, [1:   4]) = [  1.11853E-03 0.00032  2.80055E-03 0.00044 ];
INF_FISS                  (idx, [1:   4]) = [  3.27818E-04 0.00039  1.82772E-03 0.00052 ];
INF_NSF                   (idx, [1:   4]) = [  8.00315E-04 0.00039  4.45360E-03 0.00052 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44134E+00 4.0E-06  2.43670E+00 3.7E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.9E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.15103E-07 0.00011  2.10969E-06 4.2E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37743E-01 1.5E-05  3.84780E-01 4.8E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13571E-02 0.00020  1.12885E-02 0.00044 ];
INF_SCATT2                (idx, [1:   4]) = [  2.47911E-03 0.00139 -4.43354E-03 0.00085 ];
INF_SCATT3                (idx, [1:   4]) = [  4.72604E-04 0.00527 -4.05992E-03 0.00083 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.47230E-04 0.02020 -4.64671E-03 0.00059 ];
INF_SCATT5                (idx, [1:   4]) = [  1.15970E-04 0.02160 -2.72013E-03 0.00104 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.25822E-04 0.00661 -4.42310E-03 0.00052 ];
INF_SCATT7                (idx, [1:   4]) = [  1.26778E-04 0.01532 -6.28647E-04 0.00347 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37777E-01 1.5E-05  3.84780E-01 4.8E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13663E-02 0.00020  1.12885E-02 0.00044 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48071E-03 0.00139 -4.43354E-03 0.00085 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.72855E-04 0.00527 -4.05992E-03 0.00083 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.47174E-04 0.02019 -4.64671E-03 0.00059 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.15919E-04 0.02161 -2.72013E-03 0.00104 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.25867E-04 0.00660 -4.42310E-03 0.00052 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.26754E-04 0.01535 -6.28647E-04 0.00347 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00964E-01 3.1E-05  3.74856E-01 5.0E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10755E+00 3.1E-05  8.89231E-01 5.0E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.08398E-03 0.00033  2.80055E-03 0.00044 ];
INF_REMXS                 (idx, [1:   4]) = [  5.36017E-03 0.00016  4.37853E-03 0.00039 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33500E-01 1.5E-05  4.24241E-03 0.00024  1.57829E-03 0.00049  3.83202E-01 4.9E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23122E-02 0.00019 -9.55087E-04 0.00048 -1.66866E-04 0.00170  1.14554E-02 0.00043 ];
INF_S2                    (idx, [1:   8]) = [  2.64587E-03 0.00132 -1.66764E-04 0.00251 -1.02961E-04 0.00239 -4.33058E-03 0.00087 ];
INF_S3                    (idx, [1:   8]) = [  5.15586E-04 0.00483 -4.29817E-05 0.00827 -3.70817E-05 0.00515 -4.02283E-03 0.00084 ];
INF_S4                    (idx, [1:   8]) = [ -1.12272E-04 0.02656 -3.49577E-05 0.00881 -2.34244E-05 0.00665 -4.62328E-03 0.00059 ];
INF_S5                    (idx, [1:   8]) = [  1.18728E-04 0.02070 -2.75798E-06 0.09285 -5.73942E-06 0.02331 -2.71439E-03 0.00105 ];
INF_S6                    (idx, [1:   8]) = [ -3.01989E-04 0.00709 -2.38326E-05 0.00906 -1.62176E-05 0.00802 -4.40688E-03 0.00053 ];
INF_S7                    (idx, [1:   8]) = [  1.05384E-04 0.01818  2.13937E-05 0.01114  6.48843E-06 0.02058 -6.35135E-04 0.00344 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33535E-01 1.5E-05  4.24241E-03 0.00024  1.57829E-03 0.00049  3.83202E-01 4.9E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23214E-02 0.00019 -9.55087E-04 0.00048 -1.66866E-04 0.00170  1.14554E-02 0.00043 ];
INF_SP2                   (idx, [1:   8]) = [  2.64748E-03 0.00132 -1.66764E-04 0.00251 -1.02961E-04 0.00239 -4.33058E-03 0.00087 ];
INF_SP3                   (idx, [1:   8]) = [  5.15837E-04 0.00483 -4.29817E-05 0.00827 -3.70817E-05 0.00515 -4.02283E-03 0.00084 ];
INF_SP4                   (idx, [1:   8]) = [ -1.12217E-04 0.02654 -3.49577E-05 0.00881 -2.34244E-05 0.00665 -4.62328E-03 0.00059 ];
INF_SP5                   (idx, [1:   8]) = [  1.18677E-04 0.02072 -2.75798E-06 0.09285 -5.73942E-06 0.02331 -2.71439E-03 0.00105 ];
INF_SP6                   (idx, [1:   8]) = [ -3.02034E-04 0.00708 -2.38326E-05 0.00906 -1.62176E-05 0.00802 -4.40688E-03 0.00053 ];
INF_SP7                   (idx, [1:   8]) = [  1.05360E-04 0.01821  2.13937E-05 0.01114  6.48843E-06 0.02058 -6.35135E-04 0.00344 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98628E-01 0.00022  4.25440E-01 0.00071 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99010E-01 0.00037  4.21187E-01 0.00097 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99226E-01 0.00033  4.20766E-01 0.00104 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97657E-01 0.00031  4.34728E-01 0.00104 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11622E+00 0.00022  7.83542E-01 0.00071 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11481E+00 0.00037  7.91488E-01 0.00097 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11400E+00 0.00033  7.92291E-01 0.00104 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11987E+00 0.00031  7.66845E-01 0.00104 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.60257E-03 0.00372  2.04554E-04 0.02073  1.10083E-03 0.00896  1.07337E-03 0.00951  3.01623E-03 0.00537  8.95079E-04 0.01005  3.12515E-04 0.01723 ];
LAMBDA                    (idx, [1:  14]) = [  7.61415E-01 0.00889  1.24906E-02 2.7E-07  3.18187E-02 2.7E-05  1.09396E-01 3.2E-05  3.17093E-01 2.9E-05  1.35373E+00 2.2E-05  8.64483E+00 0.00021 ];

