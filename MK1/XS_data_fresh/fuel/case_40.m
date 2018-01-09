
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input39' ;
HOSTNAME                  (idx, [1: 12])  = 'n0067.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:45:01 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.99135E-01  9.98901E-01  9.97307E-01  9.95774E-01  1.00167E+00  1.00094E+00  9.97321E-01  9.95431E-01  1.00524E+00  1.00296E+00  1.00553E+00  1.00305E+00  9.98791E-01  9.97693E-01  9.99850E-01  1.00298E+00  9.98024E-01  9.95868E-01  1.00274E+00  1.00080E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 1.6E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.57530E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.24247E-01 2.7E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.82936E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87143E-01 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.80037E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.83257E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.83243E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.54928E+02 0.00028  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.82644E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001920 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.88642E+02 ;
RUNNING_TIME              (idx, 1)        =  2.97692E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.25017E-01  1.25017E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.13333E-03  1.13333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.96430E+01  2.96430E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.97689E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77354 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98497E+01 0.00014 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87098E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4755.50;
MEMSIZE                   (idx, 1)        = 789.25;
XS_MEMSIZE                (idx, 1)        = 471.79;
MAT_MEMSIZE               (idx, 1)        = 180.56;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.25;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 152238 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35411E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.44901E-01 0.00062 ];
U235_FISS                 (idx, [1:   4]) = [  7.27292E+18 0.00020  9.98346E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20485E+16 0.00760  1.65358E-03 0.00758 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70416E+18 0.00062  2.75891E-01 0.00055 ];
U238_CAPT                 (idx, [1:   4]) = [  2.19845E+18 0.00062  3.55874E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001920 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79946E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001920 2.01799E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9043204 9.12355E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10664927 1.07603E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 293789 2.96095E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001920 2.01799E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.12342E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.17603E+18 0.00033 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34581E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35411E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.90029E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.00500E+17 0.00215 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36586E+19 0.00016 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.50301E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.4E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31140E+00 0.00022  1.30275E+00 0.00021  8.63051E-03 0.00376 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31130E+00 0.00016 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31091E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31130E+00 0.00016 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33101E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81487E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81502E+01 2.5E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.62689E-07 0.00080 ];
IMP_EALF                  (idx, [1:   2]) = [  2.62176E-07 0.00045 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.63643E-03 0.00576 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.57315E-03 0.00148 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.05437E-03 0.00287  1.60391E-04 0.01539  8.42250E-04 0.00682  8.07868E-04 0.00704  2.32342E-03 0.00417  6.81605E-04 0.00763  2.38835E-04 0.01302 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.59116E-01 0.00681  1.08605E-02 0.00866  3.18186E-02 2.2E-05  1.09399E-01 2.6E-05  3.17095E-01 2.1E-05  1.35372E+00 1.9E-05  8.20650E+00 0.00516 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.58138E-03 0.00381  2.05159E-04 0.02090  1.11254E-03 0.00905  1.05331E-03 0.00965  3.00468E-03 0.00557  8.94770E-04 0.01022  3.10925E-04 0.01764 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.59119E-01 0.00908  1.24906E-02 1.9E-07  3.18184E-02 3.0E-05  1.09397E-01 3.3E-05  3.17104E-01 3.1E-05  1.35371E+00 2.6E-05  8.64331E+00 0.00019 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.70343E-04 0.00064  3.70467E-04 0.00064  3.51110E-04 0.00737 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.85623E-04 0.00061  4.85786E-04 0.00061  4.60404E-04 0.00737 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.57889E-03 0.00382  2.03608E-04 0.02189  1.10251E-03 0.00913  1.05232E-03 0.00972  3.01049E-03 0.00563  8.96638E-04 0.01035  3.13321E-04 0.01761 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.63949E-01 0.00930  1.24906E-02 0.0E+00  3.18183E-02 3.3E-05  1.09398E-01 3.7E-05  3.17109E-01 3.1E-05  1.35370E+00 2.8E-05  8.64442E+00 0.00025 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.55114E-04 0.00143  3.55171E-04 0.00144  3.43957E-04 0.01835 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.65655E-04 0.00142  4.65730E-04 0.00142  4.50929E-04 0.01832 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.64404E-03 0.01097  1.99316E-04 0.06460  1.07350E-03 0.02788  1.07512E-03 0.02843  3.05510E-03 0.01653  9.23949E-04 0.03115  3.17054E-04 0.05197 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.66928E-01 0.02717  1.24906E-02 7.5E-09  3.18179E-02 8.1E-05  1.09382E-01 4.0E-05  3.17104E-01 8.2E-05  1.35357E+00 7.3E-05  8.64860E+00 0.00059 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.61893E-03 0.01056  2.03020E-04 0.06173  1.06637E-03 0.02689  1.06372E-03 0.02761  3.04106E-03 0.01616  9.27795E-04 0.03008  3.16973E-04 0.04949 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.70999E-01 0.02625  1.24906E-02 7.5E-09  3.18179E-02 8.1E-05  1.09383E-01 4.3E-05  3.17100E-01 7.4E-05  1.35356E+00 7.4E-05  8.64859E+00 0.00059 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.87949E+01 0.01113 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.63037E-04 0.00037 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.76041E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.59322E-03 0.00227 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.81672E+01 0.00231 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08923E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.57799E-05 8.5E-05  3.57790E-05 8.5E-05  3.59109E-05 0.00105 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.45090E-04 0.00039  7.45328E-04 0.00040  7.08807E-04 0.00493 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.07855E-01 0.00014  7.06873E-01 0.00015  9.16132E-01 0.00443 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08925E+01 0.00648 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.83243E+02 0.00023  1.76140E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.95040E+04 0.00180  3.79783E+05 0.00075  8.96751E+05 0.00043  1.66382E+06 0.00030  1.87360E+06 0.00022  1.94178E+06 0.00015  1.45947E+06 0.00015  1.14290E+06 0.00017  1.62955E+06 0.00015  1.60421E+06 0.00011  1.75025E+06 0.00011  1.74160E+06 9.8E-05  1.89925E+06 0.00010  1.85568E+06 9.8E-05  1.86284E+06 0.00011  1.63568E+06 0.00011  1.64660E+06 0.00012  1.63819E+06 0.00011  1.62929E+06 0.00012  3.22827E+06 8.6E-05  3.17302E+06 8.3E-05  2.32512E+06 0.00011  1.51474E+06 0.00013  1.79545E+06 0.00012  1.71887E+06 0.00015  1.46082E+06 0.00017  2.57650E+06 0.00017  5.49915E+05 0.00027  6.89164E+05 0.00027  6.20463E+05 0.00027  3.65077E+05 0.00035  6.37366E+05 0.00033  4.39632E+05 0.00043  3.83766E+05 0.00035  7.51766E+04 0.00068  7.45419E+04 0.00074  7.68569E+04 0.00075  7.93280E+04 0.00069  7.87823E+04 0.00063  7.81173E+04 0.00062  8.08773E+04 0.00067  7.66596E+04 0.00071  1.46320E+05 0.00061  2.39364E+05 0.00051  3.19291E+05 0.00040  9.88263E+05 0.00029  1.47296E+06 0.00036  2.33150E+06 0.00042  1.93496E+06 0.00048  1.54626E+06 0.00050  1.23669E+06 0.00052  1.42400E+06 0.00051  2.54697E+06 0.00050  3.13152E+06 0.00051  5.21619E+06 0.00051  6.49561E+06 0.00050  7.59425E+06 0.00051  3.99228E+06 0.00053  2.54292E+06 0.00058  1.68493E+06 0.00060  1.43035E+06 0.00059  1.35445E+06 0.00061  1.04342E+06 0.00055  6.88565E+05 0.00063  5.85566E+05 0.00075  5.34466E+05 0.00073  4.41572E+05 0.00072  3.03336E+05 0.00092  1.98897E+05 0.00108  6.28489E+04 0.00121 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33061E+00 0.00023 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.52898E+21 0.00021  3.37136E+21 0.00052 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38914E-01 1.7E-05  3.87680E-01 3.7E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.21828E-04 0.00040  9.71654E-04 0.00039 ];
INF_ABS                   (idx, [1:   4]) = [  1.14810E-03 0.00035  2.79033E-03 0.00042 ];
INF_FISS                  (idx, [1:   4]) = [  3.26274E-04 0.00040  1.81868E-03 0.00051 ];
INF_NSF                   (idx, [1:   4]) = [  7.96560E-04 0.00040  4.43158E-03 0.00051 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44138E+00 4.3E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02320E+02 3.6E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.14385E-07 0.00012  2.10983E-06 4.5E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37765E-01 1.7E-05  3.84889E-01 3.9E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13622E-02 0.00020  1.12888E-02 0.00045 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48769E-03 0.00144 -4.43577E-03 0.00082 ];
INF_SCATT3                (idx, [1:   4]) = [  4.74159E-04 0.00739 -4.06431E-03 0.00079 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.46326E-04 0.01888 -4.65405E-03 0.00057 ];
INF_SCATT5                (idx, [1:   4]) = [  1.11796E-04 0.02232 -2.72097E-03 0.00102 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.22250E-04 0.00766 -4.42272E-03 0.00057 ];
INF_SCATT7                (idx, [1:   4]) = [  1.23786E-04 0.02004 -6.31065E-04 0.00299 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37799E-01 1.7E-05  3.84889E-01 3.9E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13714E-02 0.00020  1.12888E-02 0.00045 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48942E-03 0.00144 -4.43577E-03 0.00082 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.74400E-04 0.00738 -4.06431E-03 0.00079 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.46331E-04 0.01889 -4.65405E-03 0.00057 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.11729E-04 0.02232 -2.72097E-03 0.00102 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.22277E-04 0.00766 -4.42272E-03 0.00057 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.23726E-04 0.02006 -6.31065E-04 0.00299 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00955E-01 3.6E-05  3.74955E-01 4.1E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10759E+00 3.6E-05  8.88996E-01 4.1E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.11358E-03 0.00037  2.79033E-03 0.00042 ];
INF_REMXS                 (idx, [1:   4]) = [  5.36232E-03 0.00013  4.36942E-03 0.00040 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33551E-01 1.7E-05  4.21355E-03 0.00021  1.57864E-03 0.00048  3.83310E-01 3.9E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23099E-02 0.00019 -9.47650E-04 0.00050 -1.67189E-04 0.00167  1.14560E-02 0.00044 ];
INF_S2                    (idx, [1:   8]) = [  2.65351E-03 0.00133 -1.65814E-04 0.00246 -1.02889E-04 0.00248 -4.33288E-03 0.00083 ];
INF_S3                    (idx, [1:   8]) = [  5.16988E-04 0.00673 -4.28282E-05 0.00789 -3.68678E-05 0.00621 -4.02745E-03 0.00080 ];
INF_S4                    (idx, [1:   8]) = [ -1.11726E-04 0.02479 -3.46004E-05 0.00823 -2.33292E-05 0.00852 -4.63072E-03 0.00057 ];
INF_S5                    (idx, [1:   8]) = [  1.14806E-04 0.02121 -3.00930E-06 0.08433 -5.84025E-06 0.02804 -2.71513E-03 0.00102 ];
INF_S6                    (idx, [1:   8]) = [ -2.99017E-04 0.00821 -2.32329E-05 0.01016 -1.62068E-05 0.00980 -4.40651E-03 0.00057 ];
INF_S7                    (idx, [1:   8]) = [  1.02548E-04 0.02435  2.12380E-05 0.01047  6.63991E-06 0.01848 -6.37705E-04 0.00297 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33586E-01 1.7E-05  4.21355E-03 0.00021  1.57864E-03 0.00048  3.83310E-01 3.9E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23190E-02 0.00019 -9.47650E-04 0.00050 -1.67189E-04 0.00167  1.14560E-02 0.00044 ];
INF_SP2                   (idx, [1:   8]) = [  2.65523E-03 0.00133 -1.65814E-04 0.00246 -1.02889E-04 0.00248 -4.33288E-03 0.00083 ];
INF_SP3                   (idx, [1:   8]) = [  5.17228E-04 0.00672 -4.28282E-05 0.00789 -3.68678E-05 0.00621 -4.02745E-03 0.00080 ];
INF_SP4                   (idx, [1:   8]) = [ -1.11730E-04 0.02481 -3.46004E-05 0.00823 -2.33292E-05 0.00852 -4.63072E-03 0.00057 ];
INF_SP5                   (idx, [1:   8]) = [  1.14739E-04 0.02121 -3.00930E-06 0.08433 -5.84025E-06 0.02804 -2.71513E-03 0.00102 ];
INF_SP6                   (idx, [1:   8]) = [ -2.99044E-04 0.00821 -2.32329E-05 0.01016 -1.62068E-05 0.00980 -4.40651E-03 0.00057 ];
INF_SP7                   (idx, [1:   8]) = [  1.02488E-04 0.02437  2.12380E-05 0.01047  6.63991E-06 0.01848 -6.37705E-04 0.00297 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98787E-01 0.00019  4.26002E-01 0.00065 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99272E-01 0.00034  4.21424E-01 0.00100 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99236E-01 0.00034  4.21394E-01 0.00098 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97864E-01 0.00035  4.35564E-01 0.00094 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11563E+00 0.00019  7.82502E-01 0.00065 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11383E+00 0.00034  7.91048E-01 0.00100 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11396E+00 0.00034  7.91100E-01 0.00098 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11909E+00 0.00035  7.65359E-01 0.00094 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.58138E-03 0.00381  2.05159E-04 0.02090  1.11254E-03 0.00905  1.05331E-03 0.00965  3.00468E-03 0.00557  8.94770E-04 0.01022  3.10925E-04 0.01764 ];
LAMBDA                    (idx, [1:  14]) = [  7.59119E-01 0.00908  1.24906E-02 1.9E-07  3.18184E-02 3.0E-05  1.09397E-01 3.3E-05  3.17104E-01 3.1E-05  1.35371E+00 2.6E-05  8.64331E+00 0.00019 ];

