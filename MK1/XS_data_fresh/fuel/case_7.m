
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
WORKING_DIRECTORY         (idx, [1: 62])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input6' ;
HOSTNAME                  (idx, [1: 12])  = 'n0118.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1047.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:12 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:32 2018' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 2000 ;
SKIP                      (idx, 1)        = 500 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1515449712 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00448E+00  9.96670E-01  1.00429E+00  9.95227E-01  9.96456E-01  9.98262E-01  1.00387E+00  9.97148E-01  1.00017E+00  9.99469E-01  9.98343E-01  1.00132E+00  9.96554E-01  9.97031E-01  1.00569E+00  9.99654E-01  1.00166E+00  1.00287E+00  9.98528E-01  1.00230E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  6.93364E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.30664E-01 2.4E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81910E-01 4.6E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85877E-01 4.6E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.39075E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84771E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84757E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.61537E+02 0.00028  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.43241E+01 0.00028  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001841 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.79566E+02 ;
RUNNING_TIME              (idx, 1)        =  2.93341E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.36350E-01  1.36350E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.33334E-03  1.33334E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.91964E+01  2.91964E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.93338E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.75741 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98389E+01 0.00015 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86217E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.80 ;
ALLOC_MEMSIZE             (idx, 1)        = 4795.95;
MEMSIZE                   (idx, 1)        = 829.15;
XS_MEMSIZE                (idx, 1)        = 497.72;
MAT_MEMSIZE               (idx, 1)        = 194.53;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.79;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 164046 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.33032E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.20857E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.27168E+18 0.00020  9.98382E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.17828E+16 0.00749  1.61769E-03 0.00748 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70529E+18 0.00062  2.86799E-01 0.00053 ];
U238_CAPT                 (idx, [1:   4]) = [  1.98258E+18 0.00062  3.33416E-01 0.00048 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001841 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80162E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001841 2.01802E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8860249 8.93917E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10853311 1.09505E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 288281 2.90528E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001841 2.01802E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.16067E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.3E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.94407E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.32261E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.33032E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.83617E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.93273E+17 0.00226 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.34194E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.47939E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.4E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.3E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.33473E+00 0.00022  1.32572E+00 0.00021  8.82558E-03 0.00367 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.33463E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.33434E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.33463E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.35431E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81502E+01 4.3E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81503E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.62282E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.62149E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.34386E-03 0.00569 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.42364E-03 0.00150 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  4.98779E-03 0.00286  1.60694E-04 0.01595  8.19261E-04 0.00700  8.02920E-04 0.00693  2.30159E-03 0.00414  6.69401E-04 0.00768  2.33916E-04 0.01352 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.56144E-01 0.00696  1.08793E-02 0.00861  3.18186E-02 2.1E-05  1.09395E-01 2.4E-05  3.17094E-01 2.1E-05  1.35373E+00 1.9E-05  8.19569E+00 0.00524 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.59609E-03 0.00370  2.09632E-04 0.02130  1.07910E-03 0.00922  1.06770E-03 0.00952  3.04741E-03 0.00539  8.83029E-04 0.01011  3.09227E-04 0.01742 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.56812E-01 0.00897  1.24906E-02 2.9E-07  3.18185E-02 2.8E-05  1.09395E-01 3.2E-05  3.17104E-01 3.0E-05  1.35375E+00 2.5E-05  8.64706E+00 0.00025 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.62370E-04 0.00064  3.62472E-04 0.00064  3.47741E-04 0.00735 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.83614E-04 0.00059  4.83751E-04 0.00059  4.64042E-04 0.00734 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.61363E-03 0.00377  2.09891E-04 0.02183  1.07978E-03 0.00938  1.07261E-03 0.00931  3.06125E-03 0.00553  8.86684E-04 0.01030  3.03404E-04 0.01771 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.49751E-01 0.00916  1.24906E-02 3.1E-07  3.18195E-02 2.7E-05  1.09395E-01 3.3E-05  3.17105E-01 3.1E-05  1.35376E+00 2.6E-05  8.64615E+00 0.00026 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.47409E-04 0.00141  3.47498E-04 0.00141  3.36252E-04 0.01734 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.63648E-04 0.00139  4.63767E-04 0.00139  4.48786E-04 0.01734 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.60979E-03 0.01119  2.13302E-04 0.06425  1.12565E-03 0.02729  1.04246E-03 0.02809  3.04564E-03 0.01660  8.90977E-04 0.03049  2.91758E-04 0.05435 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.49004E-01 0.02849  1.24906E-02 4.5E-07  3.18185E-02 7.3E-05  1.09391E-01 6.4E-05  3.17087E-01 7.2E-05  1.35370E+00 6.3E-05  8.64548E+00 0.00051 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.63184E-03 0.01089  2.11826E-04 0.06191  1.13109E-03 0.02668  1.04263E-03 0.02730  3.06780E-03 0.01613  8.86452E-04 0.02943  2.92038E-04 0.05200 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.52262E-01 0.02779  1.24906E-02 4.9E-07  3.18185E-02 7.3E-05  1.09391E-01 6.6E-05  3.17087E-01 7.0E-05  1.35370E+00 6.3E-05  8.64552E+00 0.00051 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.90876E+01 0.01126 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.55380E-04 0.00037 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.74289E-04 0.00029 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.66084E-03 0.00204 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.87474E+01 0.00207 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.09249E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58296E-05 8.1E-05  3.58283E-05 8.2E-05  3.60188E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.40753E-04 0.00040  7.40954E-04 0.00040  7.10140E-04 0.00490 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.19996E-01 0.00014  7.18928E-01 0.00014  9.48832E-01 0.00439 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08077E+01 0.00676 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84757E+02 0.00023  1.76027E+02 0.00025 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.94989E+04 0.00170  3.79388E+05 0.00067  8.96593E+05 0.00041  1.66376E+06 0.00025  1.87328E+06 0.00020  1.94220E+06 0.00016  1.45882E+06 0.00014  1.14310E+06 0.00018  1.63016E+06 0.00014  1.60467E+06 0.00012  1.75082E+06 0.00011  1.74221E+06 0.00010  1.89930E+06 0.00011  1.85599E+06 9.6E-05  1.86315E+06 0.00011  1.63633E+06 0.00011  1.64692E+06 0.00013  1.63875E+06 0.00011  1.62969E+06 0.00011  3.22945E+06 9.4E-05  3.17530E+06 9.4E-05  2.32890E+06 1.0E-04  1.51966E+06 0.00011  1.80554E+06 0.00012  1.73703E+06 0.00014  1.47724E+06 0.00015  2.61999E+06 0.00014  5.59333E+05 0.00025  7.01568E+05 0.00025  6.32251E+05 0.00026  3.72154E+05 0.00033  6.50152E+05 0.00027  4.48074E+05 0.00037  3.91282E+05 0.00037  7.66718E+04 0.00072  7.60477E+04 0.00065  7.84200E+04 0.00065  8.10124E+04 0.00069  8.04528E+04 0.00065  7.97535E+04 0.00071  8.24555E+04 0.00067  7.82085E+04 0.00067  1.49322E+05 0.00052  2.44285E+05 0.00047  3.26130E+05 0.00045  1.01077E+06 0.00033  1.50696E+06 0.00037  2.38240E+06 0.00043  1.97342E+06 0.00049  1.57476E+06 0.00048  1.25857E+06 0.00053  1.44862E+06 0.00054  2.58789E+06 0.00054  3.17868E+06 0.00054  5.28631E+06 0.00052  6.57257E+06 0.00053  7.67137E+06 0.00055  4.02872E+06 0.00056  2.56488E+06 0.00057  1.69921E+06 0.00062  1.44177E+06 0.00060  1.36563E+06 0.00062  1.05162E+06 0.00065  6.93579E+05 0.00075  5.89767E+05 0.00070  5.37928E+05 0.00074  4.44750E+05 0.00074  3.05688E+05 0.00086  2.00721E+05 0.00101  6.32451E+04 0.00135 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.35401E+00 0.00023 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.48185E+21 0.00022  3.35435E+21 0.00059 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38818E-01 1.4E-05  3.87462E-01 4.9E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.69515E-04 0.00042  9.73290E-04 0.00040 ];
INF_ABS                   (idx, [1:   4]) = [  1.09871E-03 0.00038  2.80275E-03 0.00047 ];
INF_FISS                  (idx, [1:   4]) = [  3.29192E-04 0.00051  1.82946E-03 0.00057 ];
INF_NSF                   (idx, [1:   4]) = [  8.03665E-04 0.00050  4.45785E-03 0.00057 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44132E+00 4.3E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.4E-07  2.02270E+02 4.4E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.15743E-07 0.00010  2.10654E-06 4.5E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37719E-01 1.5E-05  3.84659E-01 5.1E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13467E-02 0.00021  1.13074E-02 0.00050 ];
INF_SCATT2                (idx, [1:   4]) = [  2.47930E-03 0.00172 -4.41759E-03 0.00105 ];
INF_SCATT3                (idx, [1:   4]) = [  4.69131E-04 0.00687 -4.04576E-03 0.00073 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.49646E-04 0.01667 -4.65254E-03 0.00069 ];
INF_SCATT5                (idx, [1:   4]) = [  1.14630E-04 0.02324 -2.71455E-03 0.00094 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.29412E-04 0.00659 -4.42635E-03 0.00047 ];
INF_SCATT7                (idx, [1:   4]) = [  1.25142E-04 0.01750 -6.24881E-04 0.00364 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37754E-01 1.5E-05  3.84659E-01 5.1E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13558E-02 0.00021  1.13074E-02 0.00050 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48092E-03 0.00172 -4.41759E-03 0.00105 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.69388E-04 0.00687 -4.04576E-03 0.00073 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.49588E-04 0.01669 -4.65254E-03 0.00069 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.14591E-04 0.02320 -2.71455E-03 0.00094 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.29381E-04 0.00658 -4.42635E-03 0.00047 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.25164E-04 0.01750 -6.24881E-04 0.00364 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00971E-01 3.0E-05  3.74711E-01 5.2E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10753E+00 3.0E-05  8.89576E-01 5.2E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.06429E-03 0.00039  2.80275E-03 0.00047 ];
INF_REMXS                 (idx, [1:   4]) = [  5.38614E-03 0.00014  4.41017E-03 0.00042 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33432E-01 1.4E-05  4.28734E-03 0.00024  1.60659E-03 0.00051  3.83052E-01 5.2E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23096E-02 0.00019 -9.62820E-04 0.00059 -1.70302E-04 0.00172  1.14777E-02 0.00049 ];
INF_S2                    (idx, [1:   8]) = [  2.64802E-03 0.00161 -1.68724E-04 0.00228 -1.05409E-04 0.00286 -4.31218E-03 0.00107 ];
INF_S3                    (idx, [1:   8]) = [  5.13280E-04 0.00635 -4.41493E-05 0.00779 -3.74271E-05 0.00471 -4.00834E-03 0.00073 ];
INF_S4                    (idx, [1:   8]) = [ -1.14809E-04 0.02206 -3.48368E-05 0.00877 -2.35714E-05 0.00780 -4.62896E-03 0.00069 ];
INF_S5                    (idx, [1:   8]) = [  1.17185E-04 0.02261 -2.55531E-06 0.10302 -5.85205E-06 0.02649 -2.70870E-03 0.00094 ];
INF_S6                    (idx, [1:   8]) = [ -3.05506E-04 0.00704 -2.39060E-05 0.00979 -1.63134E-05 0.00955 -4.41004E-03 0.00047 ];
INF_S7                    (idx, [1:   8]) = [  1.04176E-04 0.02072  2.09662E-05 0.01013  6.84824E-06 0.01932 -6.31729E-04 0.00354 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33466E-01 1.4E-05  4.28734E-03 0.00024  1.60659E-03 0.00051  3.83052E-01 5.2E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23186E-02 0.00019 -9.62820E-04 0.00059 -1.70302E-04 0.00172  1.14777E-02 0.00049 ];
INF_SP2                   (idx, [1:   8]) = [  2.64965E-03 0.00161 -1.68724E-04 0.00228 -1.05409E-04 0.00286 -4.31218E-03 0.00107 ];
INF_SP3                   (idx, [1:   8]) = [  5.13537E-04 0.00636 -4.41493E-05 0.00779 -3.74271E-05 0.00471 -4.00834E-03 0.00073 ];
INF_SP4                   (idx, [1:   8]) = [ -1.14751E-04 0.02209 -3.48368E-05 0.00877 -2.35714E-05 0.00780 -4.62896E-03 0.00069 ];
INF_SP5                   (idx, [1:   8]) = [  1.17147E-04 0.02256 -2.55531E-06 0.10302 -5.85205E-06 0.02649 -2.70870E-03 0.00094 ];
INF_SP6                   (idx, [1:   8]) = [ -3.05475E-04 0.00703 -2.39060E-05 0.00979 -1.63134E-05 0.00955 -4.41004E-03 0.00047 ];
INF_SP7                   (idx, [1:   8]) = [  1.04197E-04 0.02072  2.09662E-05 0.01013  6.84824E-06 0.01932 -6.31729E-04 0.00354 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98828E-01 0.00022  4.25629E-01 0.00059 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99395E-01 0.00037  4.21614E-01 0.00086 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99250E-01 0.00032  4.20798E-01 0.00100 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97848E-01 0.00034  4.34830E-01 0.00094 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11548E+00 0.00022  7.83182E-01 0.00059 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11337E+00 0.00037  7.90671E-01 0.00087 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11391E+00 0.00032  7.92225E-01 0.00100 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11915E+00 0.00034  7.66649E-01 0.00094 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.59609E-03 0.00370  2.09632E-04 0.02130  1.07910E-03 0.00922  1.06770E-03 0.00952  3.04741E-03 0.00539  8.83029E-04 0.01011  3.09227E-04 0.01742 ];
LAMBDA                    (idx, [1:  14]) = [  7.56812E-01 0.00897  1.24906E-02 2.9E-07  3.18185E-02 2.8E-05  1.09395E-01 3.2E-05  3.17104E-01 3.0E-05  1.35375E+00 2.5E-05  8.64706E+00 0.00025 ];

