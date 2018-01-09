
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input20' ;
HOSTNAME                  (idx, [1: 12])  = 'n0094.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:45:07 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00015E+00  9.97636E-01  9.97313E-01  9.97032E-01  1.00197E+00  9.97068E-01  9.97021E-01  9.95733E-01  1.00406E+00  1.00323E+00  1.00316E+00  1.00128E+00  9.98232E-01  1.00004E+00  1.00041E+00  1.00235E+00  9.99328E-01  9.96135E-01  1.00360E+00  1.00425E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.96627E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.20337E-01 2.8E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.80688E-01 4.6E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85078E-01 4.6E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.89003E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.83675E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.83661E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.60600E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  5.15024E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001845 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.90572E+02 ;
RUNNING_TIME              (idx, 1)        =  2.98766E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.25983E-01  1.25983E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.31667E-03  1.31667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.97493E+01  2.97493E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.98761E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76705 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98448E+01 0.00012 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86725E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4804.50;
MEMSIZE                   (idx, 1)        = 837.32;
XS_MEMSIZE                (idx, 1)        = 503.04;
MAT_MEMSIZE               (idx, 1)        = 197.39;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3967.18;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 166466 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34710E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.38036E-01 0.00064 ];
U235_FISS                 (idx, [1:   4]) = [  7.27192E+18 0.00020  9.98369E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.18848E+16 0.00742  1.63146E-03 0.00741 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70408E+18 0.00061  2.78908E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.13656E+18 0.00063  3.49654E-01 0.00047 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001845 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79988E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001845 2.01800E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8991524 9.07143E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10718738 1.08146E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 291583 2.93969E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001845 2.01800E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.34693E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 5.9E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.11082E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.33929E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34710E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.88055E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.98026E+17 0.00224 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35909E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.49569E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.4E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31800E+00 0.00022  1.30929E+00 0.00021  8.69697E-03 0.00365 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31781E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31773E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31781E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33747E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81511E+01 4.2E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81517E+01 2.3E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.62047E-07 0.00077 ];
IMP_EALF                  (idx, [1:   2]) = [  2.61769E-07 0.00042 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.50235E-03 0.00562 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.49219E-03 0.00149 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.03734E-03 0.00280  1.60846E-04 0.01571  8.33728E-04 0.00695  8.11617E-04 0.00698  2.31675E-03 0.00408  6.76659E-04 0.00784  2.37739E-04 0.01258 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.59980E-01 0.00665  1.10479E-02 0.00808  3.18186E-02 2.1E-05  1.09343E-01 0.00050  3.17087E-01 2.0E-05  1.35372E+00 1.9E-05  8.28277E+00 0.00469 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.59648E-03 0.00368  2.11174E-04 0.02102  1.08836E-03 0.00917  1.05927E-03 0.00927  3.03863E-03 0.00537  8.86337E-04 0.01029  3.12711E-04 0.01704 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.61299E-01 0.00878  1.24906E-02 1.5E-07  3.18179E-02 3.1E-05  1.09397E-01 3.2E-05  3.17090E-01 2.7E-05  1.35372E+00 2.8E-05  8.64680E+00 0.00026 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.68451E-04 0.00063  3.68554E-04 0.00064  3.52371E-04 0.00767 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.85573E-04 0.00059  4.85708E-04 0.00059  4.64430E-04 0.00768 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.59966E-03 0.00372  2.10616E-04 0.02100  1.09102E-03 0.00940  1.05821E-03 0.00963  3.05063E-03 0.00553  8.81624E-04 0.01046  3.07558E-04 0.01730 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.54818E-01 0.00911  1.24906E-02 0.0E+00  3.18188E-02 2.8E-05  1.09398E-01 3.6E-05  3.17078E-01 2.7E-05  1.35372E+00 3.1E-05  8.64441E+00 0.00023 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.52533E-04 0.00142  3.52634E-04 0.00143  3.33236E-04 0.01699 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.64601E-04 0.00141  4.64734E-04 0.00141  4.39185E-04 0.01700 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.63230E-03 0.01110  2.11572E-04 0.06288  1.11729E-03 0.02666  1.07692E-03 0.02757  3.04953E-03 0.01662  8.68997E-04 0.03062  3.07988E-04 0.05232 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.52719E-01 0.02774  1.24906E-02 7.4E-09  3.18197E-02 6.4E-05  1.09386E-01 5.8E-05  3.17044E-01 5.1E-05  1.35376E+00 5.4E-05  8.63879E+00 0.00028 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.64841E-03 0.01084  2.14136E-04 0.06127  1.11302E-03 0.02629  1.07906E-03 0.02717  3.06198E-03 0.01612  8.70817E-04 0.03015  3.09399E-04 0.05018 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.55670E-01 0.02714  1.24906E-02 7.4E-09  3.18197E-02 6.3E-05  1.09387E-01 6.2E-05  3.17047E-01 5.1E-05  1.35375E+00 5.4E-05  8.63878E+00 0.00028 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.88788E+01 0.01117 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.60916E-04 0.00036 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.75642E-04 0.00028 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.58283E-03 0.00221 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.82450E+01 0.00225 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.09052E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.57915E-05 8.4E-05  3.57905E-05 8.5E-05  3.59454E-05 0.00107 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.44140E-04 0.00040  7.44319E-04 0.00040  7.16409E-04 0.00495 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.11231E-01 0.00015  7.10222E-01 0.00015  9.26032E-01 0.00452 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.06926E+01 0.00653 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.83661E+02 0.00023  1.76106E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.95529E+04 0.00160  3.79357E+05 0.00076  8.96920E+05 0.00039  1.66371E+06 0.00023  1.87415E+06 0.00018  1.94204E+06 0.00017  1.45901E+06 0.00015  1.14322E+06 0.00018  1.63024E+06 0.00014  1.60441E+06 0.00012  1.75025E+06 0.00011  1.74193E+06 0.00011  1.89926E+06 1.0E-04  1.85602E+06 0.00011  1.86287E+06 0.00011  1.63560E+06 0.00011  1.64697E+06 0.00010  1.63853E+06 0.00013  1.62953E+06 0.00010  3.22850E+06 9.0E-05  3.17400E+06 9.8E-05  2.32658E+06 0.00011  1.51660E+06 0.00012  1.79894E+06 0.00015  1.72424E+06 0.00015  1.46582E+06 0.00018  2.58875E+06 0.00016  5.52597E+05 0.00027  6.92540E+05 0.00025  6.23593E+05 0.00026  3.67115E+05 0.00033  6.40718E+05 0.00025  4.41749E+05 0.00035  3.85656E+05 0.00035  7.55614E+04 0.00061  7.49184E+04 0.00062  7.72480E+04 0.00071  7.97746E+04 0.00071  7.92049E+04 0.00067  7.85370E+04 0.00060  8.12860E+04 0.00063  7.70588E+04 0.00073  1.46886E+05 0.00050  2.40305E+05 0.00045  3.20764E+05 0.00041  9.92519E+05 0.00036  1.47939E+06 0.00037  2.34031E+06 0.00046  1.94148E+06 0.00051  1.55167E+06 0.00052  1.24088E+06 0.00055  1.42938E+06 0.00055  2.55602E+06 0.00055  3.14262E+06 0.00054  5.23398E+06 0.00055  6.51825E+06 0.00057  7.61951E+06 0.00058  4.00618E+06 0.00060  2.55248E+06 0.00059  1.69163E+06 0.00059  1.43513E+06 0.00058  1.35914E+06 0.00063  1.04677E+06 0.00064  6.91055E+05 0.00073  5.87749E+05 0.00069  5.35968E+05 0.00075  4.42792E+05 0.00081  3.04661E+05 0.00085  1.99591E+05 0.00103  6.29887E+04 0.00139 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33738E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.51491E+21 0.00021  3.36569E+21 0.00057 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38883E-01 1.7E-05  3.87606E-01 4.3E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.07668E-04 0.00038  9.72152E-04 0.00043 ];
INF_ABS                   (idx, [1:   4]) = [  1.13499E-03 0.00034  2.79417E-03 0.00048 ];
INF_FISS                  (idx, [1:   4]) = [  3.27317E-04 0.00048  1.82201E-03 0.00055 ];
INF_NSF                   (idx, [1:   4]) = [  7.99091E-04 0.00048  4.43970E-03 0.00055 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44134E+00 4.1E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.5E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.14707E-07 0.00011  2.10977E-06 4.0E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37748E-01 1.7E-05  3.84812E-01 4.6E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13616E-02 0.00022  1.12958E-02 0.00046 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48604E-03 0.00141 -4.43457E-03 0.00090 ];
INF_SCATT3                (idx, [1:   4]) = [  4.72640E-04 0.00626 -4.06775E-03 0.00086 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.49287E-04 0.01800 -4.64872E-03 0.00064 ];
INF_SCATT5                (idx, [1:   4]) = [  1.13048E-04 0.01865 -2.72236E-03 0.00088 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.22648E-04 0.00728 -4.42534E-03 0.00058 ];
INF_SCATT7                (idx, [1:   4]) = [  1.25085E-04 0.01744 -6.30299E-04 0.00384 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37782E-01 1.7E-05  3.84812E-01 4.6E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13707E-02 0.00022  1.12958E-02 0.00046 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48780E-03 0.00141 -4.43457E-03 0.00090 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.72921E-04 0.00626 -4.06775E-03 0.00086 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.49207E-04 0.01799 -4.64872E-03 0.00064 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.13035E-04 0.01866 -2.72236E-03 0.00088 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.22639E-04 0.00729 -4.42534E-03 0.00058 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.25094E-04 0.01744 -6.30299E-04 0.00384 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00947E-01 3.1E-05  3.74875E-01 4.5E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10761E+00 3.1E-05  8.89185E-01 4.5E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.10049E-03 0.00035  2.79417E-03 0.00048 ];
INF_REMXS                 (idx, [1:   4]) = [  5.36161E-03 0.00015  4.37344E-03 0.00043 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33521E-01 1.6E-05  4.22683E-03 0.00024  1.57883E-03 0.00048  3.83233E-01 4.6E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23132E-02 0.00020 -9.51653E-04 0.00054 -1.66184E-04 0.00179  1.14620E-02 0.00045 ];
INF_S2                    (idx, [1:   8]) = [  2.65283E-03 0.00130 -1.66793E-04 0.00267 -1.03878E-04 0.00253 -4.33069E-03 0.00093 ];
INF_S3                    (idx, [1:   8]) = [  5.15214E-04 0.00577 -4.25742E-05 0.00824 -3.69451E-05 0.00532 -4.03081E-03 0.00087 ];
INF_S4                    (idx, [1:   8]) = [ -1.14795E-04 0.02291 -3.44920E-05 0.00880 -2.35000E-05 0.00752 -4.62522E-03 0.00065 ];
INF_S5                    (idx, [1:   8]) = [  1.15791E-04 0.01831 -2.74278E-06 0.09552 -5.75225E-06 0.02644 -2.71660E-03 0.00088 ];
INF_S6                    (idx, [1:   8]) = [ -2.99050E-04 0.00785 -2.35986E-05 0.01141 -1.58429E-05 0.00972 -4.40950E-03 0.00058 ];
INF_S7                    (idx, [1:   8]) = [  1.04029E-04 0.02110  2.10558E-05 0.00995  6.42001E-06 0.02041 -6.36719E-04 0.00383 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33555E-01 1.6E-05  4.22683E-03 0.00024  1.57883E-03 0.00048  3.83233E-01 4.6E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23224E-02 0.00020 -9.51653E-04 0.00054 -1.66184E-04 0.00179  1.14620E-02 0.00045 ];
INF_SP2                   (idx, [1:   8]) = [  2.65459E-03 0.00130 -1.66793E-04 0.00267 -1.03878E-04 0.00253 -4.33069E-03 0.00093 ];
INF_SP3                   (idx, [1:   8]) = [  5.15495E-04 0.00577 -4.25742E-05 0.00824 -3.69451E-05 0.00532 -4.03081E-03 0.00087 ];
INF_SP4                   (idx, [1:   8]) = [ -1.14715E-04 0.02290 -3.44920E-05 0.00880 -2.35000E-05 0.00752 -4.62522E-03 0.00065 ];
INF_SP5                   (idx, [1:   8]) = [  1.15778E-04 0.01832 -2.74278E-06 0.09552 -5.75225E-06 0.02644 -2.71660E-03 0.00088 ];
INF_SP6                   (idx, [1:   8]) = [ -2.99040E-04 0.00786 -2.35986E-05 0.01141 -1.58429E-05 0.00972 -4.40950E-03 0.00058 ];
INF_SP7                   (idx, [1:   8]) = [  1.04038E-04 0.02110  2.10558E-05 0.00995  6.42001E-06 0.02041 -6.36719E-04 0.00383 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98681E-01 0.00021  4.25991E-01 0.00062 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99219E-01 0.00033  4.21250E-01 0.00091 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99005E-01 0.00036  4.21424E-01 0.00089 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97829E-01 0.00035  4.35672E-01 0.00091 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11602E+00 0.00021  7.82519E-01 0.00062 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11402E+00 0.00033  7.91360E-01 0.00091 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11482E+00 0.00036  7.91032E-01 0.00089 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11922E+00 0.00035  7.65165E-01 0.00091 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.59648E-03 0.00368  2.11174E-04 0.02102  1.08836E-03 0.00917  1.05927E-03 0.00927  3.03863E-03 0.00537  8.86337E-04 0.01029  3.12711E-04 0.01704 ];
LAMBDA                    (idx, [1:  14]) = [  7.61299E-01 0.00878  1.24906E-02 1.5E-07  3.18179E-02 3.1E-05  1.09397E-01 3.2E-05  3.17090E-01 2.7E-05  1.35372E+00 2.8E-05  8.64680E+00 0.00026 ];

