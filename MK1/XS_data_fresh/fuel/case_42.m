
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input41' ;
HOSTNAME                  (idx, [1: 12])  = 'n0069.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:53 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00181E+00  1.00425E+00  1.00180E+00  9.91736E-01  1.00067E+00  9.95532E-01  9.98351E-01  1.00448E+00  9.99738E-01  9.97124E-01  9.98069E-01  9.96020E-01  1.00505E+00  1.00134E+00  1.00190E+00  9.95310E-01  9.95752E-01  1.00763E+00  1.00020E+00  1.00326E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 9.3E-10  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.36034E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.26397E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83248E-01 4.8E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87404E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.65560E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84417E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84403E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.57227E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.69721E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001799 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.85989E+02 ;
RUNNING_TIME              (idx, 1)        =  2.96351E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.23850E-01  1.23850E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.16667E-03  1.16667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.95101E+01  2.95101E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.96347E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77348 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98473E+01 0.00012 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86965E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4756.58;
MEMSIZE                   (idx, 1)        = 790.49;
XS_MEMSIZE                (idx, 1)        = 472.56;
MAT_MEMSIZE               (idx, 1)        = 181.02;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.10;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 152627 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35939E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.48078E-01 0.00062 ];
U235_FISS                 (idx, [1:   4]) = [  7.27076E+18 0.00021  9.98343E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20658E+16 0.00748  1.65650E-03 0.00747 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71037E+18 0.00060  2.74465E-01 0.00053 ];
U238_CAPT                 (idx, [1:   4]) = [  2.22798E+18 0.00062  3.57491E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001799 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80428E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001799 2.01804E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9087447 9.16859E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10620165 1.07154E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 294187 2.96473E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001799 2.01804E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.64496E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 5.9E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.23184E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.35139E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35939E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.96957E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.01533E+17 0.00215 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.37154E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.52874E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.3E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.30582E+00 0.00022  1.29726E+00 0.00022  8.64313E-03 0.00382 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30585E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.30582E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30585E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32550E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81048E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81047E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.74486E-07 0.00082 ];
IMP_EALF                  (idx, [1:   2]) = [  2.74379E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.61652E-03 0.00566 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.58154E-03 0.00146 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.10653E-03 0.00290  1.67606E-04 0.01486  8.49719E-04 0.00676  8.16459E-04 0.00715  2.34683E-03 0.00422  6.81033E-04 0.00735  2.44885E-04 0.01262 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.64703E-01 0.00668  1.11228E-02 0.00784  3.18190E-02 2.0E-05  1.09395E-01 2.3E-05  3.17096E-01 2.1E-05  1.35370E+00 1.8E-05  8.28498E+00 0.00466 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.64244E-03 0.00374  2.19074E-04 0.02081  1.11859E-03 0.00915  1.06732E-03 0.00942  3.04030E-03 0.00550  8.81804E-04 0.00981  3.15350E-04 0.01714 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.59630E-01 0.00904  1.24906E-02 2.4E-07  3.18182E-02 2.8E-05  1.09394E-01 2.9E-05  3.17088E-01 2.7E-05  1.35369E+00 2.6E-05  8.64345E+00 0.00018 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.74079E-04 0.00062  3.74155E-04 0.00062  3.62361E-04 0.00740 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.88429E-04 0.00058  4.88529E-04 0.00058  4.73117E-04 0.00740 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.62408E-03 0.00389  2.14696E-04 0.02080  1.11074E-03 0.00935  1.06621E-03 0.00961  3.04007E-03 0.00586  8.77662E-04 0.01017  3.14695E-04 0.01742 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.60492E-01 0.00928  1.24906E-02 3.1E-07  3.18176E-02 3.3E-05  1.09393E-01 3.1E-05  3.17098E-01 3.0E-05  1.35369E+00 2.7E-05  8.64312E+00 0.00017 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.58941E-04 0.00151  3.58995E-04 0.00151  3.52284E-04 0.01761 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.68653E-04 0.00148  4.68724E-04 0.00149  4.60000E-04 0.01762 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.75051E-03 0.01109  2.27345E-04 0.06074  1.12376E-03 0.02662  1.11105E-03 0.02810  3.06771E-03 0.01656  9.03650E-04 0.03044  3.16991E-04 0.05293 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.50450E-01 0.02760  1.24906E-02 6.9E-07  3.18179E-02 7.7E-05  1.09393E-01 7.7E-05  3.17101E-01 8.8E-05  1.35372E+00 5.9E-05  8.64614E+00 0.00056 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.72656E-03 0.01077  2.26122E-04 0.05933  1.12000E-03 0.02619  1.10449E-03 0.02754  3.05230E-03 0.01604  9.04747E-04 0.02974  3.18902E-04 0.05164 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.57748E-01 0.02692  1.24906E-02 6.9E-07  3.18181E-02 7.3E-05  1.09392E-01 7.4E-05  3.17098E-01 8.3E-05  1.35372E+00 6.0E-05  8.64609E+00 0.00056 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.88890E+01 0.01120 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.66942E-04 0.00037 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79112E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.66083E-03 0.00217 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.81576E+01 0.00221 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08814E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58456E-05 8.6E-05  3.58446E-05 8.6E-05  3.60078E-05 0.00107 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.50655E-04 0.00039  7.50827E-04 0.00039  7.24228E-04 0.00480 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.06395E-01 0.00015  7.05429E-01 0.00015  9.11084E-01 0.00464 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.09112E+01 0.00644 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84403E+02 0.00023  1.77549E+02 0.00025 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.93173E+04 0.00173  3.79421E+05 0.00077  8.97103E+05 0.00042  1.66298E+06 0.00028  1.87352E+06 0.00018  1.94143E+06 0.00014  1.45920E+06 0.00014  1.14307E+06 0.00015  1.62940E+06 0.00012  1.60428E+06 0.00011  1.75029E+06 9.9E-05  1.74188E+06 0.00010  1.89936E+06 9.8E-05  1.85573E+06 0.00010  1.86303E+06 0.00011  1.63593E+06 0.00010  1.64659E+06 0.00011  1.63835E+06 0.00012  1.62975E+06 0.00011  3.22884E+06 8.7E-05  3.17376E+06 9.5E-05  2.32517E+06 0.00012  1.51445E+06 0.00013  1.79620E+06 0.00013  1.71894E+06 0.00015  1.46039E+06 0.00018  2.57711E+06 0.00016  5.49535E+05 0.00026  6.88846E+05 0.00024  6.21530E+05 0.00025  3.65859E+05 0.00038  6.39464E+05 0.00026  4.41749E+05 0.00029  3.86377E+05 0.00038  7.57632E+04 0.00064  7.51296E+04 0.00065  7.74966E+04 0.00065  8.01697E+04 0.00065  7.95688E+04 0.00065  7.91259E+04 0.00072  8.18234E+04 0.00067  7.76088E+04 0.00064  1.48544E+05 0.00051  2.43778E+05 0.00046  3.26993E+05 0.00043  1.02356E+06 0.00033  1.54298E+06 0.00039  2.43977E+06 0.00044  2.01373E+06 0.00045  1.60166E+06 0.00048  1.27606E+06 0.00047  1.46593E+06 0.00050  2.61170E+06 0.00050  3.19481E+06 0.00051  5.29091E+06 0.00053  6.54459E+06 0.00053  7.60218E+06 0.00053  3.97954E+06 0.00055  2.52963E+06 0.00058  1.67435E+06 0.00059  1.41938E+06 0.00060  1.34425E+06 0.00060  1.03383E+06 0.00062  6.81854E+05 0.00071  5.79605E+05 0.00072  5.28809E+05 0.00075  4.37706E+05 0.00083  2.99646E+05 0.00090  1.97288E+05 0.00094  6.22246E+04 0.00137 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32547E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.54721E+21 0.00020  3.42242E+21 0.00053 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38942E-01 1.7E-05  3.87578E-01 4.1E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.27516E-04 0.00039  9.63197E-04 0.00037 ];
INF_ABS                   (idx, [1:   4]) = [  1.15552E-03 0.00033  2.75121E-03 0.00042 ];
INF_FISS                  (idx, [1:   4]) = [  3.28002E-04 0.00041  1.78801E-03 0.00052 ];
INF_NSF                   (idx, [1:   4]) = [  8.00764E-04 0.00041  4.35685E-03 0.00052 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44133E+00 4.0E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.5E-07  2.02270E+02 3.0E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.15230E-07 9.6E-05  2.09670E-06 4.5E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37786E-01 1.7E-05  3.84827E-01 4.3E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13606E-02 0.00024  1.13615E-02 0.00042 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48584E-03 0.00138 -4.39585E-03 0.00094 ];
INF_SCATT3                (idx, [1:   4]) = [  4.73546E-04 0.00720 -4.03234E-03 0.00080 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.45565E-04 0.01924 -4.65842E-03 0.00063 ];
INF_SCATT5                (idx, [1:   4]) = [  1.20805E-04 0.01772 -2.70839E-03 0.00092 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.30147E-04 0.00697 -4.45770E-03 0.00065 ];
INF_SCATT7                (idx, [1:   4]) = [  1.31582E-04 0.01727 -6.20858E-04 0.00349 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37821E-01 1.7E-05  3.84827E-01 4.3E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13698E-02 0.00024  1.13615E-02 0.00042 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48759E-03 0.00138 -4.39585E-03 0.00094 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.73869E-04 0.00719 -4.03234E-03 0.00080 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.45500E-04 0.01929 -4.65842E-03 0.00063 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.20828E-04 0.01770 -2.70839E-03 0.00092 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.30134E-04 0.00697 -4.45770E-03 0.00065 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.31558E-04 0.01726 -6.20858E-04 0.00349 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01009E-01 3.7E-05  3.74741E-01 4.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10739E+00 3.7E-05  8.89502E-01 4.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.12095E-03 0.00034  2.75121E-03 0.00042 ];
INF_REMXS                 (idx, [1:   4]) = [  5.50296E-03 0.00015  4.46484E-03 0.00041 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33439E-01 1.6E-05  4.34723E-03 0.00022  1.71369E-03 0.00047  3.83114E-01 4.3E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23246E-02 0.00023 -9.63965E-04 0.00045 -1.84856E-04 0.00149  1.15464E-02 0.00042 ];
INF_S2                    (idx, [1:   8]) = [  2.65968E-03 0.00128 -1.73849E-04 0.00240 -1.11045E-04 0.00240 -4.28480E-03 0.00096 ];
INF_S3                    (idx, [1:   8]) = [  5.19617E-04 0.00656 -4.60716E-05 0.00744 -3.94757E-05 0.00479 -3.99286E-03 0.00082 ];
INF_S4                    (idx, [1:   8]) = [ -1.09446E-04 0.02547 -3.61187E-05 0.00892 -2.56401E-05 0.00688 -4.63278E-03 0.00064 ];
INF_S5                    (idx, [1:   8]) = [  1.23587E-04 0.01726 -2.78139E-06 0.09281 -6.23650E-06 0.02811 -2.70215E-03 0.00091 ];
INF_S6                    (idx, [1:   8]) = [ -3.05882E-04 0.00744 -2.42652E-05 0.01025 -1.71409E-05 0.00836 -4.44056E-03 0.00064 ];
INF_S7                    (idx, [1:   8]) = [  1.10673E-04 0.02033  2.09089E-05 0.01021  7.17876E-06 0.01984 -6.28036E-04 0.00344 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33474E-01 1.6E-05  4.34723E-03 0.00022  1.71369E-03 0.00047  3.83114E-01 4.3E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23338E-02 0.00023 -9.63965E-04 0.00045 -1.84856E-04 0.00149  1.15464E-02 0.00042 ];
INF_SP2                   (idx, [1:   8]) = [  2.66144E-03 0.00128 -1.73849E-04 0.00240 -1.11045E-04 0.00240 -4.28480E-03 0.00096 ];
INF_SP3                   (idx, [1:   8]) = [  5.19940E-04 0.00656 -4.60716E-05 0.00744 -3.94757E-05 0.00479 -3.99286E-03 0.00082 ];
INF_SP4                   (idx, [1:   8]) = [ -1.09381E-04 0.02554 -3.61187E-05 0.00892 -2.56401E-05 0.00688 -4.63278E-03 0.00064 ];
INF_SP5                   (idx, [1:   8]) = [  1.23609E-04 0.01725 -2.78139E-06 0.09281 -6.23650E-06 0.02811 -2.70215E-03 0.00091 ];
INF_SP6                   (idx, [1:   8]) = [ -3.05869E-04 0.00744 -2.42652E-05 0.01025 -1.71409E-05 0.00836 -4.44056E-03 0.00064 ];
INF_SP7                   (idx, [1:   8]) = [  1.10649E-04 0.02033  2.09089E-05 0.01021  7.17876E-06 0.01984 -6.28036E-04 0.00344 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98815E-01 0.00019  4.26100E-01 0.00057 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99360E-01 0.00033  4.21680E-01 0.00089 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99288E-01 0.00035  4.21637E-01 0.00095 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97810E-01 0.00035  4.35336E-01 0.00088 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11552E+00 0.00019  7.82314E-01 0.00057 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11350E+00 0.00032  7.90550E-01 0.00089 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11377E+00 0.00035  7.90640E-01 0.00095 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11930E+00 0.00035  7.65751E-01 0.00088 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.64244E-03 0.00374  2.19074E-04 0.02081  1.11859E-03 0.00915  1.06732E-03 0.00942  3.04030E-03 0.00550  8.81804E-04 0.00981  3.15350E-04 0.01714 ];
LAMBDA                    (idx, [1:  14]) = [  7.59630E-01 0.00904  1.24906E-02 2.4E-07  3.18182E-02 2.8E-05  1.09394E-01 2.9E-05  3.17088E-01 2.7E-05  1.35369E+00 2.6E-05  8.64345E+00 0.00018 ];

