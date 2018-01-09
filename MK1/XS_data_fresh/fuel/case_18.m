
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input17' ;
HOSTNAME                  (idx, [1: 12])  = 'n0091.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:02 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00256E+00  1.00308E+00  9.96791E-01  1.00462E+00  1.00723E+00  9.96739E-01  1.00618E+00  9.96953E-01  9.97697E-01  9.98544E-01  1.00032E+00  9.97558E-01  9.99542E-01  9.99722E-01  1.00178E+00  9.95653E-01  1.00340E+00  9.95397E-01  9.99690E-01  9.96536E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.27673E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.27233E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.84371E-01 4.9E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.88448E-01 4.9E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.82069E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.82954E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.82939E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.51293E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.58867E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002132 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.69132E+02 ;
RUNNING_TIME              (idx, 1)        =  2.87829E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.14417E-01  1.14417E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.00000E-03  1.00000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.86675E+01  2.86675E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.87825E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77325 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98420E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86887E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4722.98;
MEMSIZE                   (idx, 1)        = 752.41;
XS_MEMSIZE                (idx, 1)        = 447.83;
MAT_MEMSIZE               (idx, 1)        = 167.68;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3970.57;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 141342 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.36722E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.57522E-01 0.00062 ];
U235_FISS                 (idx, [1:   4]) = [  7.26840E+18 0.00020  9.98334E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.21300E+16 0.00760  1.66603E-03 0.00759 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70877E+18 0.00061  2.70873E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.31178E+18 0.00062  3.66422E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002132 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80304E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002132 2.01803E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9147043 9.22826E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10556101 1.06506E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 298988 3.01397E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002132 2.01803E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -1.19209E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.30575E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.35878E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.36722E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.95398E+21 0.00027 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.06064E+17 0.00224 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.37939E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.52308E+21 0.00029 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.29805E+00 0.00022  1.28951E+00 0.00022  8.50556E-03 0.00379 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.29841E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.29834E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.29841E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.31828E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81422E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81429E+01 2.5E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.64399E-07 0.00082 ];
IMP_EALF                  (idx, [1:   2]) = [  2.64099E-07 0.00045 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.66370E-03 0.00575 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.61584E-03 0.00150 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.08622E-03 0.00285  1.67239E-04 0.01544  8.38603E-04 0.00683  8.14336E-04 0.00711  2.34679E-03 0.00410  6.81415E-04 0.00757  2.37842E-04 0.01298 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.54511E-01 0.00662  1.10042E-02 0.00822  3.18205E-02 1.6E-05  1.09399E-01 2.5E-05  3.17103E-01 2.2E-05  1.35374E+00 1.7E-05  8.23148E+00 0.00503 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.56523E-03 0.00377  2.14757E-04 0.02064  1.08473E-03 0.00905  1.04871E-03 0.00941  3.02301E-03 0.00547  8.89098E-04 0.01031  3.04930E-04 0.01749 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.52219E-01 0.00895  1.24906E-02 2.0E-07  3.18210E-02 1.9E-05  1.09396E-01 2.9E-05  3.17118E-01 3.2E-05  1.35374E+00 2.5E-05  8.64626E+00 0.00026 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.76763E-04 0.00064  3.76862E-04 0.00064  3.61795E-04 0.00764 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.89006E-04 0.00060  4.89135E-04 0.00060  4.69604E-04 0.00763 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.55227E-03 0.00383  2.20342E-04 0.02134  1.07879E-03 0.00933  1.04885E-03 0.00961  3.01392E-03 0.00567  8.82622E-04 0.01047  3.07738E-04 0.01813 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.55726E-01 0.00940  1.24906E-02 2.5E-07  3.18205E-02 2.4E-05  1.09399E-01 3.6E-05  3.17119E-01 3.4E-05  1.35377E+00 2.4E-05  8.64368E+00 0.00023 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.60904E-04 0.00142  3.60961E-04 0.00142  3.51769E-04 0.01743 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.68425E-04 0.00140  4.68498E-04 0.00141  4.56515E-04 0.01742 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.58777E-03 0.01161  2.42577E-04 0.06307  1.09361E-03 0.02763  1.04620E-03 0.02797  3.02842E-03 0.01714  8.77341E-04 0.03137  2.99627E-04 0.05346 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.39029E-01 0.02634  1.24906E-02 7.0E-07  3.18218E-02 4.2E-05  1.09393E-01 8.3E-05  3.17127E-01 9.3E-05  1.35368E+00 6.5E-05  8.63836E+00 0.00018 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.57196E-03 0.01134  2.42017E-04 0.06037  1.09261E-03 0.02708  1.04328E-03 0.02734  3.02031E-03 0.01671  8.72602E-04 0.03015  3.01131E-04 0.05100 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.46098E-01 0.02583  1.24906E-02 6.9E-07  3.18220E-02 3.2E-05  1.09395E-01 8.4E-05  3.17130E-01 9.2E-05  1.35367E+00 6.6E-05  8.63819E+00 0.00017 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.83193E+01 0.01170 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.69493E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79573E-04 0.00031 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.58310E-03 0.00218 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.78208E+01 0.00221 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08891E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.57679E-05 8.5E-05  3.57669E-05 8.5E-05  3.59107E-05 0.00105 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.50158E-04 0.00039  7.50374E-04 0.00039  7.16275E-04 0.00491 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.01731E-01 0.00015  7.00813E-01 0.00016  8.96156E-01 0.00452 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07320E+01 0.00664 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.82939E+02 0.00023  1.76681E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.93791E+04 0.00157  3.79874E+05 0.00073  8.96862E+05 0.00040  1.66366E+06 0.00024  1.87357E+06 0.00019  1.94144E+06 0.00015  1.45940E+06 0.00014  1.14303E+06 0.00019  1.62936E+06 0.00012  1.60407E+06 0.00010  1.75028E+06 0.00011  1.74180E+06 0.00010  1.89893E+06 9.8E-05  1.85534E+06 0.00010  1.86271E+06 0.00011  1.63535E+06 9.4E-05  1.64635E+06 0.00011  1.63799E+06 0.00010  1.62871E+06 0.00011  3.22776E+06 8.0E-05  3.17212E+06 8.9E-05  2.32313E+06 0.00010  1.51245E+06 0.00013  1.79074E+06 0.00013  1.71243E+06 0.00014  1.45253E+06 0.00015  2.55693E+06 0.00017  5.44418E+05 0.00027  6.82364E+05 0.00028  6.14654E+05 0.00031  3.62014E+05 0.00035  6.31975E+05 0.00027  4.35963E+05 0.00038  3.80360E+05 0.00038  7.45185E+04 0.00073  7.39411E+04 0.00071  7.61018E+04 0.00068  7.86871E+04 0.00078  7.80975E+04 0.00067  7.74882E+04 0.00074  8.01684E+04 0.00079  7.60160E+04 0.00075  1.45111E+05 0.00054  2.37510E+05 0.00048  3.16781E+05 0.00044  9.82028E+05 0.00037  1.46717E+06 0.00039  2.32603E+06 0.00048  1.93109E+06 0.00048  1.54368E+06 0.00052  1.23435E+06 0.00053  1.42217E+06 0.00053  2.54320E+06 0.00053  3.12727E+06 0.00052  5.20726E+06 0.00052  6.48585E+06 0.00051  7.58189E+06 0.00053  3.98390E+06 0.00054  2.53771E+06 0.00057  1.68161E+06 0.00059  1.42649E+06 0.00062  1.35151E+06 0.00059  1.04148E+06 0.00066  6.86947E+05 0.00065  5.83868E+05 0.00075  5.33225E+05 0.00078  4.40484E+05 0.00084  3.02806E+05 0.00085  1.98533E+05 0.00109  6.27784E+04 0.00128 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.31820E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.55644E+21 0.00021  3.39763E+21 0.00056 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38979E-01 1.7E-05  3.87785E-01 4.3E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.48354E-04 0.00041  9.67925E-04 0.00040 ];
INF_ABS                   (idx, [1:   4]) = [  1.17336E-03 0.00036  2.77123E-03 0.00046 ];
INF_FISS                  (idx, [1:   4]) = [  3.25003E-04 0.00048  1.80331E-03 0.00055 ];
INF_NSF                   (idx, [1:   4]) = [  7.93456E-04 0.00048  4.39413E-03 0.00055 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44138E+00 4.2E-06  2.43670E+00 1.9E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02320E+02 3.7E-07  2.02270E+02 1.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.13835E-07 0.00012  2.10975E-06 4.3E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37805E-01 1.7E-05  3.85014E-01 4.5E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13702E-02 0.00021  1.12834E-02 0.00040 ];
INF_SCATT2                (idx, [1:   4]) = [  2.49242E-03 0.00129 -4.43970E-03 0.00095 ];
INF_SCATT3                (idx, [1:   4]) = [  4.75365E-04 0.00603 -4.07207E-03 0.00085 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.43073E-04 0.01915 -4.66135E-03 0.00062 ];
INF_SCATT5                (idx, [1:   4]) = [  1.14497E-04 0.01979 -2.72390E-03 0.00102 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.21916E-04 0.00651 -4.42882E-03 0.00060 ];
INF_SCATT7                (idx, [1:   4]) = [  1.22786E-04 0.01771 -6.28920E-04 0.00367 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37840E-01 1.8E-05  3.85014E-01 4.5E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13793E-02 0.00021  1.12834E-02 0.00040 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.49409E-03 0.00129 -4.43970E-03 0.00095 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.75605E-04 0.00604 -4.07207E-03 0.00085 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.43062E-04 0.01914 -4.66135E-03 0.00062 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.14432E-04 0.01984 -2.72390E-03 0.00102 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.21930E-04 0.00651 -4.42882E-03 0.00060 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.22764E-04 0.01771 -6.28920E-04 0.00367 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00974E-01 3.4E-05  3.75064E-01 4.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10752E+00 3.4E-05  8.88738E-01 4.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.13870E-03 0.00038  2.77123E-03 0.00046 ];
INF_REMXS                 (idx, [1:   4]) = [  5.37038E-03 0.00013  4.35065E-03 0.00038 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33609E-01 1.7E-05  4.19632E-03 0.00023  1.57985E-03 0.00040  3.83434E-01 4.5E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23143E-02 0.00020 -9.44131E-04 0.00055 -1.67447E-04 0.00194  1.14509E-02 0.00039 ];
INF_S2                    (idx, [1:   8]) = [  2.65725E-03 0.00121 -1.64829E-04 0.00238 -1.03382E-04 0.00234 -4.33631E-03 0.00098 ];
INF_S3                    (idx, [1:   8]) = [  5.17944E-04 0.00535 -4.25796E-05 0.00808 -3.67292E-05 0.00508 -4.03534E-03 0.00085 ];
INF_S4                    (idx, [1:   8]) = [ -1.08244E-04 0.02537 -3.48286E-05 0.00869 -2.35390E-05 0.00730 -4.63781E-03 0.00062 ];
INF_S5                    (idx, [1:   8]) = [  1.16995E-04 0.01868 -2.49784E-06 0.10564 -5.64248E-06 0.02758 -2.71826E-03 0.00103 ];
INF_S6                    (idx, [1:   8]) = [ -2.98352E-04 0.00693 -2.35633E-05 0.01005 -1.59563E-05 0.01001 -4.41287E-03 0.00060 ];
INF_S7                    (idx, [1:   8]) = [  1.02111E-04 0.02143  2.06753E-05 0.01172  6.36501E-06 0.01930 -6.35285E-04 0.00363 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33644E-01 1.7E-05  4.19632E-03 0.00023  1.57985E-03 0.00040  3.83434E-01 4.5E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23234E-02 0.00020 -9.44131E-04 0.00055 -1.67447E-04 0.00194  1.14509E-02 0.00039 ];
INF_SP2                   (idx, [1:   8]) = [  2.65892E-03 0.00121 -1.64829E-04 0.00238 -1.03382E-04 0.00234 -4.33631E-03 0.00098 ];
INF_SP3                   (idx, [1:   8]) = [  5.18185E-04 0.00537 -4.25796E-05 0.00808 -3.67292E-05 0.00508 -4.03534E-03 0.00085 ];
INF_SP4                   (idx, [1:   8]) = [ -1.08234E-04 0.02535 -3.48286E-05 0.00869 -2.35390E-05 0.00730 -4.63781E-03 0.00062 ];
INF_SP5                   (idx, [1:   8]) = [  1.16930E-04 0.01873 -2.49784E-06 0.10564 -5.64248E-06 0.02758 -2.71826E-03 0.00103 ];
INF_SP6                   (idx, [1:   8]) = [ -2.98366E-04 0.00693 -2.35633E-05 0.01005 -1.59563E-05 0.01001 -4.41287E-03 0.00060 ];
INF_SP7                   (idx, [1:   8]) = [  1.02089E-04 0.02143  2.06753E-05 0.01172  6.36501E-06 0.01930 -6.35285E-04 0.00363 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98939E-01 0.00024  4.26775E-01 0.00066 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99331E-01 0.00037  4.21669E-01 0.00090 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99414E-01 0.00035  4.22448E-01 0.00107 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.98085E-01 0.00041  4.36602E-01 0.00096 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11506E+00 0.00024  7.81085E-01 0.00066 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11361E+00 0.00038  7.90574E-01 0.00090 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11330E+00 0.00035  7.89140E-01 0.00107 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11827E+00 0.00041  7.63541E-01 0.00096 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.56523E-03 0.00377  2.14757E-04 0.02064  1.08473E-03 0.00905  1.04871E-03 0.00941  3.02301E-03 0.00547  8.89098E-04 0.01031  3.04930E-04 0.01749 ];
LAMBDA                    (idx, [1:  14]) = [  7.52219E-01 0.00895  1.24906E-02 2.0E-07  3.18210E-02 1.9E-05  1.09396E-01 2.9E-05  3.17118E-01 3.2E-05  1.35374E+00 2.5E-05  8.64626E+00 0.00026 ];

