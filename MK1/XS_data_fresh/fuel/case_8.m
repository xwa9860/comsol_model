
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
WORKING_DIRECTORY         (idx, [1: 62])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input7' ;
HOSTNAME                  (idx, [1: 12])  = 'n0081.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:42 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00284E+00  9.94118E-01  1.00645E+00  1.00121E+00  1.00624E+00  1.00054E+00  9.97262E-01  1.00236E+00  1.00082E+00  9.99507E-01  1.00352E+00  1.00009E+00  9.94095E-01  9.96477E-01  9.95797E-01  9.98457E-01  1.00091E+00  9.96658E-01  1.00065E+00  1.00201E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  6.94272E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.30573E-01 2.4E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83892E-01 4.9E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87905E-01 4.9E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.42334E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.85495E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.85480E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.58776E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.41962E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001689 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00008E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00008E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.82401E+02 ;
RUNNING_TIME              (idx, 1)        =  2.94608E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.22817E-01  1.22817E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.23333E-03  1.23333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.93368E+01  2.93368E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.94606E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76867 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98414E+01 0.00014 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86907E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4752.44;
MEMSIZE                   (idx, 1)        = 785.79;
XS_MEMSIZE                (idx, 1)        = 469.51;
MAT_MEMSIZE               (idx, 1)        = 179.38;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.65;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 151238 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35741E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.44852E-01 0.00061 ];
U235_FISS                 (idx, [1:   4]) = [  7.26908E+18 0.00020  9.98365E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.19096E+16 0.00732  1.63547E-03 0.00730 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71378E+18 0.00062  2.75812E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.19944E+18 0.00062  3.53944E-01 0.00046 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001689 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80538E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001689 2.01805E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9074342 9.15519E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10632604 1.07283E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 294743 2.97068E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001689 2.01805E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.34693E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.21314E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34952E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35741E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.99922E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.01644E+17 0.00219 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36968E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.53984E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.30745E+00 0.00022  1.29884E+00 0.00022  8.63369E-03 0.00374 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30762E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.30772E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30762E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32734E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80745E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80736E+01 2.5E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.82913E-07 0.00081 ];
IMP_EALF                  (idx, [1:   2]) = [  2.83046E-07 0.00045 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.52267E-03 0.00557 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.56031E-03 0.00151 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.07692E-03 0.00283  1.58825E-04 0.01565  8.41666E-04 0.00689  8.24476E-04 0.00693  2.33440E-03 0.00422  6.82357E-04 0.00763  2.35195E-04 0.01297 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.51024E-01 0.00664  1.09417E-02 0.00841  3.18036E-02 0.00050  1.09402E-01 2.8E-05  3.17090E-01 2.1E-05  1.35373E+00 1.7E-05  8.19744E+00 0.00521 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.63031E-03 0.00366  2.09923E-04 0.02127  1.10613E-03 0.00928  1.07949E-03 0.00921  3.04234E-03 0.00562  8.80986E-04 0.01047  3.11439E-04 0.01737 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.54673E-01 0.00891  1.24906E-02 7.6E-08  3.18201E-02 2.1E-05  1.09399E-01 3.4E-05  3.17086E-01 2.8E-05  1.35374E+00 2.3E-05  8.64415E+00 0.00021 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.74155E-04 0.00065  3.74271E-04 0.00065  3.56376E-04 0.00722 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.89137E-04 0.00061  4.89290E-04 0.00061  4.65854E-04 0.00721 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.60873E-03 0.00383  2.11829E-04 0.02136  1.09384E-03 0.00952  1.07801E-03 0.00936  3.04189E-03 0.00573  8.74595E-04 0.01055  3.08551E-04 0.01747 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.52193E-01 0.00903  1.24906E-02 0.0E+00  3.18196E-02 2.4E-05  1.09402E-01 4.6E-05  3.17085E-01 2.8E-05  1.35377E+00 2.4E-05  8.64395E+00 0.00023 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.59499E-04 0.00143  3.59585E-04 0.00143  3.45324E-04 0.01846 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.69983E-04 0.00142  4.70097E-04 0.00142  4.51407E-04 0.01847 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.68252E-03 0.01100  2.18672E-04 0.06217  1.09569E-03 0.02785  1.08265E-03 0.02795  3.10102E-03 0.01636  8.57943E-04 0.03115  3.26546E-04 0.04909 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.82713E-01 0.02763  1.24906E-02 7.4E-09  3.18217E-02 5.3E-05  1.09410E-01 0.00011  3.17080E-01 7.0E-05  1.35381E+00 4.2E-05  8.64342E+00 0.00047 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.69206E-03 0.01066  2.22448E-04 0.06111  1.10414E-03 0.02700  1.09007E-03 0.02720  3.09003E-03 0.01589  8.63452E-04 0.03021  3.21916E-04 0.04817 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.74176E-01 0.02654  1.24906E-02 7.4E-09  3.18217E-02 5.2E-05  1.09409E-01 0.00011  3.17071E-01 6.4E-05  1.35381E+00 4.2E-05  8.64341E+00 0.00047 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.86780E+01 0.01118 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.67068E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79875E-04 0.00031 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.61534E-03 0.00223 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.80300E+01 0.00230 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08750E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59085E-05 8.5E-05  3.59078E-05 8.5E-05  3.60093E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.52876E-04 0.00040  7.53115E-04 0.00040  7.15645E-04 0.00468 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.07977E-01 0.00015  7.07005E-01 0.00015  9.12650E-01 0.00435 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07905E+01 0.00650 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.85480E+02 0.00023  1.78385E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.92620E+04 0.00161  3.79830E+05 0.00076  8.97187E+05 0.00042  1.66445E+06 0.00029  1.87422E+06 0.00020  1.94186E+06 0.00016  1.45959E+06 0.00015  1.14301E+06 0.00018  1.62993E+06 0.00014  1.60447E+06 0.00011  1.75053E+06 0.00010  1.74206E+06 0.00010  1.89987E+06 9.9E-05  1.85604E+06 9.8E-05  1.86309E+06 9.8E-05  1.63600E+06 0.00010  1.64713E+06 0.00011  1.63857E+06 0.00011  1.62912E+06 0.00011  3.22921E+06 8.9E-05  3.17406E+06 0.00011  2.32604E+06 0.00011  1.51514E+06 0.00012  1.79791E+06 0.00014  1.72202E+06 0.00014  1.46285E+06 0.00016  2.58379E+06 0.00018  5.52374E+05 0.00027  6.92761E+05 0.00030  6.24989E+05 0.00028  3.68135E+05 0.00036  6.44448E+05 0.00028  4.45435E+05 0.00035  3.90475E+05 0.00032  7.67246E+04 0.00066  7.61374E+04 0.00059  7.86553E+04 0.00077  8.12381E+04 0.00076  8.07848E+04 0.00059  8.03133E+04 0.00059  8.32598E+04 0.00068  7.91581E+04 0.00068  1.51543E+05 0.00052  2.49433E+05 0.00047  3.36343E+05 0.00046  1.06368E+06 0.00036  1.61158E+06 0.00040  2.53498E+06 0.00044  2.07748E+06 0.00047  1.64465E+06 0.00050  1.30731E+06 0.00053  1.49588E+06 0.00053  2.65820E+06 0.00052  3.23970E+06 0.00056  5.34367E+06 0.00055  6.57937E+06 0.00059  7.61195E+06 0.00060  3.97477E+06 0.00062  2.52207E+06 0.00063  1.66841E+06 0.00066  1.41318E+06 0.00065  1.33819E+06 0.00064  1.02969E+06 0.00067  6.78720E+05 0.00079  5.76496E+05 0.00072  5.26100E+05 0.00079  4.35383E+05 0.00081  2.98401E+05 0.00088  1.96004E+05 0.00110  6.17605E+04 0.00141 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32743E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.54984E+21 0.00020  3.44945E+21 0.00059 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38930E-01 1.6E-05  3.87515E-01 3.5E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.19555E-04 0.00041  9.57795E-04 0.00041 ];
INF_ABS                   (idx, [1:   4]) = [  1.14981E-03 0.00036  2.72923E-03 0.00047 ];
INF_FISS                  (idx, [1:   4]) = [  3.30260E-04 0.00053  1.77143E-03 0.00057 ];
INF_NSF                   (idx, [1:   4]) = [  8.06258E-04 0.00053  4.31645E-03 0.00057 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44129E+00 3.7E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.5E-07  2.02270E+02 3.0E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.16363E-07 0.00012  2.08708E-06 4.8E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37780E-01 1.7E-05  3.84786E-01 3.7E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13588E-02 0.00022  1.14081E-02 0.00043 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48553E-03 0.00155 -4.36927E-03 0.00089 ];
INF_SCATT3                (idx, [1:   4]) = [  4.69395E-04 0.00641 -4.01042E-03 0.00081 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.52428E-04 0.01695 -4.65259E-03 0.00063 ];
INF_SCATT5                (idx, [1:   4]) = [  1.14360E-04 0.01834 -2.69881E-03 0.00090 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.37961E-04 0.00645 -4.47475E-03 0.00053 ];
INF_SCATT7                (idx, [1:   4]) = [  1.39275E-04 0.01420 -6.08699E-04 0.00371 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37814E-01 1.7E-05  3.84786E-01 3.7E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13679E-02 0.00022  1.14081E-02 0.00043 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48724E-03 0.00155 -4.36927E-03 0.00089 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.69643E-04 0.00641 -4.01042E-03 0.00081 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.52438E-04 0.01695 -4.65259E-03 0.00063 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.14307E-04 0.01835 -2.69881E-03 0.00090 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.38002E-04 0.00645 -4.47475E-03 0.00053 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.39225E-04 0.01423 -6.08699E-04 0.00371 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01022E-01 3.6E-05  3.74603E-01 3.8E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10734E+00 3.6E-05  8.89831E-01 3.8E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.11530E-03 0.00038  2.72923E-03 0.00047 ];
INF_REMXS                 (idx, [1:   4]) = [  5.64106E-03 0.00014  4.58148E-03 0.00043 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33288E-01 1.6E-05  4.49142E-03 0.00024  1.85229E-03 0.00049  3.82933E-01 3.8E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23440E-02 0.00021 -9.85238E-04 0.00054 -2.08633E-04 0.00152  1.16167E-02 0.00041 ];
INF_S2                    (idx, [1:   8]) = [  2.66744E-03 0.00141 -1.81906E-04 0.00229 -1.17689E-04 0.00200 -4.25159E-03 0.00093 ];
INF_S3                    (idx, [1:   8]) = [  5.17902E-04 0.00575 -4.85066E-05 0.00650 -4.21374E-05 0.00489 -3.96829E-03 0.00081 ];
INF_S4                    (idx, [1:   8]) = [ -1.14585E-04 0.02251 -3.78427E-05 0.00693 -2.70210E-05 0.00693 -4.62557E-03 0.00064 ];
INF_S5                    (idx, [1:   8]) = [  1.17968E-04 0.01771 -3.60770E-06 0.07740 -6.40949E-06 0.02367 -2.69240E-03 0.00090 ];
INF_S6                    (idx, [1:   8]) = [ -3.12546E-04 0.00708 -2.54158E-05 0.00996 -1.83283E-05 0.00912 -4.45642E-03 0.00054 ];
INF_S7                    (idx, [1:   8]) = [  1.17208E-04 0.01687  2.20672E-05 0.01041  8.00837E-06 0.01813 -6.16708E-04 0.00365 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33323E-01 1.6E-05  4.49142E-03 0.00024  1.85229E-03 0.00049  3.82933E-01 3.8E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23531E-02 0.00021 -9.85238E-04 0.00054 -2.08633E-04 0.00152  1.16167E-02 0.00041 ];
INF_SP2                   (idx, [1:   8]) = [  2.66915E-03 0.00141 -1.81906E-04 0.00229 -1.17689E-04 0.00200 -4.25159E-03 0.00093 ];
INF_SP3                   (idx, [1:   8]) = [  5.18149E-04 0.00574 -4.85066E-05 0.00650 -4.21374E-05 0.00489 -3.96829E-03 0.00081 ];
INF_SP4                   (idx, [1:   8]) = [ -1.14596E-04 0.02251 -3.78427E-05 0.00693 -2.70210E-05 0.00693 -4.62557E-03 0.00064 ];
INF_SP5                   (idx, [1:   8]) = [  1.17915E-04 0.01772 -3.60770E-06 0.07740 -6.40949E-06 0.02367 -2.69240E-03 0.00090 ];
INF_SP6                   (idx, [1:   8]) = [ -3.12586E-04 0.00708 -2.54158E-05 0.00996 -1.83283E-05 0.00912 -4.45642E-03 0.00054 ];
INF_SP7                   (idx, [1:   8]) = [  1.17158E-04 0.01690  2.20672E-05 0.01041  8.00837E-06 0.01813 -6.16708E-04 0.00365 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98886E-01 0.00022  4.25912E-01 0.00068 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99414E-01 0.00036  4.21489E-01 0.00103 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99385E-01 0.00037  4.20446E-01 0.00093 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97871E-01 0.00034  4.36224E-01 0.00095 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11526E+00 0.00022  7.82670E-01 0.00068 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11330E+00 0.00036  7.90930E-01 0.00103 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11341E+00 0.00037  7.92877E-01 0.00093 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11907E+00 0.00034  7.64202E-01 0.00095 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.63031E-03 0.00366  2.09923E-04 0.02127  1.10613E-03 0.00928  1.07949E-03 0.00921  3.04234E-03 0.00562  8.80986E-04 0.01047  3.11439E-04 0.01737 ];
LAMBDA                    (idx, [1:  14]) = [  7.54673E-01 0.00891  1.24906E-02 7.6E-08  3.18201E-02 2.1E-05  1.09399E-01 3.4E-05  3.17086E-01 2.8E-05  1.35374E+00 2.3E-05  8.64415E+00 0.00021 ];

