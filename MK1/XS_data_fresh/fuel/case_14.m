
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input13' ;
HOSTNAME                  (idx, [1: 12])  = 'n0087.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:57 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00129E+00  9.96607E-01  9.97114E-01  1.00128E+00  1.00633E+00  9.97606E-01  9.99047E-01  9.98695E-01  9.99671E-01  1.00252E+00  1.00363E+00  9.92193E-01  1.00614E+00  1.00040E+00  9.98539E-01  1.00258E+00  1.00310E+00  9.96642E-01  9.94683E-01  1.00193E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.67207E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.23279E-01 2.7E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81109E-01 4.5E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85380E-01 4.5E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.74555E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84025E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84010E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.60792E+02 0.00028  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.94405E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001958 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.87315E+02 ;
RUNNING_TIME              (idx, 1)        =  2.96959E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.24617E-01  1.24617E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.36667E-03  1.36667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.95699E+01  2.95699E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.96956E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77767 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98503E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87245E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4803.55;
MEMSIZE                   (idx, 1)        = 836.26;
XS_MEMSIZE                (idx, 1)        = 502.35;
MAT_MEMSIZE               (idx, 1)        = 197.02;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3967.29;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 166149 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34235E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.33422E-01 0.00065 ];
U235_FISS                 (idx, [1:   4]) = [  7.26795E+18 0.00020  9.98392E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.17066E+16 0.00744  1.60784E-03 0.00743 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70579E+18 0.00061  2.81151E-01 0.00053 ];
U238_CAPT                 (idx, [1:   4]) = [  2.09460E+18 0.00064  3.45200E-01 0.00048 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001958 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80320E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001958 2.01803E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8960140 9.03984E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10750333 1.08467E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 291485 2.93790E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001958 2.01803E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.04891E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.06399E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.33460E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34235E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.86939E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.97219E+17 0.00225 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35433E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.49172E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.6E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.32199E+00 0.00022  1.31322E+00 0.00022  8.67688E-03 0.00367 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.32244E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.32239E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.32244E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.34216E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81540E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81534E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.61291E-07 0.00082 ];
IMP_EALF                  (idx, [1:   2]) = [  2.61321E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.43445E-03 0.00559 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.48636E-03 0.00152 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.00758E-03 0.00285  1.58394E-04 0.01568  8.28849E-04 0.00698  8.10930E-04 0.00685  2.30463E-03 0.00409  6.71459E-04 0.00780  2.33316E-04 0.01294 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.53421E-01 0.00675  1.09105E-02 0.00851  3.18187E-02 2.1E-05  1.09396E-01 2.5E-05  3.17086E-01 2.1E-05  1.35367E+00 2.0E-05  8.24186E+00 0.00494 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.54756E-03 0.00363  2.06900E-04 0.02077  1.08190E-03 0.00911  1.06422E-03 0.00902  3.00609E-03 0.00544  8.86418E-04 0.01025  3.02035E-04 0.01743 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.49995E-01 0.00896  1.24906E-02 1.1E-07  3.18184E-02 2.8E-05  1.09399E-01 3.8E-05  3.17082E-01 2.5E-05  1.35369E+00 2.9E-05  8.64341E+00 0.00019 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.66943E-04 0.00063  3.67043E-04 0.00063  3.52386E-04 0.00761 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.85050E-04 0.00059  4.85182E-04 0.00060  4.65847E-04 0.00761 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.56931E-03 0.00371  2.05894E-04 0.02146  1.08053E-03 0.00931  1.06981E-03 0.00938  3.01867E-03 0.00556  8.90335E-04 0.01045  3.04076E-04 0.01779 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.52296E-01 0.00922  1.24906E-02 2.4E-07  3.18178E-02 3.2E-05  1.09397E-01 3.7E-05  3.17085E-01 2.8E-05  1.35363E+00 3.5E-05  8.64421E+00 0.00024 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.52478E-04 0.00146  3.52582E-04 0.00147  3.37471E-04 0.01814 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.65922E-04 0.00144  4.66058E-04 0.00145  4.46157E-04 0.01814 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.53576E-03 0.01142  2.03418E-04 0.06857  1.01454E-03 0.02817  1.08335E-03 0.02858  3.01805E-03 0.01651  9.02015E-04 0.03060  3.14391E-04 0.05391 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.64508E-01 0.02722  1.24906E-02 7.4E-09  3.18152E-02 9.5E-05  1.09389E-01 6.1E-05  3.17114E-01 9.8E-05  1.35368E+00 6.2E-05  8.65074E+00 0.00067 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.53728E-03 0.01107  2.08530E-04 0.06626  1.02091E-03 0.02724  1.07856E-03 0.02787  3.00543E-03 0.01604  9.11649E-04 0.02968  3.12191E-04 0.05203 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.60400E-01 0.02626  1.24906E-02 7.5E-09  3.18149E-02 9.4E-05  1.09389E-01 5.8E-05  3.17111E-01 9.4E-05  1.35368E+00 6.2E-05  8.65061E+00 0.00067 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.86394E+01 0.01159 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.59786E-04 0.00037 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.75587E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.58174E-03 0.00219 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.83018E+01 0.00226 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.09170E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.57998E-05 8.4E-05  3.57991E-05 8.4E-05  3.59042E-05 0.00103 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.43808E-04 0.00038  7.44026E-04 0.00038  7.10033E-04 0.00492 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.13698E-01 0.00015  7.12687E-01 0.00015  9.30368E-01 0.00441 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07727E+01 0.00679 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84010E+02 0.00023  1.76069E+02 0.00025 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.93888E+04 0.00169  3.80136E+05 0.00076  8.96849E+05 0.00043  1.66448E+06 0.00026  1.87375E+06 0.00019  1.94199E+06 0.00016  1.45919E+06 0.00015  1.14313E+06 0.00017  1.62940E+06 0.00014  1.60411E+06 0.00012  1.75055E+06 0.00010  1.74185E+06 0.00011  1.89948E+06 0.00011  1.85597E+06 0.00010  1.86307E+06 0.00011  1.63584E+06 0.00013  1.64671E+06 0.00011  1.63870E+06 0.00011  1.62937E+06 0.00011  3.22876E+06 9.7E-05  3.17414E+06 0.00010  2.32683E+06 9.9E-05  1.51670E+06 0.00013  1.80016E+06 0.00013  1.72810E+06 0.00015  1.46758E+06 0.00016  2.59719E+06 0.00016  5.54236E+05 0.00028  6.94666E+05 0.00022  6.26154E+05 0.00024  3.68095E+05 0.00033  6.42944E+05 0.00028  4.43585E+05 0.00033  3.87276E+05 0.00038  7.58623E+04 0.00065  7.51798E+04 0.00066  7.75639E+04 0.00063  7.99518E+04 0.00071  7.94957E+04 0.00071  7.87753E+04 0.00067  8.15769E+04 0.00081  7.72813E+04 0.00074  1.47565E+05 0.00049  2.41429E+05 0.00043  3.21951E+05 0.00043  9.96489E+05 0.00029  1.48438E+06 0.00035  2.34866E+06 0.00043  1.94900E+06 0.00050  1.55672E+06 0.00050  1.24538E+06 0.00054  1.43427E+06 0.00054  2.56501E+06 0.00053  3.15303E+06 0.00053  5.25115E+06 0.00055  6.53950E+06 0.00056  7.64353E+06 0.00059  4.01755E+06 0.00056  2.55881E+06 0.00059  1.69581E+06 0.00061  1.43935E+06 0.00064  1.36327E+06 0.00059  1.04964E+06 0.00066  6.92471E+05 0.00070  5.88991E+05 0.00074  5.37099E+05 0.00077  4.44217E+05 0.00083  3.05172E+05 0.00083  2.00261E+05 0.00091  6.32148E+04 0.00145 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.34210E+00 0.00018 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.50511E+21 0.00018  3.36437E+21 0.00058 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38863E-01 1.6E-05  3.87590E-01 4.1E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.96688E-04 0.00041  9.72414E-04 0.00043 ];
INF_ABS                   (idx, [1:   4]) = [  1.12399E-03 0.00036  2.79613E-03 0.00048 ];
INF_FISS                  (idx, [1:   4]) = [  3.27300E-04 0.00045  1.82371E-03 0.00056 ];
INF_NSF                   (idx, [1:   4]) = [  7.99054E-04 0.00045  4.44384E-03 0.00056 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44135E+00 4.6E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.6E-07  2.02270E+02 1.9E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.14960E-07 0.00010  2.10948E-06 4.2E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37739E-01 1.6E-05  3.84794E-01 4.3E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13614E-02 0.00019  1.12931E-02 0.00044 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48441E-03 0.00137 -4.42941E-03 0.00094 ];
INF_SCATT3                (idx, [1:   4]) = [  4.68880E-04 0.00710 -4.05970E-03 0.00077 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.46691E-04 0.01650 -4.64843E-03 0.00069 ];
INF_SCATT5                (idx, [1:   4]) = [  1.15451E-04 0.01889 -2.72011E-03 0.00104 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.23840E-04 0.00692 -4.42548E-03 0.00062 ];
INF_SCATT7                (idx, [1:   4]) = [  1.26282E-04 0.01650 -6.28533E-04 0.00312 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37773E-01 1.6E-05  3.84794E-01 4.3E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13705E-02 0.00019  1.12931E-02 0.00044 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48606E-03 0.00137 -4.42941E-03 0.00094 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.69134E-04 0.00709 -4.05970E-03 0.00077 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.46697E-04 0.01649 -4.64843E-03 0.00069 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.15404E-04 0.01890 -2.72011E-03 0.00104 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.23851E-04 0.00692 -4.42548E-03 0.00062 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.26275E-04 0.01651 -6.28533E-04 0.00312 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00940E-01 2.9E-05  3.74859E-01 4.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10764E+00 2.9E-05  8.89222E-01 4.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.08946E-03 0.00036  2.79613E-03 0.00048 ];
INF_REMXS                 (idx, [1:   4]) = [  5.36395E-03 0.00014  4.37585E-03 0.00042 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33499E-01 1.5E-05  4.23925E-03 0.00022  1.58027E-03 0.00048  3.83214E-01 4.4E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23152E-02 0.00019 -9.53791E-04 0.00053 -1.67269E-04 0.00159  1.14604E-02 0.00044 ];
INF_S2                    (idx, [1:   8]) = [  2.65174E-03 0.00124 -1.67330E-04 0.00255 -1.03616E-04 0.00234 -4.32579E-03 0.00096 ];
INF_S3                    (idx, [1:   8]) = [  5.12043E-04 0.00649 -4.31626E-05 0.00740 -3.70439E-05 0.00498 -4.02265E-03 0.00077 ];
INF_S4                    (idx, [1:   8]) = [ -1.11785E-04 0.02155 -3.49059E-05 0.00716 -2.33489E-05 0.00713 -4.62508E-03 0.00069 ];
INF_S5                    (idx, [1:   8]) = [  1.17704E-04 0.01868 -2.25297E-06 0.11048 -5.82417E-06 0.03039 -2.71429E-03 0.00104 ];
INF_S6                    (idx, [1:   8]) = [ -3.00119E-04 0.00750 -2.37206E-05 0.00994 -1.60364E-05 0.00981 -4.40944E-03 0.00062 ];
INF_S7                    (idx, [1:   8]) = [  1.04962E-04 0.01962  2.13196E-05 0.00986  6.73175E-06 0.02081 -6.35265E-04 0.00307 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33534E-01 1.5E-05  4.23925E-03 0.00022  1.58027E-03 0.00048  3.83214E-01 4.4E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23243E-02 0.00019 -9.53791E-04 0.00053 -1.67269E-04 0.00159  1.14604E-02 0.00044 ];
INF_SP2                   (idx, [1:   8]) = [  2.65340E-03 0.00124 -1.67330E-04 0.00255 -1.03616E-04 0.00234 -4.32579E-03 0.00096 ];
INF_SP3                   (idx, [1:   8]) = [  5.12297E-04 0.00648 -4.31626E-05 0.00740 -3.70439E-05 0.00498 -4.02265E-03 0.00077 ];
INF_SP4                   (idx, [1:   8]) = [ -1.11791E-04 0.02154 -3.49059E-05 0.00716 -2.33489E-05 0.00713 -4.62508E-03 0.00069 ];
INF_SP5                   (idx, [1:   8]) = [  1.17657E-04 0.01868 -2.25297E-06 0.11048 -5.82417E-06 0.03039 -2.71429E-03 0.00104 ];
INF_SP6                   (idx, [1:   8]) = [ -3.00131E-04 0.00749 -2.37206E-05 0.00994 -1.60364E-05 0.00981 -4.40944E-03 0.00062 ];
INF_SP7                   (idx, [1:   8]) = [  1.04956E-04 0.01963  2.13196E-05 0.00986  6.73175E-06 0.02081 -6.35265E-04 0.00307 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98745E-01 0.00021  4.26256E-01 0.00067 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99342E-01 0.00032  4.21229E-01 0.00098 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99232E-01 0.00032  4.21912E-01 0.00095 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97673E-01 0.00035  4.36013E-01 0.00099 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11578E+00 0.00021  7.82037E-01 0.00067 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11357E+00 0.00032  7.91410E-01 0.00097 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11398E+00 0.00032  7.90124E-01 0.00095 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11981E+00 0.00035  7.64577E-01 0.00099 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.54756E-03 0.00363  2.06900E-04 0.02077  1.08190E-03 0.00911  1.06422E-03 0.00902  3.00609E-03 0.00544  8.86418E-04 0.01025  3.02035E-04 0.01743 ];
LAMBDA                    (idx, [1:  14]) = [  7.49995E-01 0.00896  1.24906E-02 1.1E-07  3.18184E-02 2.8E-05  1.09399E-01 3.8E-05  3.17082E-01 2.5E-05  1.35369E+00 2.9E-05  8.64341E+00 0.00019 ];

