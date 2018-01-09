
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input18' ;
HOSTNAME                  (idx, [1: 12])  = 'n0092.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:45:17 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.97572E-01  1.00388E+00  1.00007E+00  1.00196E+00  1.00206E+00  9.98894E-01  9.97148E-01  1.00062E+00  9.97786E-01  1.00329E+00  9.98290E-01  1.00016E+00  9.99411E-01  9.98346E-01  1.00011E+00  9.97753E-01  1.00002E+00  9.99175E-01  1.00342E+00  1.00004E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 7.4E-10  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.48403E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.25160E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81611E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85863E-01 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.56126E+00 0.00035  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.85817E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.85802E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.64182E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.84314E+01 0.00025  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001731 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.93254E+02 ;
RUNNING_TIME              (idx, 1)        =  3.00364E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.35800E-01  1.35800E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.13334E-03  1.13334E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.98994E+01  2.98994E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  3.00360E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.75120 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98312E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86282E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4800.46;
MEMSIZE                   (idx, 1)        = 834.21;
XS_MEMSIZE                (idx, 1)        = 500.99;
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
NEUTRON_ERG_NE            (idx, 1)        = 165565 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35198E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.38798E-01 0.00066 ];
U235_FISS                 (idx, [1:   4]) = [  7.27188E+18 0.00020  9.98367E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.18985E+16 0.00735  1.63330E-03 0.00734 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71464E+18 0.00061  2.78395E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.14590E+18 0.00065  3.48378E-01 0.00048 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001731 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80149E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001731 2.01801E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9030328 9.11135E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10680466 1.07755E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 290937 2.93261E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001731 2.01801E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.08616E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.15621E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34383E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35198E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.98395E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.98259E+17 0.00220 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36365E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.53404E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.4E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31319E+00 0.00022  1.30453E+00 0.00021  8.71067E-03 0.00369 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31340E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31297E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31340E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33295E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80742E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80748E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.83008E-07 0.00081 ];
IMP_EALF                  (idx, [1:   2]) = [  2.82707E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.56606E-03 0.00555 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.53704E-03 0.00150 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.08503E-03 0.00283  1.63544E-04 0.01571  8.43239E-04 0.00675  8.13195E-04 0.00712  2.34511E-03 0.00419  6.79535E-04 0.00766  2.40407E-04 0.01284 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.59128E-01 0.00668  1.08793E-02 0.00861  3.18193E-02 1.9E-05  1.09397E-01 2.4E-05  3.17091E-01 2.1E-05  1.35237E+00 0.00071  8.28023E+00 0.00469 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.65367E-03 0.00368  2.18397E-04 0.02119  1.10336E-03 0.00911  1.06399E-03 0.00945  3.05213E-03 0.00550  8.97478E-04 0.01045  3.18319E-04 0.01701 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.65128E-01 0.00893  1.24906E-02 2.2E-07  3.18192E-02 2.5E-05  1.09395E-01 2.7E-05  3.17098E-01 2.9E-05  1.35374E+00 2.2E-05  8.64409E+00 0.00023 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.72119E-04 0.00062  3.72204E-04 0.00062  3.60074E-04 0.00730 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.88618E-04 0.00058  4.88729E-04 0.00058  4.72765E-04 0.00729 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.63984E-03 0.00377  2.15451E-04 0.02145  1.10439E-03 0.00920  1.05230E-03 0.00973  3.04813E-03 0.00567  8.97276E-04 0.01051  3.22290E-04 0.01748 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.71279E-01 0.00920  1.24906E-02 2.6E-07  3.18191E-02 2.6E-05  1.09396E-01 3.5E-05  3.17098E-01 3.1E-05  1.35374E+00 2.4E-05  8.64315E+00 0.00022 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.57248E-04 0.00146  3.57316E-04 0.00147  3.48701E-04 0.01793 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.69104E-04 0.00145  4.69194E-04 0.00146  4.57763E-04 0.01790 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.62461E-03 0.01118  2.23179E-04 0.06445  1.10190E-03 0.02836  1.03660E-03 0.02815  3.03283E-03 0.01684  9.02583E-04 0.03044  3.27519E-04 0.05041 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.84213E-01 0.02695  1.24906E-02 7.4E-09  3.18145E-02 9.7E-05  1.09405E-01 0.00010  3.17107E-01 8.4E-05  1.35374E+00 5.7E-05  8.64787E+00 0.00059 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.60995E-03 0.01088  2.27329E-04 0.06363  1.10469E-03 0.02761  1.03952E-03 0.02702  3.01354E-03 0.01622  8.98894E-04 0.02979  3.25974E-04 0.04860 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.83705E-01 0.02626  1.24906E-02 7.4E-09  3.18145E-02 9.6E-05  1.09405E-01 0.00010  3.17098E-01 7.7E-05  1.35376E+00 5.3E-05  8.64783E+00 0.00059 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.86311E+01 0.01133 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.65124E-04 0.00037 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79429E-04 0.00028 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.62116E-03 0.00215 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.81387E+01 0.00218 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08832E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59211E-05 8.4E-05  3.59200E-05 8.4E-05  3.60953E-05 0.00108 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.51617E-04 0.00040  7.51827E-04 0.00040  7.19997E-04 0.00483 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.10927E-01 0.00015  7.09919E-01 0.00015  9.23427E-01 0.00442 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08153E+01 0.00672 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.85802E+02 0.00023  1.78337E+02 0.00025 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.95033E+04 0.00164  3.79766E+05 0.00078  8.96208E+05 0.00041  1.66294E+06 0.00029  1.87341E+06 0.00021  1.94166E+06 0.00016  1.45887E+06 0.00013  1.14307E+06 0.00018  1.62953E+06 0.00014  1.60458E+06 0.00010  1.75044E+06 9.5E-05  1.74212E+06 1.0E-04  1.89949E+06 0.00011  1.85616E+06 0.00011  1.86316E+06 0.00011  1.63588E+06 0.00011  1.64706E+06 0.00012  1.63875E+06 0.00013  1.62962E+06 0.00011  3.22896E+06 9.9E-05  3.17434E+06 8.9E-05  2.32709E+06 0.00010  1.51650E+06 0.00011  1.80077E+06 0.00013  1.72582E+06 0.00014  1.46714E+06 0.00016  2.59507E+06 0.00018  5.54434E+05 0.00030  6.95342E+05 0.00025  6.27536E+05 0.00026  3.69983E+05 0.00037  6.47159E+05 0.00030  4.47740E+05 0.00035  3.92480E+05 0.00035  7.71362E+04 0.00071  7.65438E+04 0.00080  7.89746E+04 0.00068  8.17304E+04 0.00076  8.12775E+04 0.00075  8.07659E+04 0.00066  8.37132E+04 0.00069  7.94637E+04 0.00063  1.52150E+05 0.00053  2.50856E+05 0.00041  3.38139E+05 0.00035  1.06873E+06 0.00032  1.61952E+06 0.00037  2.54550E+06 0.00039  2.08451E+06 0.00042  1.65008E+06 0.00040  1.31161E+06 0.00045  1.50107E+06 0.00048  2.66658E+06 0.00047  3.24964E+06 0.00046  5.35882E+06 0.00048  6.59710E+06 0.00050  7.63034E+06 0.00052  3.98223E+06 0.00053  2.52705E+06 0.00053  1.67191E+06 0.00062  1.41656E+06 0.00061  1.34010E+06 0.00054  1.03207E+06 0.00061  6.80586E+05 0.00067  5.77923E+05 0.00070  5.27009E+05 0.00072  4.36586E+05 0.00080  2.98826E+05 0.00082  1.96247E+05 0.00097  6.18851E+04 0.00151 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33251E+00 0.00027 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.53894E+21 0.00024  3.44509E+21 0.00052 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38908E-01 1.6E-05  3.87417E-01 3.6E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.06552E-04 0.00038  9.58431E-04 0.00039 ];
INF_ABS                   (idx, [1:   4]) = [  1.13756E-03 0.00032  2.73237E-03 0.00044 ];
INF_FISS                  (idx, [1:   4]) = [  3.31011E-04 0.00043  1.77394E-03 0.00053 ];
INF_NSF                   (idx, [1:   4]) = [  8.08090E-04 0.00043  4.32256E-03 0.00053 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44128E+00 3.9E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.1E-07  2.02270E+02 1.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.16701E-07 0.00011  2.08658E-06 4.6E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37770E-01 1.7E-05  3.84683E-01 3.8E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13498E-02 0.00021  1.14177E-02 0.00048 ];
INF_SCATT2                (idx, [1:   4]) = [  2.47743E-03 0.00127 -4.36036E-03 0.00084 ];
INF_SCATT3                (idx, [1:   4]) = [  4.68654E-04 0.00605 -4.00464E-03 0.00076 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.55323E-04 0.01683 -4.65074E-03 0.00065 ];
INF_SCATT5                (idx, [1:   4]) = [  1.17820E-04 0.02166 -2.69048E-03 0.00099 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.42279E-04 0.00679 -4.47115E-03 0.00054 ];
INF_SCATT7                (idx, [1:   4]) = [  1.36421E-04 0.01553 -6.09781E-04 0.00351 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37805E-01 1.7E-05  3.84683E-01 3.8E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13588E-02 0.00021  1.14177E-02 0.00048 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.47904E-03 0.00127 -4.36036E-03 0.00084 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.68903E-04 0.00603 -4.00464E-03 0.00076 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.55355E-04 0.01680 -4.65074E-03 0.00065 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.17783E-04 0.02165 -2.69048E-03 0.00099 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.42262E-04 0.00679 -4.47115E-03 0.00054 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.36434E-04 0.01551 -6.09781E-04 0.00351 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01037E-01 3.4E-05  3.74494E-01 4.3E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10728E+00 3.4E-05  8.90090E-01 4.3E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.10315E-03 0.00036  2.73237E-03 0.00044 ];
INF_REMXS                 (idx, [1:   4]) = [  5.64566E-03 0.00015  4.59050E-03 0.00039 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33262E-01 1.6E-05  4.50787E-03 0.00023  1.85707E-03 0.00046  3.82826E-01 3.8E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23389E-02 0.00020 -9.89133E-04 0.00046 -2.09101E-04 0.00149  1.16268E-02 0.00047 ];
INF_S2                    (idx, [1:   8]) = [  2.65981E-03 0.00119 -1.82379E-04 0.00205 -1.18353E-04 0.00227 -4.24200E-03 0.00087 ];
INF_S3                    (idx, [1:   8]) = [  5.16879E-04 0.00534 -4.82249E-05 0.00807 -4.18035E-05 0.00551 -3.96283E-03 0.00078 ];
INF_S4                    (idx, [1:   8]) = [ -1.17151E-04 0.02183 -3.81724E-05 0.00832 -2.69858E-05 0.00718 -4.62375E-03 0.00066 ];
INF_S5                    (idx, [1:   8]) = [  1.21089E-04 0.02114 -3.26891E-06 0.08447 -6.34982E-06 0.02598 -2.68413E-03 0.00098 ];
INF_S6                    (idx, [1:   8]) = [ -3.16370E-04 0.00719 -2.59090E-05 0.01009 -1.82593E-05 0.00981 -4.45289E-03 0.00055 ];
INF_S7                    (idx, [1:   8]) = [  1.14536E-04 0.01867  2.18853E-05 0.01052  8.02461E-06 0.01839 -6.17806E-04 0.00347 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33297E-01 1.6E-05  4.50787E-03 0.00023  1.85707E-03 0.00046  3.82826E-01 3.8E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23479E-02 0.00020 -9.89133E-04 0.00046 -2.09101E-04 0.00149  1.16268E-02 0.00047 ];
INF_SP2                   (idx, [1:   8]) = [  2.66142E-03 0.00119 -1.82379E-04 0.00205 -1.18353E-04 0.00227 -4.24200E-03 0.00087 ];
INF_SP3                   (idx, [1:   8]) = [  5.17128E-04 0.00532 -4.82249E-05 0.00807 -4.18035E-05 0.00551 -3.96283E-03 0.00078 ];
INF_SP4                   (idx, [1:   8]) = [ -1.17182E-04 0.02179 -3.81724E-05 0.00832 -2.69858E-05 0.00718 -4.62375E-03 0.00066 ];
INF_SP5                   (idx, [1:   8]) = [  1.21052E-04 0.02113 -3.26891E-06 0.08447 -6.34982E-06 0.02598 -2.68413E-03 0.00098 ];
INF_SP6                   (idx, [1:   8]) = [ -3.16353E-04 0.00719 -2.59090E-05 0.01009 -1.82593E-05 0.00981 -4.45289E-03 0.00055 ];
INF_SP7                   (idx, [1:   8]) = [  1.14549E-04 0.01864  2.18853E-05 0.01052  8.02461E-06 0.01839 -6.17806E-04 0.00347 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98798E-01 0.00022  4.25028E-01 0.00065 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99323E-01 0.00032  4.20762E-01 0.00097 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99269E-01 0.00032  4.20177E-01 0.00095 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97812E-01 0.00037  4.34515E-01 0.00099 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11559E+00 0.00022  7.84296E-01 0.00065 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11364E+00 0.00032  7.92287E-01 0.00097 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11384E+00 0.00033  7.93386E-01 0.00095 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11929E+00 0.00037  7.67214E-01 0.00099 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.65367E-03 0.00368  2.18397E-04 0.02119  1.10336E-03 0.00911  1.06399E-03 0.00945  3.05213E-03 0.00550  8.97478E-04 0.01045  3.18319E-04 0.01701 ];
LAMBDA                    (idx, [1:  14]) = [  7.65128E-01 0.00893  1.24906E-02 2.2E-07  3.18192E-02 2.5E-05  1.09395E-01 2.7E-05  3.17098E-01 2.9E-05  1.35374E+00 2.2E-05  8.64409E+00 0.00023 ];

