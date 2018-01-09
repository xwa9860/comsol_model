
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input30' ;
HOSTNAME                  (idx, [1: 12])  = 'n0058.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:49 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00161E+00  9.99366E-01  1.00425E+00  9.93553E-01  1.00537E+00  9.95660E-01  1.00437E+00  9.98335E-01  1.00325E+00  9.96059E-01  9.97730E-01  9.97874E-01  1.00210E+00  9.98506E-01  9.93238E-01  1.00646E+00  1.00533E+00  1.00105E+00  1.00388E+00  9.92022E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.66507E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.23349E-01 2.7E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81143E-01 4.6E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85447E-01 4.6E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.65265E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.85197E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.85183E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.63577E+02 0.00028  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.96592E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001867 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.84780E+02 ;
RUNNING_TIME              (idx, 1)        =  2.95764E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.26983E-01  1.26983E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.31667E-03  1.31667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.94481E+01  2.94481E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.95760E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77188 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98453E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86806E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4798.07;
MEMSIZE                   (idx, 1)        = 831.54;
XS_MEMSIZE                (idx, 1)        = 499.25;
MAT_MEMSIZE               (idx, 1)        = 195.38;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.53;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 164770 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34308E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.32391E-01 0.00064 ];
U235_FISS                 (idx, [1:   4]) = [  7.26915E+18 0.00020  9.98364E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.19175E+16 0.00763  1.63648E-03 0.00762 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70948E+18 0.00061  2.81488E-01 0.00055 ];
U238_CAPT                 (idx, [1:   4]) = [  2.08650E+18 0.00063  3.43532E-01 0.00047 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001867 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80061E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001867 2.01801E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8963780 9.04369E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10746882 1.08428E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 291205 2.93524E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001867 2.01801E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -3.20375E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.3E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.07492E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.33570E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34308E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.91537E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.97141E+17 0.00218 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35541E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.50890E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.3E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.32133E+00 0.00022  1.31277E+00 0.00021  8.66506E-03 0.00371 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.32138E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.32167E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.32138E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.34106E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81124E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81118E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.72391E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.72419E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.46702E-03 0.00570 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.50805E-03 0.00151 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.03254E-03 0.00278  1.57048E-04 0.01560  8.43233E-04 0.00680  8.10472E-04 0.00696  2.30469E-03 0.00411  6.75608E-04 0.00773  2.41488E-04 0.01290 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.63845E-01 0.00663  1.09043E-02 0.00853  3.18188E-02 2.1E-05  1.09402E-01 2.7E-05  3.17091E-01 2.0E-05  1.35375E+00 1.6E-05  8.27100E+00 0.00474 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.58990E-03 0.00371  2.08976E-04 0.02016  1.11648E-03 0.00895  1.06688E-03 0.00911  3.00719E-03 0.00559  8.81242E-04 0.01018  3.09131E-04 0.01713 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.54630E-01 0.00877  1.24906E-02 1.2E-07  3.18182E-02 3.2E-05  1.09403E-01 3.8E-05  3.17098E-01 2.8E-05  1.35375E+00 2.1E-05  8.64052E+00 0.00011 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.68186E-04 0.00063  3.68277E-04 0.00063  3.54439E-04 0.00752 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.86453E-04 0.00060  4.86574E-04 0.00061  4.68270E-04 0.00751 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.56074E-03 0.00376  2.09863E-04 0.02078  1.10647E-03 0.00921  1.05823E-03 0.00963  2.98737E-03 0.00568  8.84332E-04 0.01062  3.14475E-04 0.01725 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.64689E-01 0.00898  1.24906E-02 1.3E-07  3.18192E-02 2.7E-05  1.09400E-01 3.7E-05  3.17088E-01 2.7E-05  1.35372E+00 2.5E-05  8.64191E+00 0.00018 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.53061E-04 0.00145  3.53158E-04 0.00145  3.33259E-04 0.01768 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.66458E-04 0.00143  4.66588E-04 0.00143  4.40157E-04 0.01766 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.52176E-03 0.01101  2.13151E-04 0.06127  1.10262E-03 0.02632  1.06572E-03 0.02800  2.97354E-03 0.01679  8.65282E-04 0.03060  3.01438E-04 0.05287 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.49878E-01 0.02796  1.24906E-02 7.4E-09  3.18192E-02 6.7E-05  1.09413E-01 0.00012  3.17079E-01 7.8E-05  1.35348E+00 8.3E-05  8.64124E+00 0.00040 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.52169E-03 0.01069  2.15375E-04 0.06042  1.09847E-03 0.02554  1.06507E-03 0.02697  2.97273E-03 0.01634  8.69643E-04 0.02970  3.00399E-04 0.05128 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.52706E-01 0.02741  1.24906E-02 7.4E-09  3.18194E-02 6.4E-05  1.09413E-01 0.00011  3.17075E-01 7.5E-05  1.35349E+00 8.2E-05  8.64122E+00 0.00040 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.85208E+01 0.01106 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.61054E-04 0.00036 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.77026E-04 0.00029 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.56338E-03 0.00209 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.81821E+01 0.00210 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.09026E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58705E-05 8.5E-05  3.58699E-05 8.5E-05  3.59412E-05 0.00103 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.46961E-04 0.00040  7.47115E-04 0.00040  7.22565E-04 0.00507 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.14206E-01 0.00015  7.13183E-01 0.00015  9.31749E-01 0.00443 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08270E+01 0.00653 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.85183E+02 0.00023  1.77193E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.92594E+04 0.00164  3.79648E+05 0.00082  8.96793E+05 0.00043  1.66333E+06 0.00027  1.87323E+06 0.00021  1.94155E+06 0.00017  1.45909E+06 0.00015  1.14305E+06 0.00017  1.62950E+06 0.00013  1.60419E+06 0.00012  1.75035E+06 0.00011  1.74182E+06 0.00012  1.89973E+06 0.00011  1.85603E+06 9.3E-05  1.86361E+06 9.0E-05  1.63592E+06 0.00011  1.64709E+06 0.00013  1.63879E+06 0.00011  1.62990E+06 0.00013  3.22965E+06 8.5E-05  3.17520E+06 0.00010  2.32777E+06 0.00011  1.51766E+06 0.00012  1.80322E+06 0.00013  1.72932E+06 0.00013  1.47063E+06 0.00015  2.60273E+06 0.00016  5.55798E+05 0.00027  6.96961E+05 0.00027  6.28873E+05 0.00024  3.70083E+05 0.00035  6.47125E+05 0.00028  4.46977E+05 0.00038  3.90661E+05 0.00037  7.65471E+04 0.00069  7.60764E+04 0.00075  7.84710E+04 0.00067  8.10205E+04 0.00068  8.05436E+04 0.00066  7.99568E+04 0.00073  8.27981E+04 0.00066  7.85649E+04 0.00067  1.50164E+05 0.00061  2.46468E+05 0.00044  3.30399E+05 0.00043  1.03327E+06 0.00032  1.55543E+06 0.00033  2.45622E+06 0.00037  2.02582E+06 0.00039  1.61100E+06 0.00045  1.28326E+06 0.00045  1.47438E+06 0.00049  2.62727E+06 0.00046  3.21364E+06 0.00046  5.32234E+06 0.00047  6.58348E+06 0.00049  7.64836E+06 0.00050  4.00299E+06 0.00052  2.54512E+06 0.00052  1.68497E+06 0.00056  1.42790E+06 0.00060  1.35163E+06 0.00060  1.04056E+06 0.00058  6.86541E+05 0.00062  5.82999E+05 0.00066  5.32129E+05 0.00072  4.40064E+05 0.00075  3.01508E+05 0.00089  1.98546E+05 0.00091  6.25560E+04 0.00144 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.34136E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.51349E+21 0.00020  3.40194E+21 0.00050 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38877E-01 1.5E-05  3.87508E-01 3.7E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.94318E-04 0.00039  9.65360E-04 0.00037 ];
INF_ABS                   (idx, [1:   4]) = [  1.12381E-03 0.00031  2.76585E-03 0.00041 ];
INF_FISS                  (idx, [1:   4]) = [  3.29493E-04 0.00039  1.80049E-03 0.00049 ];
INF_NSF                   (idx, [1:   4]) = [  8.04398E-04 0.00039  4.38724E-03 0.00049 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44132E+00 4.0E-06  2.43670E+00 1.9E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.2E-07  2.02270E+02 1.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.15976E-07 0.00010  2.09666E-06 4.5E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37754E-01 1.6E-05  3.84742E-01 3.9E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13481E-02 0.00020  1.13623E-02 0.00047 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48033E-03 0.00154 -4.38502E-03 0.00087 ];
INF_SCATT3                (idx, [1:   4]) = [  4.69146E-04 0.00688 -4.03200E-03 0.00091 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.50135E-04 0.01840 -4.65176E-03 0.00057 ];
INF_SCATT5                (idx, [1:   4]) = [  1.16170E-04 0.02083 -2.70895E-03 0.00083 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.36202E-04 0.00626 -4.45667E-03 0.00062 ];
INF_SCATT7                (idx, [1:   4]) = [  1.31384E-04 0.01699 -6.16342E-04 0.00351 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37789E-01 1.6E-05  3.84742E-01 3.9E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13572E-02 0.00020  1.13623E-02 0.00047 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48202E-03 0.00153 -4.38502E-03 0.00087 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.69403E-04 0.00687 -4.03200E-03 0.00091 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.50132E-04 0.01841 -4.65176E-03 0.00057 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.16119E-04 0.02085 -2.70895E-03 0.00083 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.36200E-04 0.00626 -4.45667E-03 0.00062 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.31373E-04 0.01700 -6.16342E-04 0.00351 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01008E-01 3.5E-05  3.74670E-01 4.1E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10739E+00 3.5E-05  8.89672E-01 4.1E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.08940E-03 0.00032  2.76585E-03 0.00041 ];
INF_REMXS                 (idx, [1:   4]) = [  5.50050E-03 0.00015  4.48056E-03 0.00037 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33377E-01 1.5E-05  4.37739E-03 0.00022  1.71486E-03 0.00046  3.83028E-01 4.0E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23190E-02 0.00019 -9.70911E-04 0.00045 -1.85345E-04 0.00162  1.15477E-02 0.00047 ];
INF_S2                    (idx, [1:   8]) = [  2.65571E-03 0.00142 -1.75371E-04 0.00222 -1.11272E-04 0.00252 -4.27375E-03 0.00089 ];
INF_S3                    (idx, [1:   8]) = [  5.14958E-04 0.00629 -4.58120E-05 0.00702 -3.95159E-05 0.00511 -3.99248E-03 0.00092 ];
INF_S4                    (idx, [1:   8]) = [ -1.13448E-04 0.02407 -3.66869E-05 0.00711 -2.52748E-05 0.00710 -4.62649E-03 0.00057 ];
INF_S5                    (idx, [1:   8]) = [  1.19136E-04 0.02031 -2.96622E-06 0.08899 -6.17286E-06 0.02818 -2.70278E-03 0.00081 ];
INF_S6                    (idx, [1:   8]) = [ -3.11590E-04 0.00668 -2.46117E-05 0.01074 -1.71257E-05 0.00849 -4.43954E-03 0.00062 ];
INF_S7                    (idx, [1:   8]) = [  1.10128E-04 0.02026  2.12564E-05 0.01059  7.33065E-06 0.01885 -6.23673E-04 0.00347 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33411E-01 1.5E-05  4.37739E-03 0.00022  1.71486E-03 0.00046  3.83028E-01 4.0E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23281E-02 0.00019 -9.70911E-04 0.00045 -1.85345E-04 0.00162  1.15477E-02 0.00047 ];
INF_SP2                   (idx, [1:   8]) = [  2.65739E-03 0.00142 -1.75371E-04 0.00222 -1.11272E-04 0.00252 -4.27375E-03 0.00089 ];
INF_SP3                   (idx, [1:   8]) = [  5.15215E-04 0.00629 -4.58120E-05 0.00702 -3.95159E-05 0.00511 -3.99248E-03 0.00092 ];
INF_SP4                   (idx, [1:   8]) = [ -1.13445E-04 0.02408 -3.66869E-05 0.00711 -2.52748E-05 0.00710 -4.62649E-03 0.00057 ];
INF_SP5                   (idx, [1:   8]) = [  1.19085E-04 0.02032 -2.96622E-06 0.08899 -6.17286E-06 0.02818 -2.70278E-03 0.00081 ];
INF_SP6                   (idx, [1:   8]) = [ -3.11588E-04 0.00668 -2.46117E-05 0.01074 -1.71257E-05 0.00849 -4.43954E-03 0.00062 ];
INF_SP7                   (idx, [1:   8]) = [  1.10116E-04 0.02028  2.12564E-05 0.01059  7.33065E-06 0.01885 -6.23673E-04 0.00347 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98756E-01 0.00022  4.25099E-01 0.00066 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99049E-01 0.00035  4.20926E-01 0.00090 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99404E-01 0.00036  4.20203E-01 0.00091 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97825E-01 0.00034  4.34532E-01 0.00103 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11574E+00 0.00022  7.84164E-01 0.00065 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11466E+00 0.00035  7.91969E-01 0.00090 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11334E+00 0.00036  7.93331E-01 0.00090 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11924E+00 0.00034  7.67191E-01 0.00104 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.58990E-03 0.00371  2.08976E-04 0.02016  1.11648E-03 0.00895  1.06688E-03 0.00911  3.00719E-03 0.00559  8.81242E-04 0.01018  3.09131E-04 0.01713 ];
LAMBDA                    (idx, [1:  14]) = [  7.54630E-01 0.00877  1.24906E-02 1.2E-07  3.18182E-02 3.2E-05  1.09403E-01 3.8E-05  3.17098E-01 2.8E-05  1.35375E+00 2.1E-05  8.64052E+00 0.00011 ];

