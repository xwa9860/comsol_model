
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input14' ;
HOSTNAME                  (idx, [1: 12])  = 'n0088.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:50 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.95444E-01  1.00162E+00  1.00108E+00  1.00214E+00  1.00304E+00  1.00176E+00  1.00086E+00  1.00022E+00  1.00534E+00  9.97118E-01  9.94784E-01  1.00145E+00  1.00076E+00  1.00098E+00  9.96280E-01  1.00119E+00  1.00116E+00  9.97931E-01  1.00024E+00  9.96601E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 1.1E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.01709E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.29829E-01 2.5E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83754E-01 4.8E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87803E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.42351E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.85781E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.85766E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.59711E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.47972E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001986 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.83942E+02 ;
RUNNING_TIME              (idx, 1)        =  2.95806E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.34150E-01  1.34150E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  8.66666E-04  8.66666E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.94456E+01  2.94456E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.95802E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.74070 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98200E+01 0.00014 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.85541E-01 ;

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

NORM_COEF                 (idx, [1:   4]) = [  1.35423E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.41148E-01 0.00064 ];
U235_FISS                 (idx, [1:   4]) = [  7.27150E+18 0.00020  9.98371E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.18636E+16 0.00749  1.62860E-03 0.00747 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71377E+18 0.00060  2.77329E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.16673E+18 0.00063  3.50589E-01 0.00046 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001986 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79445E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001986 2.01794E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9046389 9.12665E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10662211 1.07570E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 293386 2.95760E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001986 2.01794E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -1.41561E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.18114E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34632E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35423E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.99332E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.00287E+17 0.00222 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36635E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.53763E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31096E+00 0.00022  1.30236E+00 0.00022  8.61399E-03 0.00376 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31081E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31079E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31081E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33049E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80741E+01 4.6E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80743E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.83047E-07 0.00083 ];
IMP_EALF                  (idx, [1:   2]) = [  2.82854E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.50310E-03 0.00575 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.52181E-03 0.00151 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.05975E-03 0.00277  1.56387E-04 0.01590  8.40921E-04 0.00697  8.18582E-04 0.00702  2.32208E-03 0.00408  6.81724E-04 0.00748  2.40051E-04 0.01303 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.61046E-01 0.00679  1.08543E-02 0.00868  3.18186E-02 2.2E-05  1.09397E-01 2.5E-05  3.17087E-01 2.1E-05  1.35371E+00 1.8E-05  8.19863E+00 0.00521 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.56574E-03 0.00370  1.98629E-04 0.02170  1.08294E-03 0.00944  1.05943E-03 0.00928  3.01629E-03 0.00536  8.96225E-04 0.01015  3.12219E-04 0.01727 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.64361E-01 0.00897  1.24906E-02 9.8E-08  3.18179E-02 3.2E-05  1.09401E-01 3.8E-05  3.17090E-01 2.7E-05  1.35369E+00 2.4E-05  8.64451E+00 0.00021 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.73115E-04 0.00064  3.73231E-04 0.00064  3.55989E-04 0.00735 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.89090E-04 0.00060  4.89242E-04 0.00060  4.66647E-04 0.00735 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.56545E-03 0.00382  1.99408E-04 0.02206  1.08716E-03 0.00941  1.05808E-03 0.00932  3.02079E-03 0.00549  8.88288E-04 0.01031  3.11733E-04 0.01761 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.62475E-01 0.00924  1.24906E-02 1.1E-07  3.18177E-02 3.5E-05  1.09402E-01 4.2E-05  3.17093E-01 2.9E-05  1.35371E+00 2.6E-05  8.64532E+00 0.00025 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.57951E-04 0.00144  3.57990E-04 0.00145  3.46673E-04 0.01770 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.69221E-04 0.00143  4.69272E-04 0.00144  4.54343E-04 0.01768 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.61005E-03 0.01124  2.07635E-04 0.06407  1.10332E-03 0.02704  1.06703E-03 0.02935  3.03583E-03 0.01638  8.92399E-04 0.03080  3.03827E-04 0.05301 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.51368E-01 0.02747  1.24906E-02 7.9E-07  3.18167E-02 7.8E-05  1.09403E-01 9.7E-05  3.17073E-01 6.9E-05  1.35371E+00 6.1E-05  8.65131E+00 0.00070 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.57828E-03 0.01089  2.02108E-04 0.06240  1.10069E-03 0.02629  1.06390E-03 0.02827  3.01944E-03 0.01581  8.92170E-04 0.03031  2.99968E-04 0.05184 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.46596E-01 0.02659  1.24906E-02 7.9E-07  3.18166E-02 7.6E-05  1.09400E-01 9.2E-05  3.17081E-01 7.1E-05  1.35371E+00 6.2E-05  8.65037E+00 0.00066 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.85305E+01 0.01134 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.66181E-04 0.00037 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.80000E-04 0.00029 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.58157E-03 0.00226 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.79780E+01 0.00228 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08831E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59179E-05 8.5E-05  3.59165E-05 8.5E-05  3.61242E-05 0.00106 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.52734E-04 0.00040  7.52971E-04 0.00040  7.15911E-04 0.00486 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.09696E-01 0.00015  7.08727E-01 0.00015  9.14274E-01 0.00429 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07226E+01 0.00658 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.85766E+02 0.00023  1.78432E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.95813E+04 0.00187  3.79339E+05 0.00072  8.97264E+05 0.00041  1.66446E+06 0.00026  1.87409E+06 0.00018  1.94162E+06 0.00015  1.45882E+06 0.00013  1.14288E+06 0.00018  1.62960E+06 0.00013  1.60465E+06 0.00012  1.75053E+06 0.00010  1.74189E+06 0.00011  1.89951E+06 0.00011  1.85571E+06 0.00011  1.86285E+06 0.00010  1.63584E+06 0.00011  1.64675E+06 0.00011  1.63874E+06 0.00012  1.62944E+06 9.6E-05  3.22836E+06 8.0E-05  3.17333E+06 0.00011  2.32607E+06 0.00011  1.51584E+06 0.00014  1.79959E+06 0.00015  1.72459E+06 0.00016  1.46552E+06 0.00019  2.59159E+06 0.00017  5.53167E+05 0.00028  6.93394E+05 0.00028  6.26663E+05 0.00027  3.69101E+05 0.00036  6.45997E+05 0.00031  4.47125E+05 0.00034  3.91628E+05 0.00036  7.70268E+04 0.00077  7.64161E+04 0.00075  7.88625E+04 0.00070  8.15523E+04 0.00071  8.12344E+04 0.00064  8.06339E+04 0.00075  8.36122E+04 0.00070  7.94222E+04 0.00065  1.51998E+05 0.00053  2.50498E+05 0.00046  3.37915E+05 0.00050  1.06764E+06 0.00033  1.61837E+06 0.00038  2.54583E+06 0.00047  2.08552E+06 0.00050  1.64999E+06 0.00053  1.31147E+06 0.00056  1.50071E+06 0.00058  2.66641E+06 0.00057  3.24859E+06 0.00057  5.35563E+06 0.00058  6.59379E+06 0.00060  7.62791E+06 0.00062  3.98166E+06 0.00064  2.52684E+06 0.00061  1.67108E+06 0.00065  1.41645E+06 0.00065  1.34014E+06 0.00069  1.03119E+06 0.00073  6.80043E+05 0.00074  5.77742E+05 0.00080  5.26830E+05 0.00080  4.36455E+05 0.00081  2.98947E+05 0.00095  1.96235E+05 0.00100  6.18780E+04 0.00131 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33047E+00 0.00020 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.54349E+21 0.00019  3.44987E+21 0.00061 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38918E-01 1.6E-05  3.87459E-01 4.3E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.11760E-04 0.00039  9.57920E-04 0.00042 ];
INF_ABS                   (idx, [1:   4]) = [  1.14228E-03 0.00036  2.72949E-03 0.00050 ];
INF_FISS                  (idx, [1:   4]) = [  3.30520E-04 0.00042  1.77157E-03 0.00060 ];
INF_NSF                   (idx, [1:   4]) = [  8.06888E-04 0.00042  4.31679E-03 0.00060 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44127E+00 3.7E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02318E+02 3.4E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.16596E-07 0.00012  2.08656E-06 4.7E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37776E-01 1.7E-05  3.84730E-01 4.4E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13537E-02 0.00022  1.14174E-02 0.00044 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48050E-03 0.00156 -4.37006E-03 0.00100 ];
INF_SCATT3                (idx, [1:   4]) = [  4.69829E-04 0.00745 -4.00135E-03 0.00083 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.54928E-04 0.01946 -4.64568E-03 0.00055 ];
INF_SCATT5                (idx, [1:   4]) = [  1.19571E-04 0.02139 -2.69547E-03 0.00104 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.40698E-04 0.00650 -4.46966E-03 0.00057 ];
INF_SCATT7                (idx, [1:   4]) = [  1.40936E-04 0.01375 -6.06314E-04 0.00387 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37810E-01 1.7E-05  3.84730E-01 4.4E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13628E-02 0.00022  1.14174E-02 0.00044 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48221E-03 0.00156 -4.37006E-03 0.00100 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.70076E-04 0.00744 -4.00135E-03 0.00083 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.54890E-04 0.01944 -4.64568E-03 0.00055 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.19528E-04 0.02137 -2.69547E-03 0.00104 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.40691E-04 0.00651 -4.46966E-03 0.00057 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.40912E-04 0.01377 -6.06314E-04 0.00387 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01032E-01 3.4E-05  3.74536E-01 4.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10730E+00 3.4E-05  8.89991E-01 4.7E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.10799E-03 0.00037  2.72949E-03 0.00050 ];
INF_REMXS                 (idx, [1:   4]) = [  5.64876E-03 0.00014  4.58814E-03 0.00044 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33269E-01 1.5E-05  4.50622E-03 0.00025  1.85900E-03 0.00048  3.82871E-01 4.5E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23420E-02 0.00021 -9.88217E-04 0.00055 -2.09435E-04 0.00157  1.16268E-02 0.00044 ];
INF_S2                    (idx, [1:   8]) = [  2.66347E-03 0.00144 -1.82963E-04 0.00215 -1.18409E-04 0.00212 -4.25166E-03 0.00102 ];
INF_S3                    (idx, [1:   8]) = [  5.18364E-04 0.00670 -4.85346E-05 0.00678 -4.18462E-05 0.00556 -3.95950E-03 0.00083 ];
INF_S4                    (idx, [1:   8]) = [ -1.16660E-04 0.02606 -3.82684E-05 0.00774 -2.71478E-05 0.00579 -4.61853E-03 0.00056 ];
INF_S5                    (idx, [1:   8]) = [  1.22853E-04 0.02033 -3.28231E-06 0.08021 -6.61294E-06 0.02528 -2.68886E-03 0.00104 ];
INF_S6                    (idx, [1:   8]) = [ -3.15123E-04 0.00694 -2.55750E-05 0.00935 -1.82165E-05 0.00836 -4.45145E-03 0.00057 ];
INF_S7                    (idx, [1:   8]) = [  1.18710E-04 0.01620  2.22260E-05 0.00998  8.10738E-06 0.01814 -6.14421E-04 0.00382 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33304E-01 1.5E-05  4.50622E-03 0.00025  1.85900E-03 0.00048  3.82871E-01 4.5E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23510E-02 0.00021 -9.88217E-04 0.00055 -2.09435E-04 0.00157  1.16268E-02 0.00044 ];
INF_SP2                   (idx, [1:   8]) = [  2.66517E-03 0.00144 -1.82963E-04 0.00215 -1.18409E-04 0.00212 -4.25166E-03 0.00102 ];
INF_SP3                   (idx, [1:   8]) = [  5.18611E-04 0.00669 -4.85346E-05 0.00678 -4.18462E-05 0.00556 -3.95950E-03 0.00083 ];
INF_SP4                   (idx, [1:   8]) = [ -1.16622E-04 0.02604 -3.82684E-05 0.00774 -2.71478E-05 0.00579 -4.61853E-03 0.00056 ];
INF_SP5                   (idx, [1:   8]) = [  1.22811E-04 0.02032 -3.28231E-06 0.08021 -6.61294E-06 0.02528 -2.68886E-03 0.00104 ];
INF_SP6                   (idx, [1:   8]) = [ -3.15116E-04 0.00695 -2.55750E-05 0.00935 -1.82165E-05 0.00836 -4.45145E-03 0.00057 ];
INF_SP7                   (idx, [1:   8]) = [  1.18686E-04 0.01622  2.22260E-05 0.00998  8.10738E-06 0.01814 -6.14421E-04 0.00382 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98834E-01 0.00025  4.25299E-01 0.00059 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99416E-01 0.00039  4.20727E-01 0.00090 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99321E-01 0.00035  4.20591E-01 0.00100 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97779E-01 0.00036  4.34971E-01 0.00098 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11545E+00 0.00025  7.83789E-01 0.00059 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11330E+00 0.00039  7.92344E-01 0.00090 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11365E+00 0.00035  7.92614E-01 0.00100 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11941E+00 0.00036  7.66409E-01 0.00099 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.56574E-03 0.00370  1.98629E-04 0.02170  1.08294E-03 0.00944  1.05943E-03 0.00928  3.01629E-03 0.00536  8.96225E-04 0.01015  3.12219E-04 0.01727 ];
LAMBDA                    (idx, [1:  14]) = [  7.64361E-01 0.00897  1.24906E-02 9.8E-08  3.18179E-02 3.2E-05  1.09401E-01 3.8E-05  3.17090E-01 2.7E-05  1.35369E+00 2.4E-05  8.64451E+00 0.00021 ];

