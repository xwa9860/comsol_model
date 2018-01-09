
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input19' ;
HOSTNAME                  (idx, [1: 12])  = 'n0093.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:45:11 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00312E+00  1.00138E+00  9.99471E-01  1.00240E+00  9.98305E-01  9.95191E-01  1.00146E+00  9.99526E-01  9.98432E-01  1.00101E+00  9.99982E-01  1.00071E+00  9.99284E-01  9.99478E-01  1.00062E+00  1.00076E+00  9.99866E-01  1.00071E+00  9.99775E-01  9.98513E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  8.03855E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.19615E-01 2.8E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.80675E-01 4.8E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85098E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.87167E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84172E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84158E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.61802E+02 0.00030  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  5.21545E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002224 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.91353E+02 ;
RUNNING_TIME              (idx, 1)        =  2.99314E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.31417E-01  1.31417E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.10000E-03  1.10000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.97989E+01  2.97989E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.99310E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.75692 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98332E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86136E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4798.17;
MEMSIZE                   (idx, 1)        = 831.65;
XS_MEMSIZE                (idx, 1)        = 499.34;
MAT_MEMSIZE               (idx, 1)        = 195.41;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.52;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 164792 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34300E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.33636E-01 0.00064 ];
U235_FISS                 (idx, [1:   4]) = [  7.27170E+18 0.00020  9.98382E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.17826E+16 0.00764  1.61761E-03 0.00763 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70520E+18 0.00062  2.80868E-01 0.00056 ];
U238_CAPT                 (idx, [1:   4]) = [  2.09730E+18 0.00065  3.45411E-01 0.00047 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002224 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80701E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002224 2.01807E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8961737 9.04149E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10750721 1.08471E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 289766 2.92086E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002224 2.01807E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -3.27826E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.2E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.07114E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.33532E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34300E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.87872E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.96160E+17 0.00221 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35494E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.49497E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.6E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.32203E+00 0.00022  1.31325E+00 0.00021  8.70082E-03 0.00375 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.32186E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.32175E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.32186E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.34145E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81446E+01 4.3E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81445E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.63753E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.63658E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.42508E-03 0.00565 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.46527E-03 0.00154 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.02559E-03 0.00289  1.59249E-04 0.01552  8.29091E-04 0.00681  8.10749E-04 0.00695  2.31231E-03 0.00414  6.76049E-04 0.00751  2.38136E-04 0.01278 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.61197E-01 0.00660  1.09355E-02 0.00843  3.18192E-02 1.9E-05  1.09402E-01 3.0E-05  3.17097E-01 2.1E-05  1.35374E+00 1.7E-05  8.23021E+00 0.00503 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.58700E-03 0.00368  2.13302E-04 0.02069  1.08031E-03 0.00905  1.05685E-03 0.00928  3.04933E-03 0.00544  8.78225E-04 0.01002  3.08978E-04 0.01728 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.56001E-01 0.00880  1.24906E-02 1.9E-07  3.18188E-02 2.7E-05  1.09400E-01 3.6E-05  3.17108E-01 3.0E-05  1.35371E+00 2.3E-05  8.64750E+00 0.00026 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.67134E-04 0.00065  3.67211E-04 0.00065  3.54928E-04 0.00765 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.85314E-04 0.00061  4.85415E-04 0.00061  4.69205E-04 0.00765 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.57818E-03 0.00383  2.07853E-04 0.02104  1.07980E-03 0.00937  1.06173E-03 0.00945  3.03915E-03 0.00565  8.82738E-04 0.01034  3.06907E-04 0.01782 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.53345E-01 0.00910  1.24906E-02 3.1E-07  3.18195E-02 2.4E-05  1.09398E-01 3.8E-05  3.17105E-01 3.1E-05  1.35375E+00 2.4E-05  8.64775E+00 0.00030 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.52487E-04 0.00142  3.52531E-04 0.00143  3.45213E-04 0.01689 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.65955E-04 0.00141  4.66013E-04 0.00141  4.56292E-04 0.01689 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.56510E-03 0.01119  1.94967E-04 0.06755  1.09074E-03 0.02695  1.05169E-03 0.02771  3.00866E-03 0.01703  9.11107E-04 0.03028  3.07937E-04 0.05081 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.67577E-01 0.02754  1.24906E-02 2.9E-07  3.18161E-02 8.3E-05  1.09394E-01 8.2E-05  3.17112E-01 9.2E-05  1.35375E+00 5.2E-05  8.64779E+00 0.00060 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.55501E-03 0.01092  1.95386E-04 0.06371  1.08895E-03 0.02598  1.06320E-03 0.02685  2.99537E-03 0.01654  9.08169E-04 0.02942  3.03927E-04 0.04971 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.63038E-01 0.02698  1.24906E-02 1.9E-07  3.18156E-02 8.5E-05  1.09395E-01 8.4E-05  3.17119E-01 9.5E-05  1.35375E+00 5.1E-05  8.64774E+00 0.00060 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.87077E+01 0.01133 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.60149E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.76080E-04 0.00031 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.58405E-03 0.00212 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.82870E+01 0.00216 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.09092E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58160E-05 8.4E-05  3.58150E-05 8.4E-05  3.59861E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.44026E-04 0.00040  7.44220E-04 0.00040  7.13144E-04 0.00479 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.13585E-01 0.00015  7.12558E-01 0.00015  9.32791E-01 0.00452 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07901E+01 0.00661 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84158E+02 0.00024  1.76283E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.96465E+04 0.00151  3.79708E+05 0.00081  8.97349E+05 0.00047  1.66358E+06 0.00025  1.87369E+06 0.00022  1.94179E+06 0.00015  1.45903E+06 0.00014  1.14311E+06 0.00018  1.63009E+06 0.00014  1.60456E+06 0.00012  1.75042E+06 0.00011  1.74190E+06 0.00012  1.89941E+06 9.3E-05  1.85629E+06 0.00011  1.86316E+06 0.00010  1.63599E+06 0.00011  1.64728E+06 0.00012  1.63883E+06 0.00012  1.62968E+06 0.00011  3.22898E+06 8.6E-05  3.17453E+06 9.7E-05  2.32753E+06 9.7E-05  1.51764E+06 0.00012  1.80087E+06 0.00014  1.72898E+06 0.00015  1.46882E+06 0.00015  2.59839E+06 0.00015  5.54050E+05 0.00025  6.94804E+05 0.00023  6.26154E+05 0.00028  3.68688E+05 0.00032  6.43689E+05 0.00027  4.44142E+05 0.00033  3.87563E+05 0.00036  7.59524E+04 0.00067  7.53927E+04 0.00063  7.76805E+04 0.00076  8.02410E+04 0.00063  7.97226E+04 0.00068  7.91468E+04 0.00063  8.17146E+04 0.00066  7.74424E+04 0.00060  1.48119E+05 0.00051  2.42402E+05 0.00045  3.23219E+05 0.00040  1.00293E+06 0.00032  1.49666E+06 0.00035  2.36860E+06 0.00045  1.96326E+06 0.00052  1.56698E+06 0.00056  1.25248E+06 0.00056  1.44156E+06 0.00057  2.57596E+06 0.00056  3.16342E+06 0.00055  5.26196E+06 0.00058  6.54349E+06 0.00060  7.63867E+06 0.00062  4.01113E+06 0.00061  2.55372E+06 0.00064  1.69190E+06 0.00069  1.43558E+06 0.00070  1.35935E+06 0.00071  1.04740E+06 0.00067  6.90471E+05 0.00079  5.87369E+05 0.00074  5.35538E+05 0.00078  4.43182E+05 0.00081  3.03929E+05 0.00091  1.99422E+05 0.00091  6.29654E+04 0.00115 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.34134E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.50820E+21 0.00020  3.37059E+21 0.00058 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38866E-01 1.6E-05  3.87524E-01 3.5E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.97381E-04 0.00036  9.71281E-04 0.00047 ];
INF_ABS                   (idx, [1:   4]) = [  1.12514E-03 0.00031  2.79085E-03 0.00050 ];
INF_FISS                  (idx, [1:   4]) = [  3.27763E-04 0.00038  1.81957E-03 0.00058 ];
INF_NSF                   (idx, [1:   4]) = [  8.00174E-04 0.00038  4.43375E-03 0.00058 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44132E+00 3.9E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.5E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.15129E-07 9.4E-05  2.10674E-06 4.2E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37741E-01 1.7E-05  3.84733E-01 3.7E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13635E-02 0.00022  1.13008E-02 0.00046 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48924E-03 0.00144 -4.42837E-03 0.00092 ];
INF_SCATT3                (idx, [1:   4]) = [  4.74611E-04 0.00576 -4.05279E-03 0.00074 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.47724E-04 0.01887 -4.65079E-03 0.00059 ];
INF_SCATT5                (idx, [1:   4]) = [  1.15296E-04 0.02540 -2.71722E-03 0.00101 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.26185E-04 0.00628 -4.42333E-03 0.00055 ];
INF_SCATT7                (idx, [1:   4]) = [  1.26712E-04 0.01848 -6.21260E-04 0.00341 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37775E-01 1.7E-05  3.84733E-01 3.7E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13726E-02 0.00022  1.13008E-02 0.00046 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.49090E-03 0.00144 -4.42837E-03 0.00092 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.74830E-04 0.00575 -4.05279E-03 0.00074 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.47715E-04 0.01887 -4.65079E-03 0.00059 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.15239E-04 0.02539 -2.71722E-03 0.00101 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.26230E-04 0.00628 -4.42333E-03 0.00055 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.26698E-04 0.01852 -6.21260E-04 0.00341 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00947E-01 3.2E-05  3.74779E-01 4.1E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10761E+00 3.1E-05  8.89414E-01 4.1E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.09056E-03 0.00031  2.79085E-03 0.00050 ];
INF_REMXS                 (idx, [1:   4]) = [  5.38834E-03 0.00015  4.39666E-03 0.00042 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33478E-01 1.6E-05  4.26305E-03 0.00023  1.60553E-03 0.00042  3.83127E-01 3.7E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23201E-02 0.00021 -9.56628E-04 0.00048 -1.69439E-04 0.00216  1.14703E-02 0.00046 ];
INF_S2                    (idx, [1:   8]) = [  2.65787E-03 0.00132 -1.68637E-04 0.00273 -1.05086E-04 0.00214 -4.32328E-03 0.00095 ];
INF_S3                    (idx, [1:   8]) = [  5.18423E-04 0.00529 -4.38116E-05 0.00635 -3.78539E-05 0.00517 -4.01494E-03 0.00075 ];
INF_S4                    (idx, [1:   8]) = [ -1.13455E-04 0.02415 -3.42684E-05 0.00736 -2.39534E-05 0.00764 -4.62684E-03 0.00059 ];
INF_S5                    (idx, [1:   8]) = [  1.18381E-04 0.02474 -3.08492E-06 0.09084 -5.71553E-06 0.02526 -2.71151E-03 0.00101 ];
INF_S6                    (idx, [1:   8]) = [ -3.02159E-04 0.00678 -2.40263E-05 0.00957 -1.61680E-05 0.00977 -4.40716E-03 0.00055 ];
INF_S7                    (idx, [1:   8]) = [  1.05662E-04 0.02218  2.10504E-05 0.01054  6.84888E-06 0.02151 -6.28109E-04 0.00336 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33512E-01 1.6E-05  4.26305E-03 0.00023  1.60553E-03 0.00042  3.83127E-01 3.7E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23292E-02 0.00021 -9.56628E-04 0.00048 -1.69439E-04 0.00216  1.14703E-02 0.00046 ];
INF_SP2                   (idx, [1:   8]) = [  2.65954E-03 0.00132 -1.68637E-04 0.00273 -1.05086E-04 0.00214 -4.32328E-03 0.00095 ];
INF_SP3                   (idx, [1:   8]) = [  5.18642E-04 0.00528 -4.38116E-05 0.00635 -3.78539E-05 0.00517 -4.01494E-03 0.00075 ];
INF_SP4                   (idx, [1:   8]) = [ -1.13446E-04 0.02415 -3.42684E-05 0.00736 -2.39534E-05 0.00764 -4.62684E-03 0.00059 ];
INF_SP5                   (idx, [1:   8]) = [  1.18324E-04 0.02473 -3.08492E-06 0.09084 -5.71553E-06 0.02526 -2.71151E-03 0.00101 ];
INF_SP6                   (idx, [1:   8]) = [ -3.02204E-04 0.00678 -2.40263E-05 0.00957 -1.61680E-05 0.00977 -4.40716E-03 0.00055 ];
INF_SP7                   (idx, [1:   8]) = [  1.05647E-04 0.02224  2.10504E-05 0.01054  6.84888E-06 0.02151 -6.28109E-04 0.00336 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98833E-01 0.00020  4.25843E-01 0.00067 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99440E-01 0.00033  4.20939E-01 0.00099 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99288E-01 0.00030  4.21805E-01 0.00109 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97783E-01 0.00034  4.35149E-01 0.00090 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11545E+00 0.00020  7.82795E-01 0.00067 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11320E+00 0.00033  7.91956E-01 0.00098 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11376E+00 0.00030  7.90349E-01 0.00109 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11940E+00 0.00034  7.66082E-01 0.00090 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.58700E-03 0.00368  2.13302E-04 0.02069  1.08031E-03 0.00905  1.05685E-03 0.00928  3.04933E-03 0.00544  8.78225E-04 0.01002  3.08978E-04 0.01728 ];
LAMBDA                    (idx, [1:  14]) = [  7.56001E-01 0.00880  1.24906E-02 1.9E-07  3.18188E-02 2.7E-05  1.09400E-01 3.6E-05  3.17108E-01 3.0E-05  1.35371E+00 2.3E-05  8.64750E+00 0.00026 ];

