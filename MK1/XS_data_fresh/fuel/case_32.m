
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input31' ;
HOSTNAME                  (idx, [1: 12])  = 'n0059.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:20 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00180E+00  9.97929E-01  9.98731E-01  1.00152E+00  1.00381E+00  9.98056E-01  1.00357E+00  9.97942E-01  1.00302E+00  1.00103E+00  9.96581E-01  9.98924E-01  1.00060E+00  1.00040E+00  1.00330E+00  9.98450E-01  9.98386E-01  9.95092E-01  9.98646E-01  1.00222E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.52532E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.24747E-01 2.7E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83650E-01 4.8E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87839E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.92751E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.82886E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.82871E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.52469E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.76948E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002209 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.75007E+02 ;
RUNNING_TIME              (idx, 1)        =  2.90875E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.16217E-01  1.16217E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.20000E-03  1.20000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.89700E+01  2.89700E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.90871E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76819 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98401E+01 0.00015 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86751E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4736.84;
MEMSIZE                   (idx, 1)        = 768.12;
XS_MEMSIZE                (idx, 1)        = 458.03;
MAT_MEMSIZE               (idx, 1)        = 173.19;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3968.72;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 145999 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.36956E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.59735E-01 0.00060 ];
U235_FISS                 (idx, [1:   4]) = [  7.27012E+18 0.00020  9.98334E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.21309E+16 0.00758  1.66555E-03 0.00757 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70603E+18 0.00060  2.69521E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.33136E+18 0.00060  3.68277E-01 0.00044 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002209 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79538E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002209 2.01795E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9162566 9.24390E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10541245 1.06349E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 298398 3.00716E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002209 2.01795E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.90573E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.33065E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.36127E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.36956E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.96280E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.05949E+17 0.00219 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.38186E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.52636E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43745E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.29614E+00 0.00022  1.28760E+00 0.00021  8.50084E-03 0.00375 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.29610E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.29612E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.29610E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.31589E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81423E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81424E+01 2.5E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.64364E-07 0.00081 ];
IMP_EALF                  (idx, [1:   2]) = [  2.64224E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.63495E-03 0.00572 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.64824E-03 0.00148 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.11986E-03 0.00282  1.62269E-04 0.01572  8.43431E-04 0.00682  8.26956E-04 0.00692  2.36115E-03 0.00407  6.85489E-04 0.00771  2.40560E-04 0.01293 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.56536E-01 0.00673  1.08543E-02 0.00868  3.18037E-02 0.00050  1.09402E-01 2.7E-05  3.17109E-01 2.2E-05  1.35303E+00 0.00050  8.21882E+00 0.00508 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.55844E-03 0.00367  2.04069E-04 0.02139  1.07962E-03 0.00911  1.06891E-03 0.00918  3.01522E-03 0.00547  8.85217E-04 0.01053  3.05407E-04 0.01746 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.54064E-01 0.00894  1.24906E-02 2.7E-07  3.18206E-02 2.0E-05  1.09401E-01 3.5E-05  3.17109E-01 3.2E-05  1.35373E+00 2.2E-05  8.64273E+00 0.00018 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.77353E-04 0.00065  3.77447E-04 0.00065  3.64131E-04 0.00757 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.89053E-04 0.00061  4.89174E-04 0.00061  4.71906E-04 0.00757 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.55765E-03 0.00380  2.06925E-04 0.02148  1.07486E-03 0.00946  1.06914E-03 0.00967  3.02112E-03 0.00561  8.77697E-04 0.01057  3.07912E-04 0.01803 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.55040E-01 0.00936  1.24906E-02 2.4E-07  3.18201E-02 2.5E-05  1.09403E-01 4.1E-05  3.17107E-01 3.2E-05  1.35373E+00 2.8E-05  8.64297E+00 0.00021 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.62564E-04 0.00144  3.62697E-04 0.00144  3.42906E-04 0.01883 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.69893E-04 0.00143  4.70065E-04 0.00143  4.44431E-04 0.01883 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.54772E-03 0.01172  1.99681E-04 0.06481  1.10442E-03 0.02806  1.10530E-03 0.02796  2.97195E-03 0.01687  8.58226E-04 0.03207  3.08150E-04 0.05272 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.36403E-01 0.02719  1.24906E-02 7.4E-09  3.18172E-02 7.4E-05  1.09392E-01 6.5E-05  3.17115E-01 8.4E-05  1.35375E+00 5.6E-05  8.64765E+00 0.00061 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.52126E-03 0.01131  2.00291E-04 0.06305  1.09770E-03 0.02726  1.10573E-03 0.02708  2.96022E-03 0.01623  8.51813E-04 0.03096  3.05509E-04 0.05144 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.28281E-01 0.02633  1.24906E-02 7.4E-09  3.18175E-02 7.2E-05  1.09390E-01 6.2E-05  3.17111E-01 7.9E-05  1.35375E+00 5.5E-05  8.64825E+00 0.00062 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.81425E+01 0.01185 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.70109E-04 0.00036 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79665E-04 0.00028 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.59723E-03 0.00223 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.78313E+01 0.00228 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08873E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.57631E-05 8.3E-05  3.57619E-05 8.3E-05  3.59430E-05 0.00108 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.50688E-04 0.00039  7.50891E-04 0.00039  7.19095E-04 0.00480 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.00799E-01 0.00015  6.99876E-01 0.00015  8.94288E-01 0.00436 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07485E+01 0.00678 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.82871E+02 0.00023  1.76743E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.93447E+04 0.00184  3.80015E+05 0.00067  8.97684E+05 0.00037  1.66388E+06 0.00025  1.87336E+06 0.00018  1.94131E+06 0.00015  1.45922E+06 0.00014  1.14337E+06 0.00017  1.63002E+06 0.00013  1.60424E+06 0.00012  1.75026E+06 1.0E-04  1.74159E+06 9.3E-05  1.89908E+06 0.00011  1.85569E+06 0.00011  1.86272E+06 0.00011  1.63563E+06 0.00011  1.64625E+06 0.00012  1.63789E+06 0.00012  1.62909E+06 0.00012  3.22788E+06 9.9E-05  3.17254E+06 0.00010  2.32303E+06 0.00012  1.51244E+06 0.00014  1.79007E+06 0.00013  1.71025E+06 0.00016  1.45138E+06 0.00017  2.55354E+06 0.00018  5.43816E+05 0.00027  6.81685E+05 0.00028  6.13768E+05 0.00033  3.61222E+05 0.00038  6.30634E+05 0.00031  4.35024E+05 0.00032  3.79949E+05 0.00039  7.44292E+04 0.00075  7.37146E+04 0.00060  7.61068E+04 0.00071  7.84777E+04 0.00069  7.80465E+04 0.00072  7.72972E+04 0.00078  8.00288E+04 0.00061  7.58457E+04 0.00060  1.44874E+05 0.00051  2.37133E+05 0.00046  3.16315E+05 0.00039  9.80805E+05 0.00032  1.46527E+06 0.00034  2.32340E+06 0.00042  1.92948E+06 0.00045  1.54270E+06 0.00050  1.23380E+06 0.00051  1.42134E+06 0.00051  2.54163E+06 0.00052  3.12494E+06 0.00053  5.20429E+06 0.00053  6.48093E+06 0.00053  7.57590E+06 0.00053  3.98167E+06 0.00056  2.53652E+06 0.00056  1.68067E+06 0.00057  1.42634E+06 0.00059  1.35112E+06 0.00064  1.04057E+06 0.00065  6.86877E+05 0.00070  5.84133E+05 0.00076  5.33034E+05 0.00075  4.40095E+05 0.00076  3.03075E+05 0.00079  1.98238E+05 0.00097  6.26835E+04 0.00116 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.31590E+00 0.00019 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.56161E+21 0.00019  3.40123E+21 0.00056 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38982E-01 1.5E-05  3.87814E-01 4.2E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.53143E-04 0.00042  9.67912E-04 0.00039 ];
INF_ABS                   (idx, [1:   4]) = [  1.17792E-03 0.00037  2.76906E-03 0.00044 ];
INF_FISS                  (idx, [1:   4]) = [  3.24775E-04 0.00046  1.80115E-03 0.00055 ];
INF_NSF                   (idx, [1:   4]) = [  7.92908E-04 0.00046  4.38886E-03 0.00055 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44140E+00 3.7E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02320E+02 3.3E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.13724E-07 0.00011  2.10989E-06 4.4E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37804E-01 1.5E-05  3.85046E-01 4.4E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13793E-02 0.00022  1.12859E-02 0.00044 ];
INF_SCATT2                (idx, [1:   4]) = [  2.49424E-03 0.00139 -4.43585E-03 0.00090 ];
INF_SCATT3                (idx, [1:   4]) = [  4.76062E-04 0.00675 -4.07314E-03 0.00086 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.46065E-04 0.02138 -4.66282E-03 0.00056 ];
INF_SCATT5                (idx, [1:   4]) = [  1.13082E-04 0.02284 -2.72627E-03 0.00102 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.20303E-04 0.00718 -4.42966E-03 0.00055 ];
INF_SCATT7                (idx, [1:   4]) = [  1.23765E-04 0.01929 -6.27352E-04 0.00356 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37838E-01 1.5E-05  3.85046E-01 4.4E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13884E-02 0.00022  1.12859E-02 0.00044 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.49601E-03 0.00139 -4.43585E-03 0.00090 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.76371E-04 0.00675 -4.07314E-03 0.00086 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.46011E-04 0.02141 -4.66282E-03 0.00056 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.13046E-04 0.02284 -2.72627E-03 0.00102 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.20326E-04 0.00718 -4.42966E-03 0.00055 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.23739E-04 0.01932 -6.27352E-04 0.00356 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00957E-01 3.2E-05  3.75091E-01 4.4E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10758E+00 3.2E-05  8.88673E-01 4.4E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.14340E-03 0.00039  2.76906E-03 0.00044 ];
INF_REMXS                 (idx, [1:   4]) = [  5.36898E-03 0.00013  4.34687E-03 0.00039 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33613E-01 1.4E-05  4.19103E-03 0.00021  1.57802E-03 0.00043  3.83468E-01 4.5E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23217E-02 0.00022 -9.42430E-04 0.00050 -1.66549E-04 0.00174  1.14525E-02 0.00043 ];
INF_S2                    (idx, [1:   8]) = [  2.65937E-03 0.00132 -1.65129E-04 0.00239 -1.03124E-04 0.00211 -4.33272E-03 0.00092 ];
INF_S3                    (idx, [1:   8]) = [  5.18720E-04 0.00617 -4.26580E-05 0.00804 -3.69179E-05 0.00525 -4.03622E-03 0.00086 ];
INF_S4                    (idx, [1:   8]) = [ -1.11690E-04 0.02754 -3.43758E-05 0.00780 -2.36737E-05 0.00715 -4.63915E-03 0.00055 ];
INF_S5                    (idx, [1:   8]) = [  1.15548E-04 0.02212 -2.46538E-06 0.10113 -5.63252E-06 0.02593 -2.72064E-03 0.00101 ];
INF_S6                    (idx, [1:   8]) = [ -2.97090E-04 0.00753 -2.32133E-05 0.01064 -1.61633E-05 0.00856 -4.41350E-03 0.00055 ];
INF_S7                    (idx, [1:   8]) = [  1.03142E-04 0.02232  2.06230E-05 0.01099  6.61170E-06 0.02073 -6.33964E-04 0.00355 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33647E-01 1.4E-05  4.19103E-03 0.00021  1.57802E-03 0.00043  3.83468E-01 4.5E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23308E-02 0.00022 -9.42430E-04 0.00050 -1.66549E-04 0.00174  1.14525E-02 0.00043 ];
INF_SP2                   (idx, [1:   8]) = [  2.66114E-03 0.00132 -1.65129E-04 0.00239 -1.03124E-04 0.00211 -4.33272E-03 0.00092 ];
INF_SP3                   (idx, [1:   8]) = [  5.19029E-04 0.00617 -4.26580E-05 0.00804 -3.69179E-05 0.00525 -4.03622E-03 0.00086 ];
INF_SP4                   (idx, [1:   8]) = [ -1.11635E-04 0.02758 -3.43758E-05 0.00780 -2.36737E-05 0.00715 -4.63915E-03 0.00055 ];
INF_SP5                   (idx, [1:   8]) = [  1.15512E-04 0.02212 -2.46538E-06 0.10113 -5.63252E-06 0.02593 -2.72064E-03 0.00101 ];
INF_SP6                   (idx, [1:   8]) = [ -2.97113E-04 0.00753 -2.32133E-05 0.01064 -1.61633E-05 0.00856 -4.41350E-03 0.00055 ];
INF_SP7                   (idx, [1:   8]) = [  1.03117E-04 0.02235  2.06230E-05 0.01099  6.61170E-06 0.02073 -6.33964E-04 0.00355 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98808E-01 0.00020  4.26835E-01 0.00064 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99278E-01 0.00036  4.22485E-01 0.00093 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99335E-01 0.00031  4.22007E-01 0.00091 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97823E-01 0.00033  4.36378E-01 0.00092 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11555E+00 0.00020  7.80973E-01 0.00064 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11381E+00 0.00036  7.89051E-01 0.00093 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11359E+00 0.00031  7.89941E-01 0.00091 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11925E+00 0.00033  7.63927E-01 0.00092 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.55844E-03 0.00367  2.04069E-04 0.02139  1.07962E-03 0.00911  1.06891E-03 0.00918  3.01522E-03 0.00547  8.85217E-04 0.01053  3.05407E-04 0.01746 ];
LAMBDA                    (idx, [1:  14]) = [  7.54064E-01 0.00894  1.24906E-02 2.7E-07  3.18206E-02 2.0E-05  1.09401E-01 3.5E-05  3.17109E-01 3.2E-05  1.35373E+00 2.2E-05  8.64273E+00 0.00018 ];

