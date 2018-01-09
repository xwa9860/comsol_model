
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input43' ;
HOSTNAME                  (idx, [1: 12])  = 'n0071.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:45:12 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.99454E-01  1.00119E+00  9.99657E-01  9.97448E-01  1.00376E+00  1.00146E+00  9.94764E-01  1.00219E+00  9.98576E-01  9.97309E-01  9.98568E-01  1.00320E+00  1.00025E+00  9.97805E-01  1.00514E+00  9.99431E-01  1.00215E+00  1.00319E+00  1.00160E+00  9.92862E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.42661E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.25734E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81558E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85836E-01 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.37759E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.87222E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.87208E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.67754E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.83389E+01 0.00025  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002126 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.92027E+02 ;
RUNNING_TIME              (idx, 1)        =  2.99507E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.31300E-01  1.31300E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.28333E-03  1.28333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.98181E+01  2.98181E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.99502E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76671 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98439E+01 0.00016 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86779E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4798.01;
MEMSIZE                   (idx, 1)        = 831.47;
XS_MEMSIZE                (idx, 1)        = 499.21;
MAT_MEMSIZE               (idx, 1)        = 195.37;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.54;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 164754 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34645E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.32180E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.27081E+18 0.00020  9.98349E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20274E+16 0.00724  1.65126E-03 0.00722 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71444E+18 0.00061  2.80845E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.08616E+18 0.00063  3.41704E-01 0.00046 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002126 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79946E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002126 2.01799E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8988065 9.06782E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10722552 1.08183E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 291509 2.93793E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002126 2.01799E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.75671E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.2E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.3E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.10289E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.33849E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34645E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.00636E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.97816E+17 0.00219 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35828E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.54267E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.6E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.3E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31839E+00 0.00022  1.30970E+00 0.00021  8.75372E-03 0.00375 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31859E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31836E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31859E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33825E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80463E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80469E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.91009E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.90697E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.51250E-03 0.00557 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.49527E-03 0.00153 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.05336E-03 0.00279  1.62648E-04 0.01581  8.36935E-04 0.00674  8.14301E-04 0.00697  2.32500E-03 0.00415  6.78318E-04 0.00763  2.36156E-04 0.01272 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.55466E-01 0.00659  1.09105E-02 0.00851  3.18188E-02 2.1E-05  1.09336E-01 0.00050  3.17103E-01 2.2E-05  1.35371E+00 1.8E-05  8.22590E+00 0.00505 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.64914E-03 0.00372  2.15674E-04 0.02081  1.10457E-03 0.00898  1.06761E-03 0.00939  3.06088E-03 0.00556  8.92379E-04 0.01008  3.08032E-04 0.01712 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.52204E-01 0.00885  1.24906E-02 1.2E-07  3.18188E-02 2.7E-05  1.09393E-01 3.1E-05  3.17110E-01 3.0E-05  1.35373E+00 2.2E-05  8.64372E+00 0.00020 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.70980E-04 0.00065  3.71063E-04 0.00065  3.58438E-04 0.00751 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.89049E-04 0.00061  4.89158E-04 0.00061  4.72509E-04 0.00750 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.65122E-03 0.00382  2.15814E-04 0.02126  1.09651E-03 0.00900  1.06475E-03 0.00940  3.07159E-03 0.00576  8.95283E-04 0.01049  3.07273E-04 0.01751 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.51858E-01 0.00910  1.24906E-02 2.3E-07  3.18187E-02 2.9E-05  1.09394E-01 3.4E-05  3.17111E-01 3.2E-05  1.35372E+00 2.4E-05  8.64459E+00 0.00023 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.55881E-04 0.00146  3.55962E-04 0.00146  3.44746E-04 0.01808 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.69144E-04 0.00144  4.69250E-04 0.00144  4.54455E-04 0.01807 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.63322E-03 0.01142  2.12307E-04 0.06322  1.06745E-03 0.02856  1.08189E-03 0.02760  3.06732E-03 0.01680  9.07490E-04 0.03139  2.96764E-04 0.05152 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.52590E-01 0.02668  1.24906E-02 1.1E-06  3.18213E-02 4.6E-05  1.09390E-01 7.1E-05  3.17160E-01 0.00010  1.35369E+00 6.0E-05  8.64769E+00 0.00059 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.60864E-03 0.01117  2.08680E-04 0.06193  1.05889E-03 0.02769  1.08615E-03 0.02692  3.05332E-03 0.01627  9.03632E-04 0.03030  2.97973E-04 0.05011 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.51224E-01 0.02567  1.24906E-02 1.1E-06  3.18216E-02 4.2E-05  1.09390E-01 6.9E-05  3.17152E-01 0.00010  1.35370E+00 5.7E-05  8.64842E+00 0.00060 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.86987E+01 0.01151 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.63734E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79499E-04 0.00031 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.63576E-03 0.00223 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.82504E+01 0.00229 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08867E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59897E-05 8.3E-05  3.59887E-05 8.3E-05  3.61404E-05 0.00108 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.53856E-04 0.00040  7.54087E-04 0.00040  7.18972E-04 0.00487 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.14302E-01 0.00015  7.13273E-01 0.00015  9.31669E-01 0.00437 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07891E+01 0.00664 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.87208E+02 0.00024  1.79204E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.93228E+04 0.00174  3.79458E+05 0.00069  8.96729E+05 0.00042  1.66363E+06 0.00028  1.87321E+06 0.00021  1.94166E+06 0.00016  1.45882E+06 0.00016  1.14254E+06 0.00019  1.62920E+06 0.00011  1.60431E+06 0.00010  1.75061E+06 0.00010  1.74200E+06 9.5E-05  1.89988E+06 0.00010  1.85574E+06 0.00011  1.86340E+06 0.00011  1.63617E+06 0.00011  1.64709E+06 0.00011  1.63868E+06 0.00010  1.62958E+06 0.00011  3.22933E+06 7.5E-05  3.17515E+06 8.3E-05  2.32807E+06 0.00011  1.51876E+06 0.00013  1.80358E+06 0.00014  1.73103E+06 0.00013  1.47232E+06 0.00016  2.60852E+06 0.00015  5.58774E+05 0.00025  7.00640E+05 0.00027  6.33130E+05 0.00030  3.73373E+05 0.00035  6.54354E+05 0.00028  4.53357E+05 0.00032  3.98704E+05 0.00037  7.85743E+04 0.00065  7.79644E+04 0.00072  8.05578E+04 0.00076  8.34458E+04 0.00069  8.30521E+04 0.00073  8.26206E+04 0.00073  8.57794E+04 0.00055  8.16225E+04 0.00063  1.56667E+05 0.00056  2.59016E+05 0.00043  3.51181E+05 0.00035  1.12017E+06 0.00034  1.70094E+06 0.00035  2.65372E+06 0.00040  2.15471E+06 0.00042  1.69654E+06 0.00049  1.34289E+06 0.00051  1.53535E+06 0.00049  2.71731E+06 0.00050  3.29871E+06 0.00051  5.41770E+06 0.00052  6.64352E+06 0.00055  7.65822E+06 0.00055  3.98768E+06 0.00058  2.52835E+06 0.00062  1.67020E+06 0.00065  1.41448E+06 0.00067  1.33819E+06 0.00070  1.03017E+06 0.00070  6.78537E+05 0.00070  5.76209E+05 0.00076  5.25932E+05 0.00070  4.35197E+05 0.00080  2.97832E+05 0.00087  1.96058E+05 0.00092  6.18212E+04 0.00126 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33802E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.53523E+21 0.00021  3.47118E+21 0.00060 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38896E-01 1.5E-05  3.87363E-01 4.4E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.90400E-04 0.00037  9.53184E-04 0.00037 ];
INF_ABS                   (idx, [1:   4]) = [  1.12438E-03 0.00034  2.71114E-03 0.00048 ];
INF_FISS                  (idx, [1:   4]) = [  3.33979E-04 0.00043  1.75796E-03 0.00059 ];
INF_NSF                   (idx, [1:   4]) = [  8.15315E-04 0.00043  4.28362E-03 0.00059 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44122E+00 4.0E-06  2.43670E+00 2.6E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02318E+02 3.4E-07  2.02270E+02 3.2E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.18275E-07 0.00011  2.07716E-06 4.6E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37771E-01 1.6E-05  3.84652E-01 4.6E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13394E-02 0.00022  1.14699E-02 0.00046 ];
INF_SCATT2                (idx, [1:   4]) = [  2.46572E-03 0.00153 -4.33101E-03 0.00083 ];
INF_SCATT3                (idx, [1:   4]) = [  4.61645E-04 0.00654 -3.98447E-03 0.00080 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.55373E-04 0.01815 -4.64257E-03 0.00058 ];
INF_SCATT5                (idx, [1:   4]) = [  1.19446E-04 0.02050 -2.68163E-03 0.00109 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.44845E-04 0.00685 -4.48293E-03 0.00048 ];
INF_SCATT7                (idx, [1:   4]) = [  1.43100E-04 0.01689 -6.06040E-04 0.00370 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37805E-01 1.6E-05  3.84652E-01 4.6E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13485E-02 0.00022  1.14699E-02 0.00046 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.46741E-03 0.00153 -4.33101E-03 0.00083 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.61882E-04 0.00654 -3.98447E-03 0.00080 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.55299E-04 0.01820 -4.64257E-03 0.00058 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.19453E-04 0.02053 -2.68163E-03 0.00109 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.44865E-04 0.00685 -4.48293E-03 0.00048 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.43065E-04 0.01691 -6.06040E-04 0.00370 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01094E-01 3.2E-05  3.74358E-01 4.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10707E+00 3.2E-05  8.90414E-01 4.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.09011E-03 0.00036  2.71114E-03 0.00048 ];
INF_REMXS                 (idx, [1:   4]) = [  5.81624E-03 0.00015  4.73780E-03 0.00043 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33080E-01 1.5E-05  4.69109E-03 0.00023  2.02677E-03 0.00047  3.82625E-01 4.7E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23570E-02 0.00021 -1.01757E-03 0.00046 -2.38242E-04 0.00133  1.17081E-02 0.00045 ];
INF_S2                    (idx, [1:   8]) = [  2.65763E-03 0.00142 -1.91904E-04 0.00239 -1.25578E-04 0.00218 -4.20543E-03 0.00085 ];
INF_S3                    (idx, [1:   8]) = [  5.13364E-04 0.00579 -5.17188E-05 0.00668 -4.45722E-05 0.00485 -3.93990E-03 0.00080 ];
INF_S4                    (idx, [1:   8]) = [ -1.15416E-04 0.02427 -3.99572E-05 0.00703 -2.95333E-05 0.00620 -4.61304E-03 0.00058 ];
INF_S5                    (idx, [1:   8]) = [  1.23552E-04 0.01967 -4.10685E-06 0.05697 -6.87497E-06 0.02629 -2.67475E-03 0.00110 ];
INF_S6                    (idx, [1:   8]) = [ -3.18036E-04 0.00734 -2.68092E-05 0.00909 -1.96021E-05 0.00872 -4.46332E-03 0.00049 ];
INF_S7                    (idx, [1:   8]) = [  1.20163E-04 0.01992  2.29364E-05 0.00970  9.15235E-06 0.01658 -6.15193E-04 0.00363 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33114E-01 1.5E-05  4.69109E-03 0.00023  2.02677E-03 0.00047  3.82625E-01 4.7E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23661E-02 0.00021 -1.01757E-03 0.00046 -2.38242E-04 0.00133  1.17081E-02 0.00045 ];
INF_SP2                   (idx, [1:   8]) = [  2.65931E-03 0.00142 -1.91904E-04 0.00239 -1.25578E-04 0.00218 -4.20543E-03 0.00085 ];
INF_SP3                   (idx, [1:   8]) = [  5.13601E-04 0.00580 -5.17188E-05 0.00668 -4.45722E-05 0.00485 -3.93990E-03 0.00080 ];
INF_SP4                   (idx, [1:   8]) = [ -1.15342E-04 0.02434 -3.99572E-05 0.00703 -2.95333E-05 0.00620 -4.61304E-03 0.00058 ];
INF_SP5                   (idx, [1:   8]) = [  1.23560E-04 0.01969 -4.10685E-06 0.05697 -6.87497E-06 0.02629 -2.67475E-03 0.00110 ];
INF_SP6                   (idx, [1:   8]) = [ -3.18056E-04 0.00734 -2.68092E-05 0.00909 -1.96021E-05 0.00872 -4.46332E-03 0.00049 ];
INF_SP7                   (idx, [1:   8]) = [  1.20129E-04 0.01994  2.29364E-05 0.00970  9.15235E-06 0.01658 -6.15193E-04 0.00363 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98943E-01 0.00021  4.25054E-01 0.00052 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99493E-01 0.00037  4.21099E-01 0.00079 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99397E-01 0.00033  4.19953E-01 0.00085 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97951E-01 0.00031  4.34472E-01 0.00093 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11504E+00 0.00021  7.84235E-01 0.00052 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11301E+00 0.00037  7.91628E-01 0.00079 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11336E+00 0.00033  7.93797E-01 0.00085 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11876E+00 0.00031  7.67281E-01 0.00093 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.64914E-03 0.00372  2.15674E-04 0.02081  1.10457E-03 0.00898  1.06761E-03 0.00939  3.06088E-03 0.00556  8.92379E-04 0.01008  3.08032E-04 0.01712 ];
LAMBDA                    (idx, [1:  14]) = [  7.52204E-01 0.00885  1.24906E-02 1.2E-07  3.18188E-02 2.7E-05  1.09393E-01 3.1E-05  3.17110E-01 3.0E-05  1.35373E+00 2.2E-05  8.64372E+00 0.00020 ];

