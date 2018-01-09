
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input38' ;
HOSTNAME                  (idx, [1: 12])  = 'n0066.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:41 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.95672E-01  9.94807E-01  1.00007E+00  1.00285E+00  1.00762E+00  9.92303E-01  9.97708E-01  1.00055E+00  9.96348E-01  1.00244E+00  9.99716E-01  1.00378E+00  9.89933E-01  1.00361E+00  1.00130E+00  1.00117E+00  9.97956E-01  1.00242E+00  1.00304E+00  1.00671E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  6.89388E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.31061E-01 2.4E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.82171E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.86181E-01 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.33776E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.86094E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.86079E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.64150E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.42532E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001929 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00030 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00030 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.82034E+02 ;
RUNNING_TIME              (idx, 1)        =  2.94374E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.25317E-01  1.25317E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.38333E-03  1.38333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.93107E+01  2.93107E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.94370E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77190 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98465E+01 0.00012 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86877E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4797.99;
MEMSIZE                   (idx, 1)        = 831.45;
XS_MEMSIZE                (idx, 1)        = 499.19;
MAT_MEMSIZE               (idx, 1)        = 195.36;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.54;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 164751 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34807E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.34807E-01 0.00064 ];
U235_FISS                 (idx, [1:   4]) = [  7.27234E+18 0.00020  9.98368E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.18914E+16 0.00764  1.63240E-03 0.00763 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71254E+18 0.00060  2.79885E-01 0.00053 ];
U238_CAPT                 (idx, [1:   4]) = [  2.10967E+18 0.00063  3.44752E-01 0.00046 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001929 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80563E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001929 2.01806E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8997687 9.07802E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10711465 1.08075E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 292777 2.95078E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001929 2.01806E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.86847E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.2E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.11803E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34001E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34807E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.97364E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.98918E+17 0.00222 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35990E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.53052E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.6E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31711E+00 0.00022  1.30843E+00 0.00022  8.69453E-03 0.00372 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31703E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31678E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31703E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33675E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80767E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80781E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.82285E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.81778E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.55137E-03 0.00571 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.50191E-03 0.00153 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.04920E-03 0.00286  1.63482E-04 0.01541  8.34700E-04 0.00677  8.12181E-04 0.00709  2.31950E-03 0.00419  6.82549E-04 0.00764  2.36790E-04 0.01298 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.57965E-01 0.00665  1.09979E-02 0.00824  3.18193E-02 1.9E-05  1.09399E-01 2.5E-05  3.17100E-01 2.2E-05  1.35370E+00 1.9E-05  8.29071E+00 0.00463 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.59627E-03 0.00372  2.14042E-04 0.02080  1.09235E-03 0.00909  1.06932E-03 0.00937  3.01749E-03 0.00559  8.92511E-04 0.01015  3.10547E-04 0.01732 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.60656E-01 0.00906  1.24906E-02 2.0E-07  3.18183E-02 3.2E-05  1.09398E-01 3.3E-05  3.17097E-01 2.6E-05  1.35368E+00 2.6E-05  8.64352E+00 0.00018 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.70625E-04 0.00064  3.70743E-04 0.00064  3.52698E-04 0.00736 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.88104E-04 0.00060  4.88260E-04 0.00060  4.64528E-04 0.00736 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.60166E-03 0.00379  2.12987E-04 0.02135  1.08909E-03 0.00939  1.06747E-03 0.00933  3.03517E-03 0.00572  8.92438E-04 0.01027  3.04502E-04 0.01758 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.51793E-01 0.00910  1.24906E-02 2.7E-07  3.18184E-02 3.7E-05  1.09396E-01 3.1E-05  3.17101E-01 3.0E-05  1.35368E+00 2.9E-05  8.64232E+00 0.00019 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.55317E-04 0.00144  3.55467E-04 0.00145  3.35876E-04 0.01841 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.67937E-04 0.00142  4.68135E-04 0.00143  4.42328E-04 0.01840 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.69679E-03 0.01116  2.21982E-04 0.05963  1.11136E-03 0.02860  1.05944E-03 0.02819  3.08400E-03 0.01684  8.96639E-04 0.03123  3.23375E-04 0.05143 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.51807E-01 0.02632  1.24906E-02 7.4E-07  3.18208E-02 4.9E-05  1.09385E-01 4.1E-05  3.17131E-01 9.9E-05  1.35361E+00 7.1E-05  8.63705E+00 7.8E-05 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.69094E-03 0.01085  2.18487E-04 0.05792  1.10790E-03 0.02767  1.05415E-03 0.02760  3.08610E-03 0.01631  9.00395E-04 0.03027  3.23915E-04 0.04990 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.58425E-01 0.02572  1.24906E-02 7.3E-07  3.18209E-02 4.7E-05  1.09385E-01 4.0E-05  3.17130E-01 9.5E-05  1.35362E+00 6.9E-05  8.63739E+00 0.00012 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.89027E+01 0.01122 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.63268E-04 0.00036 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.78419E-04 0.00029 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.66895E-03 0.00212 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.83634E+01 0.00215 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08945E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59207E-05 8.2E-05  3.59197E-05 8.2E-05  3.60896E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.51399E-04 0.00040  7.51615E-04 0.00040  7.18224E-04 0.00495 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.12905E-01 0.00015  7.11898E-01 0.00015  9.26756E-01 0.00439 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08837E+01 0.00684 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.86079E+02 0.00023  1.78258E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.92522E+04 0.00172  3.79487E+05 0.00071  8.96705E+05 0.00045  1.66435E+06 0.00030  1.87281E+06 0.00020  1.94151E+06 0.00017  1.45900E+06 0.00014  1.14285E+06 0.00018  1.62945E+06 0.00015  1.60434E+06 0.00011  1.75046E+06 0.00010  1.74192E+06 0.00011  1.89938E+06 9.0E-05  1.85590E+06 0.00011  1.86305E+06 9.4E-05  1.63562E+06 0.00011  1.64681E+06 0.00013  1.63822E+06 0.00011  1.62976E+06 0.00012  3.22869E+06 8.3E-05  3.17451E+06 8.6E-05  2.32690E+06 9.7E-05  1.51664E+06 0.00013  1.80116E+06 0.00014  1.72794E+06 0.00014  1.46926E+06 0.00016  2.60046E+06 0.00015  5.56491E+05 0.00025  6.97259E+05 0.00028  6.29650E+05 0.00033  3.70953E+05 0.00036  6.48714E+05 0.00028  4.48816E+05 0.00032  3.93205E+05 0.00040  7.72753E+04 0.00062  7.67127E+04 0.00076  7.93127E+04 0.00071  8.18898E+04 0.00064  8.14807E+04 0.00071  8.09434E+04 0.00067  8.39535E+04 0.00062  7.96869E+04 0.00059  1.52616E+05 0.00049  2.51414E+05 0.00044  3.38676E+05 0.00039  1.07063E+06 0.00033  1.62222E+06 0.00039  2.55073E+06 0.00045  2.08940E+06 0.00051  1.65337E+06 0.00054  1.31432E+06 0.00054  1.50406E+06 0.00052  2.67228E+06 0.00055  3.25615E+06 0.00055  5.37077E+06 0.00054  6.61250E+06 0.00057  7.65024E+06 0.00060  3.99400E+06 0.00061  2.53507E+06 0.00065  1.67656E+06 0.00066  1.42027E+06 0.00070  1.34396E+06 0.00068  1.03383E+06 0.00064  6.81930E+05 0.00073  5.79295E+05 0.00068  5.28459E+05 0.00079  4.37910E+05 0.00083  2.99590E+05 0.00095  1.96862E+05 0.00090  6.20582E+04 0.00137 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33649E+00 0.00020 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.53032E+21 0.00019  3.44336E+21 0.00061 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38902E-01 1.6E-05  3.87443E-01 4.1E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.97851E-04 0.00038  9.58763E-04 0.00038 ];
INF_ABS                   (idx, [1:   4]) = [  1.12895E-03 0.00033  2.73435E-03 0.00048 ];
INF_FISS                  (idx, [1:   4]) = [  3.31098E-04 0.00042  1.77559E-03 0.00060 ];
INF_NSF                   (idx, [1:   4]) = [  8.08300E-04 0.00042  4.32657E-03 0.00060 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44127E+00 4.5E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02318E+02 3.9E-07  2.02270E+02 1.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.16867E-07 0.00011  2.08678E-06 4.3E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37772E-01 1.6E-05  3.84708E-01 4.3E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13500E-02 0.00023  1.14104E-02 0.00045 ];
INF_SCATT2                (idx, [1:   4]) = [  2.47790E-03 0.00131 -4.36160E-03 0.00083 ];
INF_SCATT3                (idx, [1:   4]) = [  4.72364E-04 0.00692 -4.01021E-03 0.00070 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.54203E-04 0.01771 -4.64813E-03 0.00066 ];
INF_SCATT5                (idx, [1:   4]) = [  1.17067E-04 0.02144 -2.70074E-03 0.00096 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.39852E-04 0.00646 -4.47918E-03 0.00056 ];
INF_SCATT7                (idx, [1:   4]) = [  1.36840E-04 0.01534 -6.13965E-04 0.00366 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37806E-01 1.6E-05  3.84708E-01 4.3E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13591E-02 0.00023  1.14104E-02 0.00045 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.47954E-03 0.00131 -4.36160E-03 0.00083 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.72557E-04 0.00691 -4.01021E-03 0.00070 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.54221E-04 0.01773 -4.64813E-03 0.00066 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.17036E-04 0.02145 -2.70074E-03 0.00096 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.39874E-04 0.00646 -4.47918E-03 0.00056 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.36845E-04 0.01534 -6.13965E-04 0.00366 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01039E-01 3.3E-05  3.74527E-01 4.5E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10728E+00 3.3E-05  8.90011E-01 4.5E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.09448E-03 0.00034  2.73435E-03 0.00048 ];
INF_REMXS                 (idx, [1:   4]) = [  5.64410E-03 0.00017  4.58828E-03 0.00042 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33257E-01 1.5E-05  4.51451E-03 0.00025  1.85376E-03 0.00045  3.82854E-01 4.4E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23408E-02 0.00022 -9.90838E-04 0.00051 -2.08158E-04 0.00169  1.16186E-02 0.00044 ];
INF_S2                    (idx, [1:   8]) = [  2.66032E-03 0.00121 -1.82429E-04 0.00225 -1.17807E-04 0.00241 -4.24379E-03 0.00085 ];
INF_S3                    (idx, [1:   8]) = [  5.20539E-04 0.00628 -4.81754E-05 0.00666 -4.21440E-05 0.00520 -3.96807E-03 0.00071 ];
INF_S4                    (idx, [1:   8]) = [ -1.15505E-04 0.02343 -3.86986E-05 0.00673 -2.73659E-05 0.00655 -4.62077E-03 0.00066 ];
INF_S5                    (idx, [1:   8]) = [  1.20495E-04 0.02054 -3.42877E-06 0.07468 -6.54054E-06 0.02351 -2.69420E-03 0.00096 ];
INF_S6                    (idx, [1:   8]) = [ -3.14188E-04 0.00704 -2.56632E-05 0.01055 -1.83604E-05 0.00909 -4.46082E-03 0.00056 ];
INF_S7                    (idx, [1:   8]) = [  1.14468E-04 0.01830  2.23723E-05 0.01070  8.26038E-06 0.01995 -6.22225E-04 0.00359 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33292E-01 1.5E-05  4.51451E-03 0.00025  1.85376E-03 0.00045  3.82854E-01 4.4E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23499E-02 0.00021 -9.90838E-04 0.00051 -2.08158E-04 0.00169  1.16186E-02 0.00044 ];
INF_SP2                   (idx, [1:   8]) = [  2.66196E-03 0.00121 -1.82429E-04 0.00225 -1.17807E-04 0.00241 -4.24379E-03 0.00085 ];
INF_SP3                   (idx, [1:   8]) = [  5.20733E-04 0.00627 -4.81754E-05 0.00666 -4.21440E-05 0.00520 -3.96807E-03 0.00071 ];
INF_SP4                   (idx, [1:   8]) = [ -1.15523E-04 0.02346 -3.86986E-05 0.00673 -2.73659E-05 0.00655 -4.62077E-03 0.00066 ];
INF_SP5                   (idx, [1:   8]) = [  1.20465E-04 0.02055 -3.42877E-06 0.07468 -6.54054E-06 0.02351 -2.69420E-03 0.00096 ];
INF_SP6                   (idx, [1:   8]) = [ -3.14211E-04 0.00703 -2.56632E-05 0.01055 -1.83604E-05 0.00909 -4.46082E-03 0.00056 ];
INF_SP7                   (idx, [1:   8]) = [  1.14473E-04 0.01830  2.23723E-05 0.01070  8.26038E-06 0.01995 -6.22225E-04 0.00359 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98866E-01 0.00022  4.25349E-01 0.00059 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99448E-01 0.00036  4.20486E-01 0.00097 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99375E-01 0.00032  4.20378E-01 0.00088 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97789E-01 0.00036  4.35603E-01 0.00093 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11533E+00 0.00022  7.83698E-01 0.00059 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11317E+00 0.00036  7.92807E-01 0.00097 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11344E+00 0.00032  7.92998E-01 0.00088 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11938E+00 0.00036  7.65287E-01 0.00093 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.59627E-03 0.00372  2.14042E-04 0.02080  1.09235E-03 0.00909  1.06932E-03 0.00937  3.01749E-03 0.00559  8.92511E-04 0.01015  3.10547E-04 0.01732 ];
LAMBDA                    (idx, [1:  14]) = [  7.60656E-01 0.00906  1.24906E-02 2.0E-07  3.18183E-02 3.2E-05  1.09398E-01 3.3E-05  3.17097E-01 2.6E-05  1.35368E+00 2.6E-05  8.64352E+00 0.00018 ];

