
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input23' ;
HOSTNAME                  (idx, [1: 12])  = 'n0051.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:35 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00764E+00  1.00014E+00  9.97246E-01  1.00422E+00  1.00082E+00  9.96785E-01  1.00461E+00  9.94032E-01  9.96587E-01  1.00370E+00  1.00564E+00  1.00232E+00  9.90982E-01  1.00005E+00  1.00136E+00  9.92524E-01  1.00179E+00  9.99348E-01  9.96032E-01  1.00417E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.22305E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.27769E-01 2.5E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83445E-01 4.8E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87578E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.48160E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.85898E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.85884E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.60508E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.63159E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001859 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00032 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00032 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.79888E+02 ;
RUNNING_TIME              (idx, 1)        =  2.93301E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.17050E-01  1.17050E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.15000E-03  1.15000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.92119E+01  2.92119E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.93299E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77105 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98392E+01 0.00014 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87132E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4754.42;
MEMSIZE                   (idx, 1)        = 788.03;
XS_MEMSIZE                (idx, 1)        = 470.98;
MAT_MEMSIZE               (idx, 1)        = 180.16;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.39;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 151894 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35250E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.39398E-01 0.00064 ];
U235_FISS                 (idx, [1:   4]) = [  7.27147E+18 0.00020  9.98361E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.19435E+16 0.00770  1.63928E-03 0.00767 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71338E+18 0.00061  2.78019E-01 0.00053 ];
U238_CAPT                 (idx, [1:   4]) = [  2.15091E+18 0.00064  3.48983E-01 0.00048 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001859 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80440E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001859 2.01804E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9033060 9.11340E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10674897 1.07708E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 293902 2.96227E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001859 2.01804E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -3.65078E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.16508E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34471E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35250E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.98894E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.00344E+17 0.00215 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36475E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.53610E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.4E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31273E+00 0.00022  1.30400E+00 0.00022  8.65887E-03 0.00364 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31233E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31246E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31233E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33206E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80749E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80753E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.82794E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.82556E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.56470E-03 0.00590 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.52630E-03 0.00150 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.05237E-03 0.00282  1.62982E-04 0.01564  8.39708E-04 0.00691  8.19501E-04 0.00692  2.31666E-03 0.00409  6.77333E-04 0.00756  2.36182E-04 0.01305 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.52665E-01 0.00670  1.08605E-02 0.00866  3.18191E-02 2.1E-05  1.09399E-01 2.8E-05  3.17094E-01 2.1E-05  1.35371E+00 2.0E-05  8.18553E+00 0.00529 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.59758E-03 0.00362  2.13857E-04 0.02055  1.10132E-03 0.00922  1.07349E-03 0.00909  3.00303E-03 0.00549  8.95371E-04 0.01008  3.10508E-04 0.01691 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.57447E-01 0.00889  1.24906E-02 2.3E-07  3.18185E-02 3.2E-05  1.09399E-01 4.0E-05  3.17096E-01 2.9E-05  1.35374E+00 2.4E-05  8.64351E+00 0.00022 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.72618E-04 0.00063  3.72721E-04 0.00063  3.57312E-04 0.00757 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.89096E-04 0.00059  4.89233E-04 0.00059  4.68961E-04 0.00756 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.60099E-03 0.00372  2.17255E-04 0.02100  1.09711E-03 0.00956  1.07083E-03 0.00951  3.01717E-03 0.00559  8.83634E-04 0.01037  3.15004E-04 0.01734 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.61539E-01 0.00922  1.24906E-02 1.5E-07  3.18193E-02 2.7E-05  1.09400E-01 3.9E-05  3.17090E-01 2.9E-05  1.35369E+00 3.1E-05  8.64339E+00 0.00022 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.57571E-04 0.00144  3.57651E-04 0.00144  3.46260E-04 0.01727 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.69337E-04 0.00141  4.69443E-04 0.00142  4.54450E-04 0.01726 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.68210E-03 0.01117  1.95500E-04 0.06509  1.09775E-03 0.02746  1.07976E-03 0.02816  3.10220E-03 0.01655  9.09964E-04 0.03128  2.96926E-04 0.05374 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.53899E-01 0.02793  1.24906E-02 7.5E-09  3.18210E-02 4.9E-05  1.09408E-01 0.00011  3.17124E-01 9.4E-05  1.35371E+00 6.0E-05  8.64749E+00 0.00059 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.70224E-03 0.01095  1.94803E-04 0.06307  1.10523E-03 0.02678  1.08429E-03 0.02711  3.09583E-03 0.01619  9.22657E-04 0.03028  2.99440E-04 0.05210 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.54015E-01 0.02707  1.24906E-02 7.5E-09  3.18210E-02 4.7E-05  1.09408E-01 0.00011  3.17135E-01 9.6E-05  1.35372E+00 5.9E-05  8.64774E+00 0.00060 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.87800E+01 0.01134 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.65564E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79835E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.67657E-03 0.00209 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.82691E+01 0.00212 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08871E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59225E-05 8.4E-05  3.59220E-05 8.4E-05  3.59895E-05 0.00108 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.52510E-04 0.00040  7.52696E-04 0.00040  7.23797E-04 0.00495 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.10620E-01 0.00015  7.09632E-01 0.00015  9.20285E-01 0.00447 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08314E+01 0.00664 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.85884E+02 0.00023  1.78437E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.95353E+04 0.00171  3.79531E+05 0.00091  8.96654E+05 0.00037  1.66429E+06 0.00028  1.87359E+06 0.00018  1.94209E+06 0.00012  1.45890E+06 0.00014  1.14292E+06 0.00017  1.63000E+06 0.00014  1.60467E+06 0.00011  1.75036E+06 9.8E-05  1.74195E+06 0.00010  1.89931E+06 0.00011  1.85585E+06 1.0E-04  1.86311E+06 0.00010  1.63593E+06 0.00012  1.64697E+06 0.00012  1.63839E+06 9.8E-05  1.62970E+06 0.00011  3.22853E+06 7.9E-05  3.17413E+06 8.1E-05  2.32641E+06 0.00011  1.51654E+06 0.00014  1.80072E+06 0.00012  1.72611E+06 0.00015  1.46721E+06 0.00014  2.59468E+06 0.00015  5.54072E+05 0.00025  6.94618E+05 0.00026  6.27630E+05 0.00025  3.69493E+05 0.00036  6.47100E+05 0.00027  4.47386E+05 0.00030  3.92234E+05 0.00036  7.69927E+04 0.00068  7.65892E+04 0.00073  7.89989E+04 0.00069  8.16667E+04 0.00071  8.12974E+04 0.00077  8.07423E+04 0.00064  8.37120E+04 0.00063  7.94338E+04 0.00066  1.52213E+05 0.00045  2.50849E+05 0.00045  3.38162E+05 0.00036  1.06875E+06 0.00029  1.61976E+06 0.00033  2.54671E+06 0.00041  2.08598E+06 0.00047  1.65140E+06 0.00050  1.31200E+06 0.00053  1.50227E+06 0.00053  2.66914E+06 0.00051  3.25142E+06 0.00052  5.36258E+06 0.00053  6.60221E+06 0.00055  7.63562E+06 0.00054  3.98584E+06 0.00057  2.52958E+06 0.00057  1.67358E+06 0.00059  1.41709E+06 0.00063  1.34069E+06 0.00063  1.03203E+06 0.00066  6.80722E+05 0.00073  5.78365E+05 0.00081  5.27747E+05 0.00078  4.37332E+05 0.00081  2.99075E+05 0.00086  1.96348E+05 0.00087  6.20956E+04 0.00139 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33219E+00 0.00021 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.54017E+21 0.00020  3.44885E+21 0.00058 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38911E-01 1.5E-05  3.87468E-01 4.6E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.08072E-04 0.00039  9.58117E-04 0.00040 ];
INF_ABS                   (idx, [1:   4]) = [  1.13871E-03 0.00034  2.73039E-03 0.00048 ];
INF_FISS                  (idx, [1:   4]) = [  3.30640E-04 0.00042  1.77227E-03 0.00058 ];
INF_NSF                   (idx, [1:   4]) = [  8.07182E-04 0.00042  4.31850E-03 0.00058 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44127E+00 4.4E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.4E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.16682E-07 9.6E-05  2.08665E-06 4.6E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37772E-01 1.5E-05  3.84738E-01 4.8E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13570E-02 0.00021  1.14135E-02 0.00038 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48354E-03 0.00156 -4.36127E-03 0.00085 ];
INF_SCATT3                (idx, [1:   4]) = [  4.66429E-04 0.00709 -4.00283E-03 0.00087 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.58400E-04 0.01835 -4.64918E-03 0.00057 ];
INF_SCATT5                (idx, [1:   4]) = [  1.13481E-04 0.02361 -2.69503E-03 0.00100 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.41135E-04 0.00646 -4.47716E-03 0.00047 ];
INF_SCATT7                (idx, [1:   4]) = [  1.39193E-04 0.01474 -6.10039E-04 0.00358 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37807E-01 1.5E-05  3.84738E-01 4.8E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13661E-02 0.00021  1.14135E-02 0.00038 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48521E-03 0.00156 -4.36127E-03 0.00085 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.66716E-04 0.00708 -4.00283E-03 0.00087 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.58309E-04 0.01836 -4.64918E-03 0.00057 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.13512E-04 0.02359 -2.69503E-03 0.00100 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.41125E-04 0.00647 -4.47716E-03 0.00047 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.39163E-04 0.01475 -6.10039E-04 0.00358 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01027E-01 3.4E-05  3.74549E-01 4.9E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10732E+00 3.4E-05  8.89960E-01 4.9E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.10424E-03 0.00035  2.73039E-03 0.00048 ];
INF_REMXS                 (idx, [1:   4]) = [  5.64714E-03 0.00014  4.58727E-03 0.00044 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33264E-01 1.4E-05  4.50833E-03 0.00020  1.85727E-03 0.00047  3.82881E-01 4.9E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23461E-02 0.00020 -9.89146E-04 0.00050 -2.09047E-04 0.00138  1.16225E-02 0.00037 ];
INF_S2                    (idx, [1:   8]) = [  2.66594E-03 0.00143 -1.82400E-04 0.00226 -1.17491E-04 0.00217 -4.24378E-03 0.00088 ];
INF_S3                    (idx, [1:   8]) = [  5.15410E-04 0.00641 -4.89812E-05 0.00713 -4.23500E-05 0.00476 -3.96048E-03 0.00088 ];
INF_S4                    (idx, [1:   8]) = [ -1.20655E-04 0.02403 -3.77450E-05 0.00765 -2.70375E-05 0.00719 -4.62214E-03 0.00058 ];
INF_S5                    (idx, [1:   8]) = [  1.16656E-04 0.02269 -3.17479E-06 0.07744 -6.51150E-06 0.02443 -2.68852E-03 0.00101 ];
INF_S6                    (idx, [1:   8]) = [ -3.15371E-04 0.00707 -2.57648E-05 0.00960 -1.84585E-05 0.00789 -4.45870E-03 0.00047 ];
INF_S7                    (idx, [1:   8]) = [  1.16882E-04 0.01747  2.23113E-05 0.01018  7.94772E-06 0.01824 -6.17986E-04 0.00351 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33298E-01 1.4E-05  4.50833E-03 0.00020  1.85727E-03 0.00047  3.82881E-01 4.9E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23552E-02 0.00020 -9.89146E-04 0.00050 -2.09047E-04 0.00138  1.16225E-02 0.00037 ];
INF_SP2                   (idx, [1:   8]) = [  2.66761E-03 0.00143 -1.82400E-04 0.00226 -1.17491E-04 0.00217 -4.24378E-03 0.00088 ];
INF_SP3                   (idx, [1:   8]) = [  5.15698E-04 0.00640 -4.89812E-05 0.00713 -4.23500E-05 0.00476 -3.96048E-03 0.00088 ];
INF_SP4                   (idx, [1:   8]) = [ -1.20564E-04 0.02405 -3.77450E-05 0.00765 -2.70375E-05 0.00719 -4.62214E-03 0.00058 ];
INF_SP5                   (idx, [1:   8]) = [  1.16687E-04 0.02267 -3.17479E-06 0.07744 -6.51150E-06 0.02443 -2.68852E-03 0.00101 ];
INF_SP6                   (idx, [1:   8]) = [ -3.15361E-04 0.00707 -2.57648E-05 0.00960 -1.84585E-05 0.00789 -4.45870E-03 0.00047 ];
INF_SP7                   (idx, [1:   8]) = [  1.16852E-04 0.01749  2.23113E-05 0.01018  7.94772E-06 0.01824 -6.17986E-04 0.00351 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98769E-01 0.00021  4.25664E-01 0.00065 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99252E-01 0.00032  4.21132E-01 0.00095 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99176E-01 0.00037  4.21158E-01 0.00098 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97890E-01 0.00036  4.35077E-01 0.00109 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11570E+00 0.00021  7.83124E-01 0.00065 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11390E+00 0.00032  7.91588E-01 0.00095 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11419E+00 0.00037  7.91545E-01 0.00098 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11900E+00 0.00036  7.66239E-01 0.00109 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.59758E-03 0.00362  2.13857E-04 0.02055  1.10132E-03 0.00922  1.07349E-03 0.00909  3.00303E-03 0.00549  8.95371E-04 0.01008  3.10508E-04 0.01691 ];
LAMBDA                    (idx, [1:  14]) = [  7.57447E-01 0.00889  1.24906E-02 2.3E-07  3.18185E-02 3.2E-05  1.09399E-01 4.0E-05  3.17096E-01 2.9E-05  1.35374E+00 2.4E-05  8.64351E+00 0.00022 ];

