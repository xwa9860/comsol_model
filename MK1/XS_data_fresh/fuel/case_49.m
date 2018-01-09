
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input48' ;
HOSTNAME                  (idx, [1: 12])  = 'n0124.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1060.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:45:03 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00111E+00  1.00280E+00  1.00304E+00  9.94026E-01  1.00615E+00  9.94218E-01  9.97711E-01  1.00074E+00  9.96002E-01  1.00256E+00  1.00241E+00  9.97287E-01  1.00113E+00  1.00419E+00  1.00213E+00  9.95661E-01  1.00298E+00  9.99697E-01  9.94405E-01  1.00174E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.3E-10  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.36347E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.26365E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81592E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85737E-01 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.62466E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84556E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84541E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.61315E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.73245E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002156 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.89178E+02 ;
RUNNING_TIME              (idx, 1)        =  2.97974E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.25017E-01  1.25017E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.33333E-03  1.33333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.96710E+01  2.96710E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.97971E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77282 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98441E+01 0.00014 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86992E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.80 ;
ALLOC_MEMSIZE             (idx, 1)        = 4798.04;
MEMSIZE                   (idx, 1)        = 831.50;
XS_MEMSIZE                (idx, 1)        = 499.22;
MAT_MEMSIZE               (idx, 1)        = 195.38;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.54;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 164763 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34491E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.34881E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.26923E+18 0.00020  9.98354E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.19885E+16 0.00754  1.64629E-03 0.00753 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70871E+18 0.00060  2.80503E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.10870E+18 0.00063  3.46131E-01 0.00046 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002156 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80930E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002156 2.01809E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8979029 9.05900E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10732042 1.08284E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 291085 2.93563E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002156 2.01809E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.01166E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.2E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.09144E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.33735E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34491E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.90250E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.97432E+17 0.00223 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35709E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.50387E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.6E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31966E+00 0.00022  1.31096E+00 0.00021  8.71292E-03 0.00375 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31975E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31987E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31975E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33941E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81298E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81295E+01 2.3E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.67693E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.67651E-07 0.00042 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.53441E-03 0.00583 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.50090E-03 0.00154 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.03761E-03 0.00281  1.62244E-04 0.01601  8.28281E-04 0.00682  8.07022E-04 0.00715  2.32887E-03 0.00400  6.73222E-04 0.00759  2.37968E-04 0.01285 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.58202E-01 0.00661  1.07856E-02 0.00889  3.18205E-02 1.7E-05  1.09396E-01 2.4E-05  3.17095E-01 2.1E-05  1.35375E+00 1.7E-05  8.20642E+00 0.00516 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.58912E-03 0.00382  2.07384E-04 0.02143  1.08858E-03 0.00937  1.05309E-03 0.00930  3.05458E-03 0.00554  8.73637E-04 0.01020  3.11845E-04 0.01703 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.58026E-01 0.00883  1.24906E-02 3.4E-07  3.18203E-02 2.2E-05  1.09394E-01 2.9E-05  3.17089E-01 2.6E-05  1.35378E+00 1.9E-05  8.64185E+00 0.00018 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.68503E-04 0.00063  3.68590E-04 0.00064  3.55180E-04 0.00707 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.86249E-04 0.00059  4.86365E-04 0.00059  4.68678E-04 0.00708 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.60778E-03 0.00384  2.11013E-04 0.02170  1.09158E-03 0.00937  1.06386E-03 0.00971  3.04954E-03 0.00557  8.82018E-04 0.01038  3.09766E-04 0.01783 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.54407E-01 0.00923  1.24906E-02 2.4E-07  3.18212E-02 2.0E-05  1.09394E-01 3.1E-05  3.17086E-01 2.7E-05  1.35378E+00 2.3E-05  8.64128E+00 0.00019 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.52699E-04 0.00143  3.52722E-04 0.00143  3.48065E-04 0.01771 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.65405E-04 0.00142  4.65436E-04 0.00142  4.59462E-04 0.01775 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.64637E-03 0.01117  2.24258E-04 0.06017  1.09295E-03 0.02718  1.07465E-03 0.02828  3.02111E-03 0.01653  9.08106E-04 0.03066  3.25291E-04 0.05086 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.70717E-01 0.02794  1.24906E-02 7.1E-07  3.18226E-02 3.7E-05  1.09387E-01 6.5E-05  3.17077E-01 7.9E-05  1.35375E+00 5.6E-05  8.63905E+00 0.00029 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.64103E-03 0.01084  2.18750E-04 0.05876  1.10051E-03 0.02639  1.07216E-03 0.02763  3.03240E-03 0.01613  8.96591E-04 0.02968  3.20624E-04 0.04987 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.61824E-01 0.02715  1.24906E-02 7.1E-07  3.18227E-02 3.7E-05  1.09391E-01 7.7E-05  3.17071E-01 7.3E-05  1.35372E+00 6.0E-05  8.63935E+00 0.00029 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.89178E+01 0.01125 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.61135E-04 0.00036 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.76530E-04 0.00028 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.65265E-03 0.00203 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.84242E+01 0.00204 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.09038E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58390E-05 8.3E-05  3.58382E-05 8.3E-05  3.59668E-05 0.00102 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.45841E-04 0.00041  7.46064E-04 0.00041  7.11481E-04 0.00488 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.13007E-01 0.00015  7.11995E-01 0.00015  9.27064E-01 0.00434 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08402E+01 0.00686 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84541E+02 0.00023  1.76800E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.95548E+04 0.00172  3.79963E+05 0.00064  8.97365E+05 0.00041  1.66476E+06 0.00029  1.87399E+06 0.00018  1.94232E+06 0.00014  1.45906E+06 0.00015  1.14307E+06 0.00019  1.62973E+06 0.00015  1.60464E+06 0.00011  1.75059E+06 0.00011  1.74228E+06 0.00010  1.89955E+06 9.4E-05  1.85607E+06 9.8E-05  1.86332E+06 0.00011  1.63591E+06 0.00011  1.64710E+06 0.00011  1.63882E+06 0.00011  1.62994E+06 0.00011  3.22975E+06 7.8E-05  3.17492E+06 9.1E-05  2.32699E+06 9.7E-05  1.51667E+06 0.00013  1.80052E+06 0.00011  1.72821E+06 0.00012  1.46832E+06 0.00015  2.59701E+06 0.00013  5.54691E+05 0.00025  6.95039E+05 0.00024  6.26714E+05 0.00027  3.68771E+05 0.00033  6.44155E+05 0.00024  4.44803E+05 0.00030  3.88697E+05 0.00031  7.61715E+04 0.00065  7.55995E+04 0.00065  7.78447E+04 0.00060  8.04116E+04 0.00073  7.99637E+04 0.00063  7.92681E+04 0.00063  8.20433E+04 0.00074  7.78119E+04 0.00072  1.48799E+05 0.00054  2.43805E+05 0.00043  3.26034E+05 0.00044  1.01531E+06 0.00034  1.52189E+06 0.00037  2.40739E+06 0.00041  1.99119E+06 0.00049  1.58675E+06 0.00051  1.26661E+06 0.00051  1.45631E+06 0.00051  2.59899E+06 0.00052  3.18584E+06 0.00053  5.28716E+06 0.00053  6.55829E+06 0.00053  7.63913E+06 0.00055  4.00503E+06 0.00058  2.54786E+06 0.00056  1.68735E+06 0.00062  1.43034E+06 0.00065  1.35489E+06 0.00063  1.04259E+06 0.00061  6.88362E+05 0.00067  5.84441E+05 0.00064  5.33961E+05 0.00078  4.42211E+05 0.00078  3.02844E+05 0.00081  1.98853E+05 0.00109  6.26838E+04 0.00140 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33953E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.51466E+21 0.00021  3.38789E+21 0.00060 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38870E-01 1.4E-05  3.87518E-01 3.7E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.99400E-04 0.00038  9.68692E-04 0.00036 ];
INF_ABS                   (idx, [1:   4]) = [  1.12753E-03 0.00031  2.77796E-03 0.00048 ];
INF_FISS                  (idx, [1:   4]) = [  3.28126E-04 0.00038  1.80927E-03 0.00061 ];
INF_NSF                   (idx, [1:   4]) = [  8.01067E-04 0.00038  4.40865E-03 0.00061 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44134E+00 4.6E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 4.0E-07  2.02270E+02 1.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.15410E-07 0.00011  2.10201E-06 4.5E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37743E-01 1.5E-05  3.84741E-01 4.0E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13664E-02 0.00022  1.13299E-02 0.00038 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48617E-03 0.00154 -4.40222E-03 0.00099 ];
INF_SCATT3                (idx, [1:   4]) = [  4.66028E-04 0.00673 -4.04468E-03 0.00084 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.54906E-04 0.01887 -4.65379E-03 0.00062 ];
INF_SCATT5                (idx, [1:   4]) = [  1.14843E-04 0.02025 -2.71116E-03 0.00097 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.26084E-04 0.00717 -4.44160E-03 0.00055 ];
INF_SCATT7                (idx, [1:   4]) = [  1.32283E-04 0.01527 -6.22364E-04 0.00365 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37777E-01 1.5E-05  3.84741E-01 4.0E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13756E-02 0.00022  1.13299E-02 0.00038 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48791E-03 0.00153 -4.40222E-03 0.00099 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.66302E-04 0.00673 -4.04468E-03 0.00084 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.54904E-04 0.01891 -4.65379E-03 0.00062 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.14803E-04 0.02030 -2.71116E-03 0.00097 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.26080E-04 0.00718 -4.44160E-03 0.00055 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.32248E-04 0.01527 -6.22364E-04 0.00365 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00953E-01 3.2E-05  3.74728E-01 4.3E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10759E+00 3.2E-05  8.89534E-01 4.3E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.09291E-03 0.00032  2.77796E-03 0.00048 ];
INF_REMXS                 (idx, [1:   4]) = [  5.43778E-03 0.00016  4.43067E-03 0.00040 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33433E-01 1.4E-05  4.30990E-03 0.00024  1.65329E-03 0.00046  3.83087E-01 4.0E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23289E-02 0.00021 -9.62547E-04 0.00053 -1.75817E-04 0.00184  1.15057E-02 0.00038 ];
INF_S2                    (idx, [1:   8]) = [  2.65697E-03 0.00143 -1.70799E-04 0.00275 -1.07752E-04 0.00217 -4.29447E-03 0.00102 ];
INF_S3                    (idx, [1:   8]) = [  5.10767E-04 0.00617 -4.47384E-05 0.00777 -3.85713E-05 0.00479 -4.00610E-03 0.00085 ];
INF_S4                    (idx, [1:   8]) = [ -1.19023E-04 0.02455 -3.58828E-05 0.00898 -2.48226E-05 0.00760 -4.62896E-03 0.00063 ];
INF_S5                    (idx, [1:   8]) = [  1.17368E-04 0.01969 -2.52436E-06 0.08591 -5.80838E-06 0.02697 -2.70535E-03 0.00097 ];
INF_S6                    (idx, [1:   8]) = [ -3.01497E-04 0.00763 -2.45867E-05 0.00950 -1.68551E-05 0.00789 -4.42474E-03 0.00055 ];
INF_S7                    (idx, [1:   8]) = [  1.10765E-04 0.01791  2.15182E-05 0.01069  7.03377E-06 0.01864 -6.29398E-04 0.00357 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33467E-01 1.4E-05  4.30990E-03 0.00024  1.65329E-03 0.00046  3.83087E-01 4.0E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23381E-02 0.00021 -9.62547E-04 0.00053 -1.75817E-04 0.00184  1.15057E-02 0.00038 ];
INF_SP2                   (idx, [1:   8]) = [  2.65871E-03 0.00143 -1.70799E-04 0.00275 -1.07752E-04 0.00217 -4.29447E-03 0.00102 ];
INF_SP3                   (idx, [1:   8]) = [  5.11040E-04 0.00618 -4.47384E-05 0.00777 -3.85713E-05 0.00479 -4.00610E-03 0.00085 ];
INF_SP4                   (idx, [1:   8]) = [ -1.19021E-04 0.02461 -3.58828E-05 0.00898 -2.48226E-05 0.00760 -4.62896E-03 0.00063 ];
INF_SP5                   (idx, [1:   8]) = [  1.17327E-04 0.01974 -2.52436E-06 0.08591 -5.80838E-06 0.02697 -2.70535E-03 0.00097 ];
INF_SP6                   (idx, [1:   8]) = [ -3.01493E-04 0.00764 -2.45867E-05 0.00950 -1.68551E-05 0.00789 -4.42474E-03 0.00055 ];
INF_SP7                   (idx, [1:   8]) = [  1.10730E-04 0.01792  2.15182E-05 0.01069  7.03377E-06 0.01864 -6.29398E-04 0.00357 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98813E-01 0.00023  4.25684E-01 0.00060 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99299E-01 0.00036  4.21411E-01 0.00093 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99193E-01 0.00036  4.21275E-01 0.00090 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97959E-01 0.00036  4.34703E-01 0.00093 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11553E+00 0.00023  7.83082E-01 0.00060 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11373E+00 0.00036  7.91061E-01 0.00093 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11412E+00 0.00036  7.91313E-01 0.00090 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11874E+00 0.00036  7.66872E-01 0.00093 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.58912E-03 0.00382  2.07384E-04 0.02143  1.08858E-03 0.00937  1.05309E-03 0.00930  3.05458E-03 0.00554  8.73637E-04 0.01020  3.11845E-04 0.01703 ];
LAMBDA                    (idx, [1:  14]) = [  7.58026E-01 0.00883  1.24906E-02 3.4E-07  3.18203E-02 2.2E-05  1.09394E-01 2.9E-05  3.17089E-01 2.6E-05  1.35378E+00 1.9E-05  8.64185E+00 0.00018 ];

