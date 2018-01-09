
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input44' ;
HOSTNAME                  (idx, [1: 12])  = 'n0120.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1060.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:49 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.99038E-01  9.98453E-01  1.00203E+00  1.00420E+00  9.98741E-01  9.94755E-01  1.00497E+00  9.96909E-01  1.00474E+00  1.00088E+00  9.99587E-01  1.00288E+00  1.00490E+00  9.96417E-01  1.00362E+00  9.94222E-01  9.96547E-01  9.92955E-01  1.00372E+00  1.00044E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 1.3E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  6.83347E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.31665E-01 2.3E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.82224E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.86263E-01 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.18636E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.87285E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.87271E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.66934E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.40428E+01 0.00025  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002110 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.84303E+02 ;
RUNNING_TIME              (idx, 1)        =  2.95612E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.27250E-01  1.27250E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.36667E-03  1.36667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.94326E+01  2.94326E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.95608E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76586 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98433E+01 0.00015 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86579E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.80 ;
ALLOC_MEMSIZE             (idx, 1)        = 4800.24;
MEMSIZE                   (idx, 1)        = 833.97;
XS_MEMSIZE                (idx, 1)        = 500.83;
MAT_MEMSIZE               (idx, 1)        = 196.24;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.27;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 165494 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34608E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.31607E-01 0.00064 ];
U235_FISS                 (idx, [1:   4]) = [  7.26838E+18 0.00020  9.98382E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.17785E+16 0.00731  1.61773E-03 0.00730 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71833E+18 0.00059  2.81514E-01 0.00053 ];
U238_CAPT                 (idx, [1:   4]) = [  2.08134E+18 0.00064  3.40948E-01 0.00047 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002110 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80760E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002110 2.01808E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8988951 9.06943E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10721467 1.08173E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 291692 2.94004E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002110 2.01808E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.45869E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 5.9E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.10186E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.33839E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34608E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.00726E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.97901E+17 0.00216 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35818E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.54300E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.4E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31824E+00 0.00022  1.30967E+00 0.00021  8.65889E-03 0.00381 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31868E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31872E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31868E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33835E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80468E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80466E+01 2.3E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.90857E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.90797E-07 0.00042 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.49429E-03 0.00575 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.50572E-03 0.00148 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.04253E-03 0.00289  1.64559E-04 0.01524  8.40451E-04 0.00688  8.01299E-04 0.00706  2.32088E-03 0.00422  6.74216E-04 0.00761  2.41131E-04 0.01238 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.63396E-01 0.00645  1.10604E-02 0.00804  3.18194E-02 1.9E-05  1.09400E-01 2.7E-05  3.17099E-01 2.1E-05  1.35303E+00 0.00050  8.28198E+00 0.00469 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.60594E-03 0.00382  2.12606E-04 0.02045  1.09564E-03 0.00907  1.04235E-03 0.00936  3.05985E-03 0.00559  8.80941E-04 0.01013  3.14550E-04 0.01646 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.63355E-01 0.00857  1.24906E-02 2.8E-07  3.18197E-02 2.4E-05  1.09399E-01 3.4E-05  3.17104E-01 3.0E-05  1.35369E+00 2.5E-05  8.64611E+00 0.00025 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.71107E-04 0.00064  3.71225E-04 0.00064  3.53155E-04 0.00763 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.89158E-04 0.00060  4.89314E-04 0.00060  4.65511E-04 0.00762 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.56716E-03 0.00390  2.12860E-04 0.02032  1.09105E-03 0.00911  1.05259E-03 0.00954  3.03050E-03 0.00575  8.71737E-04 0.01039  3.08425E-04 0.01708 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.54768E-01 0.00885  1.24906E-02 2.7E-07  3.18192E-02 2.6E-05  1.09401E-01 4.1E-05  3.17098E-01 3.0E-05  1.35366E+00 3.2E-05  8.64561E+00 0.00027 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.55354E-04 0.00144  3.55405E-04 0.00144  3.51794E-04 0.01930 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.68397E-04 0.00143  4.68465E-04 0.00143  4.63639E-04 0.01931 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.71497E-03 0.01139  2.22741E-04 0.06108  1.08768E-03 0.02742  1.09888E-03 0.02905  3.15231E-03 0.01661  8.51964E-04 0.03078  3.01395E-04 0.05346 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.16551E-01 0.02631  1.24906E-02 7.0E-07  3.18162E-02 8.3E-05  1.09393E-01 8.1E-05  3.17125E-01 9.0E-05  1.35359E+00 7.4E-05  8.64488E+00 0.00051 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.70576E-03 0.01110  2.20900E-04 0.05882  1.09595E-03 0.02682  1.09580E-03 0.02793  3.14760E-03 0.01605  8.44138E-04 0.03001  3.01372E-04 0.05137 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.18354E-01 0.02560  1.24906E-02 7.0E-07  3.18162E-02 8.4E-05  1.09392E-01 7.9E-05  3.17120E-01 8.8E-05  1.35359E+00 7.4E-05  8.64473E+00 0.00050 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.89456E+01 0.01142 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.63763E-04 0.00039 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79478E-04 0.00031 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.59357E-03 0.00225 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.81328E+01 0.00230 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08895E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59882E-05 8.3E-05  3.59871E-05 8.3E-05  3.61536E-05 0.00106 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.54138E-04 0.00040  7.54367E-04 0.00040  7.18554E-04 0.00493 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.14548E-01 0.00015  7.13527E-01 0.00015  9.31268E-01 0.00443 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08415E+01 0.00635 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.87271E+02 0.00023  1.79230E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.94136E+04 0.00175  3.79138E+05 0.00070  8.96732E+05 0.00039  1.66338E+06 0.00026  1.87366E+06 0.00023  1.94178E+06 0.00014  1.45925E+06 0.00016  1.14285E+06 0.00017  1.62985E+06 0.00014  1.60433E+06 0.00011  1.75058E+06 0.00011  1.74182E+06 0.00010  1.89951E+06 9.9E-05  1.85571E+06 0.00010  1.86332E+06 0.00010  1.63601E+06 0.00011  1.64711E+06 0.00011  1.63882E+06 0.00012  1.62964E+06 0.00011  3.22920E+06 8.9E-05  3.17540E+06 9.7E-05  2.32765E+06 0.00011  1.51882E+06 0.00013  1.80312E+06 0.00013  1.73128E+06 0.00013  1.47238E+06 0.00015  2.61011E+06 0.00014  5.58646E+05 0.00027  7.00888E+05 0.00027  6.33128E+05 0.00026  3.73566E+05 0.00033  6.54124E+05 0.00027  4.53050E+05 0.00033  3.98715E+05 0.00040  7.84678E+04 0.00063  7.80109E+04 0.00061  8.06972E+04 0.00070  8.33451E+04 0.00061  8.30693E+04 0.00065  8.27734E+04 0.00067  8.58649E+04 0.00070  8.16689E+04 0.00070  1.56850E+05 0.00051  2.59290E+05 0.00046  3.51478E+05 0.00042  1.12129E+06 0.00030  1.70270E+06 0.00035  2.65529E+06 0.00038  2.15736E+06 0.00045  1.69805E+06 0.00046  1.34383E+06 0.00047  1.53676E+06 0.00051  2.71974E+06 0.00049  3.30188E+06 0.00049  5.42306E+06 0.00050  6.64897E+06 0.00049  7.66280E+06 0.00053  3.98964E+06 0.00054  2.52863E+06 0.00055  1.67241E+06 0.00057  1.41521E+06 0.00060  1.33873E+06 0.00058  1.02979E+06 0.00066  6.78717E+05 0.00071  5.77052E+05 0.00071  5.26194E+05 0.00075  4.35839E+05 0.00078  2.98387E+05 0.00081  1.95780E+05 0.00089  6.17702E+04 0.00140 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33840E+00 0.00019 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.53453E+21 0.00020  3.47280E+21 0.00053 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38898E-01 1.7E-05  3.87346E-01 4.0E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.90108E-04 0.00034  9.52896E-04 0.00038 ];
INF_ABS                   (idx, [1:   4]) = [  1.12402E-03 0.00028  2.71015E-03 0.00043 ];
INF_FISS                  (idx, [1:   4]) = [  3.33915E-04 0.00044  1.75726E-03 0.00052 ];
INF_NSF                   (idx, [1:   4]) = [  8.15163E-04 0.00044  4.28191E-03 0.00052 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44123E+00 3.8E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02318E+02 3.4E-07  2.02270E+02 2.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.18305E-07 0.00010  2.07702E-06 4.3E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37774E-01 1.7E-05  3.84636E-01 4.1E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13358E-02 0.00021  1.14727E-02 0.00046 ];
INF_SCATT2                (idx, [1:   4]) = [  2.46889E-03 0.00143 -4.33381E-03 0.00083 ];
INF_SCATT3                (idx, [1:   4]) = [  4.66858E-04 0.00608 -3.98103E-03 0.00072 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.59392E-04 0.01603 -4.64579E-03 0.00062 ];
INF_SCATT5                (idx, [1:   4]) = [  1.16732E-04 0.02067 -2.68547E-03 0.00092 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.45481E-04 0.00626 -4.48315E-03 0.00055 ];
INF_SCATT7                (idx, [1:   4]) = [  1.44291E-04 0.01426 -6.06102E-04 0.00374 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37808E-01 1.7E-05  3.84636E-01 4.1E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13449E-02 0.00021  1.14727E-02 0.00046 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.47052E-03 0.00143 -4.33381E-03 0.00083 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.67084E-04 0.00609 -3.98103E-03 0.00072 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.59351E-04 0.01603 -4.64579E-03 0.00062 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.16717E-04 0.02069 -2.68547E-03 0.00092 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.45509E-04 0.00628 -4.48315E-03 0.00055 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.44265E-04 0.01426 -6.06102E-04 0.00374 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01095E-01 3.4E-05  3.74337E-01 4.5E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10707E+00 3.4E-05  8.90463E-01 4.5E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.08960E-03 0.00030  2.71015E-03 0.00043 ];
INF_REMXS                 (idx, [1:   4]) = [  5.82005E-03 0.00016  4.73945E-03 0.00041 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33078E-01 1.6E-05  4.69580E-03 0.00021  2.02949E-03 0.00047  3.82606E-01 4.2E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23543E-02 0.00020 -1.01857E-03 0.00050 -2.39214E-04 0.00139  1.17119E-02 0.00045 ];
INF_S2                    (idx, [1:   8]) = [  2.66164E-03 0.00132 -1.92749E-04 0.00212 -1.25769E-04 0.00232 -4.20804E-03 0.00086 ];
INF_S3                    (idx, [1:   8]) = [  5.18606E-04 0.00539 -5.17483E-05 0.00661 -4.43916E-05 0.00470 -3.93664E-03 0.00074 ];
INF_S4                    (idx, [1:   8]) = [ -1.19795E-04 0.02144 -3.95973E-05 0.00819 -2.89716E-05 0.00675 -4.61682E-03 0.00061 ];
INF_S5                    (idx, [1:   8]) = [  1.20713E-04 0.01977 -3.98147E-06 0.07148 -6.95445E-06 0.02470 -2.67852E-03 0.00091 ];
INF_S6                    (idx, [1:   8]) = [ -3.18365E-04 0.00683 -2.71156E-05 0.00846 -1.96490E-05 0.00800 -4.46350E-03 0.00055 ];
INF_S7                    (idx, [1:   8]) = [  1.20791E-04 0.01669  2.35000E-05 0.00910  9.11842E-06 0.01584 -6.15220E-04 0.00372 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33113E-01 1.6E-05  4.69580E-03 0.00021  2.02949E-03 0.00047  3.82606E-01 4.2E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23634E-02 0.00020 -1.01857E-03 0.00050 -2.39214E-04 0.00139  1.17119E-02 0.00045 ];
INF_SP2                   (idx, [1:   8]) = [  2.66327E-03 0.00132 -1.92749E-04 0.00212 -1.25769E-04 0.00232 -4.20804E-03 0.00086 ];
INF_SP3                   (idx, [1:   8]) = [  5.18832E-04 0.00540 -5.17483E-05 0.00661 -4.43916E-05 0.00470 -3.93664E-03 0.00074 ];
INF_SP4                   (idx, [1:   8]) = [ -1.19753E-04 0.02144 -3.95973E-05 0.00819 -2.89716E-05 0.00675 -4.61682E-03 0.00061 ];
INF_SP5                   (idx, [1:   8]) = [  1.20699E-04 0.01978 -3.98147E-06 0.07148 -6.95445E-06 0.02470 -2.67852E-03 0.00091 ];
INF_SP6                   (idx, [1:   8]) = [ -3.18393E-04 0.00684 -2.71156E-05 0.00846 -1.96490E-05 0.00800 -4.46350E-03 0.00055 ];
INF_SP7                   (idx, [1:   8]) = [  1.20765E-04 0.01669  2.35000E-05 0.00910  9.11842E-06 0.01584 -6.15220E-04 0.00372 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98861E-01 0.00022  4.24619E-01 0.00055 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99456E-01 0.00036  4.19753E-01 0.00082 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99191E-01 0.00039  4.20002E-01 0.00083 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97948E-01 0.00035  4.34489E-01 0.00094 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11535E+00 0.00022  7.85041E-01 0.00055 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11314E+00 0.00036  7.94172E-01 0.00082 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11413E+00 0.00039  7.93701E-01 0.00083 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11878E+00 0.00035  7.67252E-01 0.00094 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.60594E-03 0.00382  2.12606E-04 0.02045  1.09564E-03 0.00907  1.04235E-03 0.00936  3.05985E-03 0.00559  8.80941E-04 0.01013  3.14550E-04 0.01646 ];
LAMBDA                    (idx, [1:  14]) = [  7.63355E-01 0.00857  1.24906E-02 2.8E-07  3.18197E-02 2.4E-05  1.09399E-01 3.4E-05  3.17104E-01 3.0E-05  1.35369E+00 2.5E-05  8.64611E+00 0.00025 ];

