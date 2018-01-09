
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input27' ;
HOSTNAME                  (idx, [1: 12])  = 'n0055.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:19 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00301E+00  1.00219E+00  9.97503E-01  9.97420E-01  1.00269E+00  9.94347E-01  9.97753E-01  1.00054E+00  1.00101E+00  9.99017E-01  1.00129E+00  1.00593E+00  9.96899E-01  9.96492E-01  1.00560E+00  9.97477E-01  1.00368E+00  9.99466E-01  9.98398E-01  9.99284E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.04984E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.29502E-01 2.5E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.84927E-01 5.0E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.88964E-01 5.0E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.64552E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84692E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84677E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.54440E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.46020E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002103 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.74376E+02 ;
RUNNING_TIME              (idx, 1)        =  2.90728E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.19900E-01  1.19900E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.06667E-03  1.06667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.89518E+01  2.89518E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.90723E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.75645 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98333E+01 0.00016 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86384E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4724.88;
MEMSIZE                   (idx, 1)        = 754.57;
XS_MEMSIZE                (idx, 1)        = 449.20;
MAT_MEMSIZE               (idx, 1)        = 168.47;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3970.31;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 142011 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.37812E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.64225E-01 0.00061 ];
U235_FISS                 (idx, [1:   4]) = [  7.27232E+18 0.00020  9.98335E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.21282E+16 0.00759  1.66466E-03 0.00758 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71628E+18 0.00061  2.67608E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.37496E+18 0.00061  3.70276E-01 0.00044 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002103 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79391E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002103 2.01794E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9225968 9.30771E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10478906 1.05721E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 297229 2.99564E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002103 2.01794E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -1.49012E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.41453E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.36966E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.37812E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.07325E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.06448E+17 0.00218 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.39030E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.56716E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43745E+00 6.4E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.28851E+00 0.00022  1.27993E+00 0.00022  8.51939E-03 0.00373 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.28822E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.28807E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.28822E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.30781E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80645E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80641E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.85764E-07 0.00081 ];
IMP_EALF                  (idx, [1:   2]) = [  2.85742E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.71623E-03 0.00579 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.70622E-03 0.00146 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.16812E-03 0.00276  1.62483E-04 0.01604  8.56412E-04 0.00686  8.31674E-04 0.00688  2.37835E-03 0.00401  6.91495E-04 0.00788  2.47712E-04 0.01235 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.65564E-01 0.00658  1.08793E-02 0.00861  3.18193E-02 1.9E-05  1.09398E-01 2.5E-05  3.17092E-01 2.0E-05  1.35368E+00 2.0E-05  8.28584E+00 0.00466 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.58625E-03 0.00382  2.09422E-04 0.02110  1.08442E-03 0.00927  1.05994E-03 0.00955  3.02743E-03 0.00554  8.90746E-04 0.01065  3.14292E-04 0.01680 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.66153E-01 0.00900  1.24906E-02 3.2E-07  3.18191E-02 2.6E-05  1.09402E-01 4.0E-05  3.17102E-01 3.2E-05  1.35365E+00 2.9E-05  8.64342E+00 0.00018 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.81844E-04 0.00066  3.81936E-04 0.00066  3.66043E-04 0.00756 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.91957E-04 0.00062  4.92076E-04 0.00062  4.71570E-04 0.00755 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.60818E-03 0.00379  2.12360E-04 0.02157  1.08725E-03 0.00944  1.05891E-03 0.00962  3.04410E-03 0.00552  8.92625E-04 0.01067  3.12922E-04 0.01725 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.62125E-01 0.00918  1.24906E-02 4.7E-07  3.18192E-02 3.0E-05  1.09399E-01 3.6E-05  3.17100E-01 3.2E-05  1.35365E+00 3.2E-05  8.64614E+00 0.00025 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.66073E-04 0.00147  3.66164E-04 0.00147  3.53291E-04 0.01772 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.71625E-04 0.00144  4.71743E-04 0.00144  4.55152E-04 0.01770 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.61150E-03 0.01139  2.06365E-04 0.06784  1.08146E-03 0.02816  1.02656E-03 0.02882  3.07373E-03 0.01721  8.99895E-04 0.03211  3.23492E-04 0.05327 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.67251E-01 0.02791  1.24906E-02 1.3E-06  3.18167E-02 9.1E-05  1.09405E-01 9.7E-05  3.17121E-01 9.6E-05  1.35381E+00 4.9E-05  8.64561E+00 0.00052 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.61242E-03 0.01102  2.08425E-04 0.06521  1.08591E-03 0.02723  1.02749E-03 0.02809  3.07501E-03 0.01671  8.94750E-04 0.03110  3.20847E-04 0.05145 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.66644E-01 0.02692  1.24906E-02 1.3E-06  3.18172E-02 8.6E-05  1.09405E-01 9.7E-05  3.17114E-01 8.9E-05  1.35381E+00 4.9E-05  8.64585E+00 0.00052 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.81521E+01 0.01157 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.74325E-04 0.00037 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.82273E-04 0.00029 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.61356E-03 0.00215 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.76722E+01 0.00217 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08568E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58808E-05 8.5E-05  3.58794E-05 8.5E-05  3.60907E-05 0.00107 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.58382E-04 0.00040  7.58613E-04 0.00040  7.21951E-04 0.00497 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  6.98567E-01 0.00015  6.97689E-01 0.00016  8.81428E-01 0.00435 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07576E+01 0.00669 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84677E+02 0.00023  1.78877E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.91850E+04 0.00167  3.79549E+05 0.00074  8.96504E+05 0.00041  1.66402E+06 0.00025  1.87337E+06 0.00019  1.94164E+06 0.00018  1.45911E+06 0.00015  1.14275E+06 0.00018  1.62964E+06 0.00014  1.60394E+06 0.00011  1.75054E+06 9.4E-05  1.74145E+06 0.00011  1.89929E+06 9.7E-05  1.85535E+06 0.00011  1.86276E+06 9.5E-05  1.63564E+06 9.7E-05  1.64661E+06 0.00011  1.63805E+06 0.00012  1.62897E+06 0.00011  3.22819E+06 8.9E-05  3.17231E+06 8.9E-05  2.32294E+06 0.00012  1.51152E+06 0.00012  1.79123E+06 0.00012  1.70911E+06 0.00015  1.45079E+06 0.00014  2.55286E+06 0.00017  5.44419E+05 0.00027  6.82520E+05 0.00026  6.16188E+05 0.00027  3.63140E+05 0.00031  6.35723E+05 0.00031  4.39426E+05 0.00037  3.85329E+05 0.00037  7.57335E+04 0.00069  7.52031E+04 0.00075  7.76713E+04 0.00072  8.02626E+04 0.00078  7.98547E+04 0.00074  7.93544E+04 0.00071  8.22508E+04 0.00068  7.80766E+04 0.00069  1.49660E+05 0.00047  2.46431E+05 0.00043  3.32242E+05 0.00039  1.05169E+06 0.00032  1.59745E+06 0.00037  2.51695E+06 0.00041  2.06345E+06 0.00046  1.63425E+06 0.00053  1.29926E+06 0.00055  1.48695E+06 0.00052  2.64185E+06 0.00052  3.21948E+06 0.00053  5.31085E+06 0.00053  6.53874E+06 0.00056  7.56722E+06 0.00058  3.94978E+06 0.00060  2.50758E+06 0.00058  1.65823E+06 0.00060  1.40518E+06 0.00065  1.32997E+06 0.00068  1.02331E+06 0.00065  6.75477E+05 0.00071  5.73767E+05 0.00065  5.23023E+05 0.00080  4.33270E+05 0.00080  2.96724E+05 0.00094  1.94926E+05 0.00094  6.13990E+04 0.00143 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.30766E+00 0.00020 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.59293E+21 0.00021  3.48039E+21 0.00062 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.39014E-01 1.6E-05  3.87637E-01 4.4E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.60003E-04 0.00037  9.55253E-04 0.00045 ];
INF_ABS                   (idx, [1:   4]) = [  1.18828E-03 0.00032  2.70891E-03 0.00051 ];
INF_FISS                  (idx, [1:   4]) = [  3.28280E-04 0.00043  1.75366E-03 0.00061 ];
INF_NSF                   (idx, [1:   4]) = [  8.01444E-04 0.00043  4.27313E-03 0.00061 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44134E+00 4.2E-06  2.43670E+00 1.9E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.5E-07  2.02270E+02 1.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.15489E-07 0.00010  2.08742E-06 4.6E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37825E-01 1.6E-05  3.84929E-01 4.7E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13682E-02 0.00020  1.14137E-02 0.00045 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48693E-03 0.00145 -4.37566E-03 0.00087 ];
INF_SCATT3                (idx, [1:   4]) = [  4.68119E-04 0.00740 -4.01547E-03 0.00089 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.49604E-04 0.02095 -4.65344E-03 0.00065 ];
INF_SCATT5                (idx, [1:   4]) = [  1.17392E-04 0.01919 -2.70065E-03 0.00091 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.35771E-04 0.00658 -4.47749E-03 0.00061 ];
INF_SCATT7                (idx, [1:   4]) = [  1.36564E-04 0.01572 -6.13954E-04 0.00312 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37859E-01 1.6E-05  3.84929E-01 4.7E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13774E-02 0.00020  1.14137E-02 0.00045 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48860E-03 0.00145 -4.37566E-03 0.00087 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.68382E-04 0.00740 -4.01547E-03 0.00089 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.49588E-04 0.02098 -4.65344E-03 0.00065 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.17354E-04 0.01920 -2.70065E-03 0.00091 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.35757E-04 0.00659 -4.47749E-03 0.00061 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.36526E-04 0.01573 -6.13954E-04 0.00312 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01045E-01 3.2E-05  3.74719E-01 4.7E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10725E+00 3.2E-05  8.89555E-01 4.7E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.15388E-03 0.00035  2.70891E-03 0.00051 ];
INF_REMXS                 (idx, [1:   4]) = [  5.64629E-03 0.00014  4.56035E-03 0.00045 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33367E-01 1.6E-05  4.45738E-03 0.00021  1.85175E-03 0.00045  3.83077E-01 4.8E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23455E-02 0.00019 -9.77225E-04 0.00048 -2.09020E-04 0.00174  1.16227E-02 0.00045 ];
INF_S2                    (idx, [1:   8]) = [  2.66725E-03 0.00135 -1.80321E-04 0.00218 -1.17980E-04 0.00236 -4.25768E-03 0.00089 ];
INF_S3                    (idx, [1:   8]) = [  5.16142E-04 0.00667 -4.80228E-05 0.00677 -4.22288E-05 0.00496 -3.97324E-03 0.00089 ];
INF_S4                    (idx, [1:   8]) = [ -1.12062E-04 0.02758 -3.75414E-05 0.00800 -2.67987E-05 0.00688 -4.62664E-03 0.00065 ];
INF_S5                    (idx, [1:   8]) = [  1.20903E-04 0.01865 -3.51139E-06 0.07398 -6.04857E-06 0.02659 -2.69460E-03 0.00090 ];
INF_S6                    (idx, [1:   8]) = [ -3.10107E-04 0.00704 -2.56635E-05 0.00986 -1.82962E-05 0.00845 -4.45919E-03 0.00061 ];
INF_S7                    (idx, [1:   8]) = [  1.14689E-04 0.01868  2.18750E-05 0.01152  8.01555E-06 0.02011 -6.21970E-04 0.00309 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33402E-01 1.6E-05  4.45738E-03 0.00021  1.85175E-03 0.00045  3.83077E-01 4.8E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23546E-02 0.00019 -9.77225E-04 0.00048 -2.09020E-04 0.00174  1.16227E-02 0.00045 ];
INF_SP2                   (idx, [1:   8]) = [  2.66892E-03 0.00135 -1.80321E-04 0.00218 -1.17980E-04 0.00236 -4.25768E-03 0.00089 ];
INF_SP3                   (idx, [1:   8]) = [  5.16405E-04 0.00666 -4.80228E-05 0.00677 -4.22288E-05 0.00496 -3.97324E-03 0.00089 ];
INF_SP4                   (idx, [1:   8]) = [ -1.12047E-04 0.02762 -3.75414E-05 0.00800 -2.67987E-05 0.00688 -4.62664E-03 0.00065 ];
INF_SP5                   (idx, [1:   8]) = [  1.20865E-04 0.01865 -3.51139E-06 0.07398 -6.04857E-06 0.02659 -2.69460E-03 0.00090 ];
INF_SP6                   (idx, [1:   8]) = [ -3.10094E-04 0.00704 -2.56635E-05 0.00986 -1.82962E-05 0.00845 -4.45919E-03 0.00061 ];
INF_SP7                   (idx, [1:   8]) = [  1.14651E-04 0.01870  2.18750E-05 0.01152  8.01555E-06 0.02011 -6.21970E-04 0.00309 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98905E-01 0.00022  4.26334E-01 0.00063 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99345E-01 0.00034  4.20562E-01 0.00095 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99326E-01 0.00035  4.22022E-01 0.00106 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.98055E-01 0.00034  4.36867E-01 0.00095 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11519E+00 0.00022  7.81891E-01 0.00063 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11355E+00 0.00034  7.92661E-01 0.00095 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11363E+00 0.00035  7.89936E-01 0.00106 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11838E+00 0.00034  7.63077E-01 0.00094 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.58625E-03 0.00382  2.09422E-04 0.02110  1.08442E-03 0.00927  1.05994E-03 0.00955  3.02743E-03 0.00554  8.90746E-04 0.01065  3.14292E-04 0.01680 ];
LAMBDA                    (idx, [1:  14]) = [  7.66153E-01 0.00900  1.24906E-02 3.2E-07  3.18191E-02 2.6E-05  1.09402E-01 4.0E-05  3.17102E-01 3.2E-05  1.35365E+00 2.9E-05  8.64342E+00 0.00018 ];

