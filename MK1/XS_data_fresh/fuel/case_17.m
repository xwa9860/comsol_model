
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input16' ;
HOSTNAME                  (idx, [1: 12])  = 'n0090.savio1' ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00580E+00  9.99907E-01  1.00204E+00  9.99983E-01  1.00228E+00  9.98106E-01  9.98521E-01  1.00401E+00  9.97251E-01  9.94267E-01  9.95800E-01  9.98219E-01  1.00098E+00  9.99907E-01  9.95409E-01  9.99317E-01  9.99241E-01  1.00350E+00  1.00104E+00  1.00442E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 6.6E-10  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.13760E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.28624E-01 2.5E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83599E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87697E-01 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.49345E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.85638E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.85624E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.59596E+02 0.00028  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.56278E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002112 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.85735E+02 ;
RUNNING_TIME              (idx, 1)        =  2.96343E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.20400E-01  1.20400E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.13333E-03  1.13333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.95128E+01  2.95128E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.96340E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76542 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98364E+01 0.00016 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86906E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4755.09;
MEMSIZE                   (idx, 1)        = 788.79;
XS_MEMSIZE                (idx, 1)        = 471.46;
MAT_MEMSIZE               (idx, 1)        = 180.43;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.30;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 152122 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35754E+15 0.00022  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.44252E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.27141E+18 0.00020  9.98354E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.19867E+16 0.00749  1.64556E-03 0.00748 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71397E+18 0.00063  2.75878E-01 0.00055 ];
U238_CAPT                 (idx, [1:   4]) = [  2.19464E+18 0.00063  3.53210E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002112 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80562E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002112 2.01806E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9072390 9.15323E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10635659 1.07309E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 294063 2.96440E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002112 2.01806E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.90573E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.21079E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34928E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35754E+19 0.00022 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.00529E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.01242E+17 0.00220 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36941E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.54205E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.30771E+00 0.00023  1.29920E+00 0.00022  8.59687E-03 0.00373 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30788E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.30761E+00 0.00022 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30788E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32756E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80710E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80714E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.83902E-07 0.00082 ];
IMP_EALF                  (idx, [1:   2]) = [  2.83665E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.57243E-03 0.00559 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.59119E-03 0.00149 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.06966E-03 0.00278  1.62132E-04 0.01558  8.45435E-04 0.00693  8.20173E-04 0.00697  2.32221E-03 0.00412  6.80853E-04 0.00773  2.38857E-04 0.01295 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.56701E-01 0.00666  1.08793E-02 0.00861  3.18190E-02 2.2E-05  1.09395E-01 2.3E-05  3.17099E-01 2.2E-05  1.35367E+00 2.0E-05  8.22856E+00 0.00502 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.59787E-03 0.00374  2.14691E-04 0.02099  1.09768E-03 0.00928  1.06787E-03 0.00935  3.02076E-03 0.00554  8.84239E-04 0.01044  3.12628E-04 0.01747 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.58962E-01 0.00904  1.24906E-02 2.1E-07  3.18194E-02 2.7E-05  1.09395E-01 2.9E-05  3.17105E-01 2.9E-05  1.35366E+00 2.5E-05  8.64341E+00 0.00020 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.74102E-04 0.00065  3.74212E-04 0.00065  3.58683E-04 0.00731 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.89166E-04 0.00061  4.89311E-04 0.00061  4.68972E-04 0.00730 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.57604E-03 0.00381  2.09647E-04 0.02074  1.08684E-03 0.00935  1.07059E-03 0.00949  3.01750E-03 0.00580  8.81242E-04 0.01065  3.10232E-04 0.01772 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.56894E-01 0.00924  1.24906E-02 3.3E-07  3.18202E-02 2.5E-05  1.09398E-01 3.7E-05  3.17108E-01 3.3E-05  1.35361E+00 3.6E-05  8.64382E+00 0.00022 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.58479E-04 0.00145  3.58574E-04 0.00146  3.49164E-04 0.01991 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.68748E-04 0.00144  4.68872E-04 0.00145  4.56579E-04 0.01994 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.51974E-03 0.01128  2.22145E-04 0.06364  1.09922E-03 0.02793  1.04443E-03 0.02767  2.97911E-03 0.01675  8.51784E-04 0.03135  3.23046E-04 0.05251 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.65640E-01 0.02882  1.24906E-02 1.0E-06  3.18188E-02 7.4E-05  1.09404E-01 0.00011  3.17119E-01 9.8E-05  1.35347E+00 8.7E-05  8.64355E+00 0.00044 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.51690E-03 0.01107  2.18950E-04 0.06182  1.10471E-03 0.02722  1.04643E-03 0.02701  2.96847E-03 0.01645  8.55407E-04 0.03064  3.22935E-04 0.05047 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.66410E-01 0.02747  1.24906E-02 1.0E-06  3.18183E-02 7.5E-05  1.09404E-01 0.00011  3.17114E-01 9.2E-05  1.35349E+00 8.5E-05  8.64411E+00 0.00046 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.82449E+01 0.01135 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.66741E-04 0.00037 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79542E-04 0.00029 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.54718E-03 0.00211 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.78587E+01 0.00216 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08791E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59187E-05 8.5E-05  3.59177E-05 8.5E-05  3.60712E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.53664E-04 0.00040  7.53900E-04 0.00040  7.18329E-04 0.00474 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.08068E-01 0.00015  7.07089E-01 0.00015  9.15247E-01 0.00449 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07944E+01 0.00657 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.85624E+02 0.00023  1.78487E+02 0.00025 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.92777E+04 0.00161  3.79825E+05 0.00072  8.96980E+05 0.00042  1.66343E+06 0.00029  1.87349E+06 0.00017  1.94185E+06 0.00017  1.45891E+06 0.00016  1.14289E+06 0.00018  1.62980E+06 0.00014  1.60423E+06 0.00011  1.75023E+06 0.00011  1.74192E+06 0.00011  1.89956E+06 9.8E-05  1.85593E+06 0.00012  1.86311E+06 9.9E-05  1.63595E+06 0.00010  1.64720E+06 0.00010  1.63852E+06 0.00011  1.62939E+06 0.00013  3.22918E+06 9.4E-05  3.17385E+06 9.2E-05  2.32560E+06 0.00011  1.51583E+06 0.00013  1.79852E+06 0.00015  1.72214E+06 0.00015  1.46371E+06 0.00017  2.58645E+06 0.00016  5.51822E+05 0.00027  6.91879E+05 0.00026  6.25031E+05 0.00027  3.68444E+05 0.00037  6.44599E+05 0.00028  4.45886E+05 0.00034  3.90959E+05 0.00037  7.68380E+04 0.00076  7.63071E+04 0.00069  7.86628E+04 0.00070  8.14106E+04 0.00068  8.10178E+04 0.00062  8.05286E+04 0.00065  8.33636E+04 0.00064  7.92161E+04 0.00067  1.51821E+05 0.00055  2.50141E+05 0.00047  3.36949E+05 0.00044  1.06579E+06 0.00032  1.61613E+06 0.00035  2.54265E+06 0.00041  2.08249E+06 0.00042  1.64840E+06 0.00043  1.31017E+06 0.00046  1.49975E+06 0.00047  2.66417E+06 0.00047  3.24594E+06 0.00047  5.35200E+06 0.00047  6.58829E+06 0.00050  7.61988E+06 0.00050  3.97709E+06 0.00053  2.52509E+06 0.00054  1.66928E+06 0.00056  1.41424E+06 0.00053  1.33840E+06 0.00057  1.03005E+06 0.00058  6.78828E+05 0.00059  5.77311E+05 0.00067  5.26547E+05 0.00070  4.35753E+05 0.00077  2.98440E+05 0.00078  1.95800E+05 0.00084  6.17165E+04 0.00133 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32728E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.55053E+21 0.00022  3.45482E+21 0.00050 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38932E-01 1.7E-05  3.87480E-01 4.1E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.18037E-04 0.00039  9.57016E-04 0.00042 ];
INF_ABS                   (idx, [1:   4]) = [  1.14864E-03 0.00033  2.72528E-03 0.00041 ];
INF_FISS                  (idx, [1:   4]) = [  3.30602E-04 0.00043  1.76826E-03 0.00049 ];
INF_NSF                   (idx, [1:   4]) = [  8.07100E-04 0.00043  4.30872E-03 0.00049 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44130E+00 3.5E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.2E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.16450E-07 0.00011  2.08646E-06 3.8E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37782E-01 1.8E-05  3.84755E-01 4.3E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13575E-02 0.00021  1.14198E-02 0.00041 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48104E-03 0.00147 -4.36003E-03 0.00100 ];
INF_SCATT3                (idx, [1:   4]) = [  4.66960E-04 0.00636 -4.00137E-03 0.00072 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.49156E-04 0.01937 -4.65084E-03 0.00060 ];
INF_SCATT5                (idx, [1:   4]) = [  1.20773E-04 0.01890 -2.69798E-03 0.00100 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.36552E-04 0.00718 -4.47489E-03 0.00058 ];
INF_SCATT7                (idx, [1:   4]) = [  1.36306E-04 0.01338 -6.13132E-04 0.00360 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37817E-01 1.8E-05  3.84755E-01 4.3E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13665E-02 0.00021  1.14198E-02 0.00041 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48265E-03 0.00148 -4.36003E-03 0.00100 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.67165E-04 0.00637 -4.00137E-03 0.00072 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.49195E-04 0.01935 -4.65084E-03 0.00060 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.20680E-04 0.01890 -2.69798E-03 0.00100 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.36571E-04 0.00718 -4.47489E-03 0.00058 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.36255E-04 0.01337 -6.13132E-04 0.00360 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01040E-01 3.5E-05  3.74555E-01 4.3E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10727E+00 3.5E-05  8.89944E-01 4.3E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.11412E-03 0.00035  2.72528E-03 0.00041 ];
INF_REMXS                 (idx, [1:   4]) = [  5.64960E-03 0.00016  4.58408E-03 0.00036 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33282E-01 1.7E-05  4.50000E-03 0.00023  1.85883E-03 0.00041  3.82896E-01 4.3E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23447E-02 0.00020 -9.87208E-04 0.00051 -2.09319E-04 0.00163  1.16291E-02 0.00040 ];
INF_S2                    (idx, [1:   8]) = [  2.66329E-03 0.00138 -1.82253E-04 0.00222 -1.18605E-04 0.00203 -4.24143E-03 0.00102 ];
INF_S3                    (idx, [1:   8]) = [  5.14901E-04 0.00576 -4.79412E-05 0.00672 -4.15551E-05 0.00518 -3.95982E-03 0.00072 ];
INF_S4                    (idx, [1:   8]) = [ -1.11413E-04 0.02560 -3.77423E-05 0.00800 -2.70998E-05 0.00677 -4.62374E-03 0.00060 ];
INF_S5                    (idx, [1:   8]) = [  1.24503E-04 0.01846 -3.73013E-06 0.07703 -6.73380E-06 0.02665 -2.69125E-03 0.00101 ];
INF_S6                    (idx, [1:   8]) = [ -3.10950E-04 0.00778 -2.56021E-05 0.00907 -1.85240E-05 0.00896 -4.45636E-03 0.00058 ];
INF_S7                    (idx, [1:   8]) = [  1.14391E-04 0.01591  2.19148E-05 0.00946  8.17487E-06 0.01665 -6.21307E-04 0.00356 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33317E-01 1.7E-05  4.50000E-03 0.00023  1.85883E-03 0.00041  3.82896E-01 4.3E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23538E-02 0.00020 -9.87208E-04 0.00051 -2.09319E-04 0.00163  1.16291E-02 0.00040 ];
INF_SP2                   (idx, [1:   8]) = [  2.66490E-03 0.00138 -1.82253E-04 0.00222 -1.18605E-04 0.00203 -4.24143E-03 0.00102 ];
INF_SP3                   (idx, [1:   8]) = [  5.15106E-04 0.00576 -4.79412E-05 0.00672 -4.15551E-05 0.00518 -3.95982E-03 0.00072 ];
INF_SP4                   (idx, [1:   8]) = [ -1.11453E-04 0.02556 -3.77423E-05 0.00800 -2.70998E-05 0.00677 -4.62374E-03 0.00060 ];
INF_SP5                   (idx, [1:   8]) = [  1.24410E-04 0.01845 -3.73013E-06 0.07703 -6.73380E-06 0.02665 -2.69125E-03 0.00101 ];
INF_SP6                   (idx, [1:   8]) = [ -3.10969E-04 0.00778 -2.56021E-05 0.00907 -1.85240E-05 0.00896 -4.45636E-03 0.00058 ];
INF_SP7                   (idx, [1:   8]) = [  1.14340E-04 0.01591  2.19148E-05 0.00946  8.17487E-06 0.01665 -6.21307E-04 0.00356 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98955E-01 0.00020  4.25881E-01 0.00063 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99552E-01 0.00036  4.21454E-01 0.00097 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99404E-01 0.00034  4.20778E-01 0.00108 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97922E-01 0.00032  4.35816E-01 0.00085 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11500E+00 0.00020  7.82722E-01 0.00063 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11279E+00 0.00037  7.90988E-01 0.00097 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11333E+00 0.00034  7.92275E-01 0.00108 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11887E+00 0.00032  7.64904E-01 0.00085 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.59787E-03 0.00374  2.14691E-04 0.02099  1.09768E-03 0.00928  1.06787E-03 0.00935  3.02076E-03 0.00554  8.84239E-04 0.01044  3.12628E-04 0.01747 ];
LAMBDA                    (idx, [1:  14]) = [  7.58962E-01 0.00904  1.24906E-02 2.1E-07  3.18194E-02 2.7E-05  1.09395E-01 2.9E-05  3.17105E-01 2.9E-05  1.35366E+00 2.5E-05  8.64341E+00 0.00020 ];

