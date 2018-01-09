
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
WORKING_DIRECTORY         (idx, [1: 62])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input9' ;
HOSTNAME                  (idx, [1: 12])  = 'n0083.savio1' ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.99216E-01  1.00124E+00  9.97512E-01  9.97388E-01  1.00415E+00  1.00317E+00  1.00054E+00  1.00115E+00  9.96108E-01  9.96021E-01  1.00029E+00  9.96804E-01  9.99939E-01  1.00479E+00  9.97588E-01  9.97110E-01  1.00048E+00  1.00380E+00  1.00241E+00  1.00029E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.02159E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.29784E-01 2.4E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83756E-01 4.8E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87862E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.47741E+00 0.00032  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.86061E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.86046E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.60271E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.48333E+01 0.00025  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001935 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00030 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00030 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.83070E+02 ;
RUNNING_TIME              (idx, 1)        =  2.94800E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.23350E-01  1.23350E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.15000E-03  1.15000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.93555E+01  2.93555E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.94797E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77848 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98513E+01 0.00012 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87278E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4755.21;
MEMSIZE                   (idx, 1)        = 788.93;
XS_MEMSIZE                (idx, 1)        = 471.55;
MAT_MEMSIZE               (idx, 1)        = 180.48;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.28;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 152169 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.37410E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.58924E-01 0.00060 ];
U235_FISS                 (idx, [1:   4]) = [  7.27096E+18 0.00020  9.98345E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20561E+16 0.00767  1.65529E-03 0.00766 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71842E+18 0.00060  2.69631E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.32751E+18 0.00059  3.65169E-01 0.00044 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001935 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80542E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001935 2.01805E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9194769 9.27648E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10506360 1.06009E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 300806 3.03186E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001935 2.01805E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.90573E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.2E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.37232E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.36544E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.37410E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.10342E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.08331E+17 0.00214 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.38627E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.57879E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43745E+00 6.6E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.29198E+00 0.00022  1.28336E+00 0.00021  8.59042E-03 0.00380 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.29199E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.29184E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.29199E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.31187E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80352E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80343E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.94246E-07 0.00080 ];
IMP_EALF                  (idx, [1:   2]) = [  2.94388E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.63724E-03 0.00573 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.68123E-03 0.00151 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.16341E-03 0.00284  1.65494E-04 0.01520  8.52557E-04 0.00700  8.38461E-04 0.00687  2.37670E-03 0.00413  6.88981E-04 0.00761  2.41213E-04 0.01303 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.53596E-01 0.00677  1.10979E-02 0.00792  3.18188E-02 2.1E-05  1.09395E-01 2.4E-05  3.17097E-01 2.1E-05  1.35372E+00 1.8E-05  8.24579E+00 0.00491 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.64196E-03 0.00382  2.13267E-04 0.02119  1.09802E-03 0.00955  1.07532E-03 0.00939  3.05375E-03 0.00560  8.84784E-04 0.01004  3.16805E-04 0.01692 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.61489E-01 0.00886  1.24906E-02 1.7E-07  3.18189E-02 2.7E-05  1.09397E-01 3.6E-05  3.17091E-01 2.7E-05  1.35370E+00 2.7E-05  8.64378E+00 0.00018 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.82131E-04 0.00067  3.82256E-04 0.00067  3.63838E-04 0.00767 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.93654E-04 0.00062  4.93815E-04 0.00062  4.70031E-04 0.00766 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.65165E-03 0.00384  2.12636E-04 0.02136  1.11097E-03 0.00949  1.07026E-03 0.00962  3.05844E-03 0.00566  8.87153E-04 0.01011  3.12188E-04 0.01788 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.54869E-01 0.00933  1.24906E-02 2.2E-07  3.18194E-02 2.6E-05  1.09400E-01 4.4E-05  3.17098E-01 3.0E-05  1.35371E+00 2.8E-05  8.64456E+00 0.00025 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.66311E-04 0.00145  3.66442E-04 0.00146  3.50368E-04 0.01919 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.73230E-04 0.00144  4.73400E-04 0.00145  4.52555E-04 0.01919 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.58950E-03 0.01109  2.23421E-04 0.06424  1.11157E-03 0.02719  1.08758E-03 0.02830  2.99322E-03 0.01677  8.77708E-04 0.03135  2.96005E-04 0.05529 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.37149E-01 0.02731  1.24906E-02 7.4E-09  3.18181E-02 7.5E-05  1.09409E-01 0.00011  3.17121E-01 9.4E-05  1.35378E+00 5.4E-05  8.64427E+00 0.00053 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.59845E-03 0.01086  2.21606E-04 0.06230  1.11432E-03 0.02654  1.08888E-03 0.02768  2.99407E-03 0.01646  8.83212E-04 0.03050  2.96366E-04 0.05336 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.42966E-01 0.02688  1.24906E-02 7.4E-09  3.18182E-02 7.4E-05  1.09408E-01 0.00011  3.17119E-01 9.2E-05  1.35377E+00 5.4E-05  8.64424E+00 0.00052 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.80568E+01 0.01120 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.74460E-04 0.00037 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.83748E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.63747E-03 0.00214 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.77311E+01 0.00218 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08595E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59453E-05 8.7E-05  3.59445E-05 8.7E-05  3.60621E-05 0.00107 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.61307E-04 0.00040  7.61561E-04 0.00040  7.22736E-04 0.00492 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.01177E-01 0.00015  7.00258E-01 0.00015  8.93133E-01 0.00454 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07742E+01 0.00667 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.86046E+02 0.00023  1.79929E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.97232E+04 0.00158  3.79956E+05 0.00072  8.96391E+05 0.00039  1.66354E+06 0.00027  1.87358E+06 0.00021  1.94177E+06 0.00016  1.45907E+06 0.00015  1.14313E+06 0.00020  1.62915E+06 0.00014  1.60433E+06 0.00012  1.75004E+06 0.00012  1.74182E+06 0.00010  1.89903E+06 9.8E-05  1.85600E+06 0.00012  1.86285E+06 9.6E-05  1.63567E+06 0.00012  1.64639E+06 0.00011  1.63837E+06 0.00011  1.62907E+06 0.00012  3.22790E+06 9.0E-05  3.17295E+06 9.2E-05  2.32411E+06 0.00011  1.51398E+06 0.00013  1.79242E+06 0.00013  1.71302E+06 0.00015  1.45516E+06 0.00016  2.56443E+06 0.00015  5.47745E+05 0.00029  6.86610E+05 0.00028  6.20536E+05 0.00025  3.66127E+05 0.00037  6.41553E+05 0.00025  4.44571E+05 0.00036  3.90666E+05 0.00038  7.69748E+04 0.00068  7.65881E+04 0.00070  7.90095E+04 0.00069  8.19142E+04 0.00070  8.15405E+04 0.00070  8.10588E+04 0.00069  8.41917E+04 0.00069  8.00867E+04 0.00077  1.53898E+05 0.00058  2.54378E+05 0.00050  3.45094E+05 0.00039  1.10280E+06 0.00030  1.67925E+06 0.00038  2.62424E+06 0.00043  2.13391E+06 0.00046  1.68086E+06 0.00048  1.33067E+06 0.00049  1.52180E+06 0.00052  2.69232E+06 0.00053  3.27062E+06 0.00056  5.37195E+06 0.00057  6.58658E+06 0.00059  7.59265E+06 0.00059  3.95410E+06 0.00059  2.50633E+06 0.00060  1.65694E+06 0.00067  1.40300E+06 0.00069  1.32682E+06 0.00068  1.02032E+06 0.00067  6.73097E+05 0.00072  5.71513E+05 0.00073  5.21529E+05 0.00079  4.31779E+05 0.00072  2.95884E+05 0.00088  1.94320E+05 0.00114  6.11740E+04 0.00119 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.31172E+00 0.00019 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.59254E+21 0.00017  3.51095E+21 0.00058 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.39020E-01 1.6E-05  3.87606E-01 4.5E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.48025E-04 0.00041  9.47259E-04 0.00044 ];
INF_ABS                   (idx, [1:   4]) = [  1.17908E-03 0.00034  2.68284E-03 0.00048 ];
INF_FISS                  (idx, [1:   4]) = [  3.31056E-04 0.00041  1.73558E-03 0.00058 ];
INF_NSF                   (idx, [1:   4]) = [  8.08203E-04 0.00041  4.22909E-03 0.00058 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44129E+00 4.4E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.8E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.16987E-07 0.00011  2.07761E-06 4.8E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37841E-01 1.7E-05  3.84922E-01 4.7E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13577E-02 0.00021  1.14629E-02 0.00046 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48185E-03 0.00156 -4.33663E-03 0.00081 ];
INF_SCATT3                (idx, [1:   4]) = [  4.64335E-04 0.00665 -3.99258E-03 0.00090 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.53928E-04 0.01799 -4.64909E-03 0.00061 ];
INF_SCATT5                (idx, [1:   4]) = [  1.15031E-04 0.01884 -2.69166E-03 0.00095 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.41491E-04 0.00649 -4.49306E-03 0.00058 ];
INF_SCATT7                (idx, [1:   4]) = [  1.42247E-04 0.01545 -6.05756E-04 0.00336 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37875E-01 1.7E-05  3.84922E-01 4.7E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13668E-02 0.00021  1.14629E-02 0.00046 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48356E-03 0.00156 -4.33663E-03 0.00081 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.64576E-04 0.00665 -3.99258E-03 0.00090 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.53902E-04 0.01796 -4.64909E-03 0.00061 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.15041E-04 0.01885 -2.69166E-03 0.00095 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.41474E-04 0.00648 -4.49306E-03 0.00058 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.42250E-04 0.01547 -6.05756E-04 0.00336 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01096E-01 3.5E-05  3.74608E-01 5.0E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10707E+00 3.5E-05  8.89820E-01 5.0E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.14455E-03 0.00036  2.68284E-03 0.00048 ];
INF_REMXS                 (idx, [1:   4]) = [  5.82015E-03 0.00015  4.70783E-03 0.00045 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33200E-01 1.6E-05  4.64118E-03 0.00023  2.02436E-03 0.00050  3.82898E-01 4.9E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23648E-02 0.00020 -1.00704E-03 0.00049 -2.39151E-04 0.00143  1.17021E-02 0.00044 ];
INF_S2                    (idx, [1:   8]) = [  2.67230E-03 0.00144 -1.90447E-04 0.00214 -1.25607E-04 0.00209 -4.21102E-03 0.00083 ];
INF_S3                    (idx, [1:   8]) = [  5.15147E-04 0.00601 -5.08114E-05 0.00617 -4.47415E-05 0.00470 -3.94784E-03 0.00091 ];
INF_S4                    (idx, [1:   8]) = [ -1.14224E-04 0.02387 -3.97034E-05 0.00724 -2.89737E-05 0.00664 -4.62012E-03 0.00062 ];
INF_S5                    (idx, [1:   8]) = [  1.18594E-04 0.01847 -3.56322E-06 0.07418 -6.69236E-06 0.02984 -2.68496E-03 0.00095 ];
INF_S6                    (idx, [1:   8]) = [ -3.14724E-04 0.00696 -2.67671E-05 0.00856 -1.96933E-05 0.00779 -4.47337E-03 0.00058 ];
INF_S7                    (idx, [1:   8]) = [  1.19687E-04 0.01853  2.25593E-05 0.01034  9.23518E-06 0.01541 -6.14991E-04 0.00331 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33234E-01 1.6E-05  4.64118E-03 0.00023  2.02436E-03 0.00050  3.82898E-01 4.9E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23739E-02 0.00020 -1.00704E-03 0.00049 -2.39151E-04 0.00143  1.17021E-02 0.00044 ];
INF_SP2                   (idx, [1:   8]) = [  2.67401E-03 0.00144 -1.90447E-04 0.00214 -1.25607E-04 0.00209 -4.21102E-03 0.00083 ];
INF_SP3                   (idx, [1:   8]) = [  5.15388E-04 0.00600 -5.08114E-05 0.00617 -4.47415E-05 0.00470 -3.94784E-03 0.00091 ];
INF_SP4                   (idx, [1:   8]) = [ -1.14198E-04 0.02383 -3.97034E-05 0.00724 -2.89737E-05 0.00664 -4.62012E-03 0.00062 ];
INF_SP5                   (idx, [1:   8]) = [  1.18604E-04 0.01848 -3.56322E-06 0.07418 -6.69236E-06 0.02984 -2.68496E-03 0.00095 ];
INF_SP6                   (idx, [1:   8]) = [ -3.14707E-04 0.00695 -2.67671E-05 0.00856 -1.96933E-05 0.00779 -4.47337E-03 0.00058 ];
INF_SP7                   (idx, [1:   8]) = [  1.19690E-04 0.01855  2.25593E-05 0.01034  9.23518E-06 0.01541 -6.14991E-04 0.00331 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98992E-01 0.00024  4.26659E-01 0.00062 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99454E-01 0.00034  4.22205E-01 0.00093 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99495E-01 0.00037  4.21433E-01 0.00095 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.98038E-01 0.00036  4.36747E-01 0.00094 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11486E+00 0.00024  7.81294E-01 0.00062 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11315E+00 0.00034  7.89573E-01 0.00093 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11300E+00 0.00037  7.91023E-01 0.00095 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11844E+00 0.00036  7.63285E-01 0.00094 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.64196E-03 0.00382  2.13267E-04 0.02119  1.09802E-03 0.00955  1.07532E-03 0.00939  3.05375E-03 0.00560  8.84784E-04 0.01004  3.16805E-04 0.01692 ];
LAMBDA                    (idx, [1:  14]) = [  7.61489E-01 0.00886  1.24906E-02 1.7E-07  3.18189E-02 2.7E-05  1.09397E-01 3.6E-05  3.17091E-01 2.7E-05  1.35370E+00 2.7E-05  8.64378E+00 0.00018 ];

