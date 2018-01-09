
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input24' ;
HOSTNAME                  (idx, [1: 12])  = 'n0052.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:38 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.97717E-01  1.00232E+00  1.00053E+00  9.99225E-01  9.98230E-01  1.00423E+00  1.00329E+00  9.97107E-01  1.00098E+00  1.00081E+00  9.99932E-01  1.00472E+00  9.97983E-01  9.94938E-01  9.98881E-01  9.96285E-01  1.00175E+00  9.95932E-01  1.00425E+00  1.00089E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 4.7E-10  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.61342E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.23866E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.82828E-01 4.8E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87066E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.84286E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.83410E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.83395E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.55480E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.85719E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001981 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.80635E+02 ;
RUNNING_TIME              (idx, 1)        =  2.93824E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.30933E-01  1.30933E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.25000E-03  1.25000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.92502E+01  2.92502E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.93821E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76134 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98434E+01 0.00014 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86571E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4756.80;
MEMSIZE                   (idx, 1)        = 790.73;
XS_MEMSIZE                (idx, 1)        = 472.75;
MAT_MEMSIZE               (idx, 1)        = 181.09;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.07;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 152680 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35624E+15 0.00022  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.46988E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.26877E+18 0.00020  9.98363E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.19216E+16 0.00761  1.63726E-03 0.00760 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70582E+18 0.00062  2.75031E-01 0.00056 ];
U238_CAPT                 (idx, [1:   4]) = [  2.21658E+18 0.00063  3.57345E-01 0.00046 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001981 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79960E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001981 2.01800E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9066019 9.14652E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10641952 1.07371E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 294010 2.96347E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001981 2.01800E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.23517E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.20149E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34835E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35624E+19 0.00022 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.91611E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.00988E+17 0.00226 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36845E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.50907E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.30851E+00 0.00022  1.29992E+00 0.00021  8.62392E-03 0.00369 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30881E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.30885E+00 0.00022 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30881E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32849E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81485E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81475E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.62742E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.62880E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.50003E-03 0.00565 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.56689E-03 0.00150 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.06854E-03 0.00281  1.61214E-04 0.01571  8.42759E-04 0.00678  8.23088E-04 0.00701  2.32156E-03 0.00414  6.79962E-04 0.00768  2.39953E-04 0.01310 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.58254E-01 0.00671  1.09979E-02 0.00824  3.18191E-02 2.0E-05  1.09391E-01 2.0E-05  3.17095E-01 2.1E-05  1.35300E+00 0.00050  8.28865E+00 0.00466 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.59619E-03 0.00371  2.12739E-04 0.02095  1.08864E-03 0.00912  1.07378E-03 0.00914  3.02636E-03 0.00550  8.82997E-04 0.01041  3.11671E-04 0.01745 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.57257E-01 0.00895  1.24906E-02 2.4E-07  3.18197E-02 2.2E-05  1.09391E-01 2.4E-05  3.17101E-01 2.8E-05  1.35365E+00 2.6E-05  8.64692E+00 0.00025 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.72119E-04 0.00065  3.72249E-04 0.00065  3.52109E-04 0.00737 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.86873E-04 0.00061  4.87043E-04 0.00061  4.60729E-04 0.00737 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.58894E-03 0.00375  2.11853E-04 0.02135  1.08824E-03 0.00927  1.06761E-03 0.00936  3.02395E-03 0.00560  8.85419E-04 0.01058  3.11874E-04 0.01773 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.58900E-01 0.00931  1.24906E-02 2.7E-07  3.18194E-02 2.6E-05  1.09395E-01 3.3E-05  3.17104E-01 3.0E-05  1.35364E+00 3.0E-05  8.64602E+00 0.00026 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.56950E-04 0.00142  3.57007E-04 0.00143  3.47221E-04 0.01854 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.67031E-04 0.00141  4.67105E-04 0.00141  4.54291E-04 0.01855 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.48568E-03 0.01142  2.05155E-04 0.06398  1.04450E-03 0.02776  1.06698E-03 0.02875  2.98140E-03 0.01646  8.64464E-04 0.03117  3.23177E-04 0.05286 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.71773E-01 0.02784  1.24906E-02 1.0E-06  3.18171E-02 8.4E-05  1.09396E-01 8.8E-05  3.17104E-01 8.4E-05  1.35360E+00 7.3E-05  8.65131E+00 0.00067 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.45872E-03 0.01114  2.07763E-04 0.06234  1.04585E-03 0.02699  1.06541E-03 0.02802  2.96292E-03 0.01593  8.58530E-04 0.03074  3.18237E-04 0.05145 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.66820E-01 0.02697  1.24906E-02 1.0E-06  3.18172E-02 8.4E-05  1.09396E-01 8.7E-05  3.17107E-01 8.2E-05  1.35361E+00 7.2E-05  8.65089E+00 0.00066 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.82288E+01 0.01145 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.64851E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.77363E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.58258E-03 0.00217 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.80478E+01 0.00221 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.09004E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.57836E-05 8.4E-05  3.57832E-05 8.4E-05  3.58502E-05 0.00105 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.47187E-04 0.00039  7.47430E-04 0.00039  7.09094E-04 0.00480 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.06978E-01 0.00015  7.06011E-01 0.00015  9.11382E-01 0.00438 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08026E+01 0.00664 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.83395E+02 0.00023  1.76413E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.95962E+04 0.00163  3.79952E+05 0.00081  8.97504E+05 0.00039  1.66424E+06 0.00028  1.87351E+06 0.00022  1.94160E+06 0.00017  1.45899E+06 0.00014  1.14292E+06 0.00017  1.62963E+06 0.00013  1.60439E+06 0.00012  1.74997E+06 0.00012  1.74171E+06 0.00011  1.89883E+06 0.00011  1.85556E+06 0.00011  1.86260E+06 0.00011  1.63565E+06 0.00011  1.64706E+06 0.00010  1.63816E+06 0.00011  1.62899E+06 0.00012  3.22852E+06 9.8E-05  3.17347E+06 9.8E-05  2.32560E+06 0.00012  1.51445E+06 0.00014  1.79497E+06 0.00013  1.71928E+06 0.00013  1.45975E+06 0.00015  2.57440E+06 0.00016  5.48646E+05 0.00028  6.87921E+05 0.00026  6.19839E+05 0.00026  3.64645E+05 0.00035  6.36686E+05 0.00031  4.39171E+05 0.00038  3.83347E+05 0.00036  7.51986E+04 0.00071  7.45640E+04 0.00068  7.68230E+04 0.00058  7.92268E+04 0.00069  7.87147E+04 0.00066  7.79747E+04 0.00063  8.06507E+04 0.00073  7.66085E+04 0.00070  1.46138E+05 0.00050  2.39418E+05 0.00042  3.19220E+05 0.00039  9.88666E+05 0.00031  1.47502E+06 0.00036  2.33516E+06 0.00043  1.93885E+06 0.00044  1.54903E+06 0.00046  1.23917E+06 0.00047  1.42686E+06 0.00053  2.55199E+06 0.00049  3.13728E+06 0.00050  5.22585E+06 0.00052  6.50682E+06 0.00053  7.60507E+06 0.00052  3.99826E+06 0.00055  2.54613E+06 0.00058  1.68811E+06 0.00060  1.43194E+06 0.00055  1.35621E+06 0.00060  1.04496E+06 0.00062  6.89351E+05 0.00064  5.86170E+05 0.00063  5.34831E+05 0.00071  4.42168E+05 0.00065  3.04083E+05 0.00079  1.99319E+05 0.00093  6.30457E+04 0.00129 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32854E+00 0.00019 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.53402E+21 0.00019  3.38218E+21 0.00053 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38929E-01 1.7E-05  3.87715E-01 4.1E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.26143E-04 0.00033  9.70348E-04 0.00037 ];
INF_ABS                   (idx, [1:   4]) = [  1.15224E-03 0.00030  2.78292E-03 0.00043 ];
INF_FISS                  (idx, [1:   4]) = [  3.26098E-04 0.00044  1.81257E-03 0.00052 ];
INF_NSF                   (idx, [1:   4]) = [  7.96128E-04 0.00044  4.41669E-03 0.00052 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44137E+00 3.7E-06  2.43670E+00 2.6E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.2E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.14335E-07 9.1E-05  2.10973E-06 3.9E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37776E-01 1.7E-05  3.84932E-01 4.3E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13669E-02 0.00023  1.12804E-02 0.00047 ];
INF_SCATT2                (idx, [1:   4]) = [  2.49297E-03 0.00154 -4.43402E-03 0.00083 ];
INF_SCATT3                (idx, [1:   4]) = [  4.71376E-04 0.00645 -4.06457E-03 0.00089 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.45121E-04 0.01939 -4.65564E-03 0.00061 ];
INF_SCATT5                (idx, [1:   4]) = [  1.16050E-04 0.02196 -2.72493E-03 0.00083 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.22077E-04 0.00716 -4.42520E-03 0.00056 ];
INF_SCATT7                (idx, [1:   4]) = [  1.24908E-04 0.01962 -6.28606E-04 0.00369 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37811E-01 1.7E-05  3.84932E-01 4.3E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13761E-02 0.00023  1.12804E-02 0.00047 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.49468E-03 0.00154 -4.43402E-03 0.00083 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.71662E-04 0.00645 -4.06457E-03 0.00089 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.45063E-04 0.01941 -4.65564E-03 0.00061 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.16061E-04 0.02200 -2.72493E-03 0.00083 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.22068E-04 0.00717 -4.42520E-03 0.00056 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.24927E-04 0.01961 -6.28606E-04 0.00369 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00953E-01 3.2E-05  3.74997E-01 4.5E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10759E+00 3.2E-05  8.88897E-01 4.5E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.11771E-03 0.00031  2.78292E-03 0.00043 ];
INF_REMXS                 (idx, [1:   4]) = [  5.36629E-03 0.00016  4.36189E-03 0.00039 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33562E-01 1.6E-05  4.21391E-03 0.00024  1.57930E-03 0.00048  3.83353E-01 4.4E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23146E-02 0.00022 -9.47732E-04 0.00047 -1.66392E-04 0.00196  1.14468E-02 0.00046 ];
INF_S2                    (idx, [1:   8]) = [  2.65823E-03 0.00143 -1.65259E-04 0.00239 -1.03273E-04 0.00229 -4.33075E-03 0.00084 ];
INF_S3                    (idx, [1:   8]) = [  5.14553E-04 0.00592 -4.31767E-05 0.00705 -3.72394E-05 0.00568 -4.02733E-03 0.00090 ];
INF_S4                    (idx, [1:   8]) = [ -1.10422E-04 0.02548 -3.46991E-05 0.00821 -2.36925E-05 0.00656 -4.63195E-03 0.00061 ];
INF_S5                    (idx, [1:   8]) = [  1.18812E-04 0.02156 -2.76280E-06 0.09374 -5.79162E-06 0.02513 -2.71914E-03 0.00084 ];
INF_S6                    (idx, [1:   8]) = [ -2.98705E-04 0.00768 -2.33719E-05 0.00933 -1.59802E-05 0.00777 -4.40922E-03 0.00056 ];
INF_S7                    (idx, [1:   8]) = [  1.03922E-04 0.02338  2.09861E-05 0.01117  6.51009E-06 0.02037 -6.35116E-04 0.00361 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33597E-01 1.6E-05  4.21391E-03 0.00024  1.57930E-03 0.00048  3.83353E-01 4.4E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23238E-02 0.00022 -9.47732E-04 0.00047 -1.66392E-04 0.00196  1.14468E-02 0.00046 ];
INF_SP2                   (idx, [1:   8]) = [  2.65994E-03 0.00143 -1.65259E-04 0.00239 -1.03273E-04 0.00229 -4.33075E-03 0.00084 ];
INF_SP3                   (idx, [1:   8]) = [  5.14839E-04 0.00592 -4.31767E-05 0.00705 -3.72394E-05 0.00568 -4.02733E-03 0.00090 ];
INF_SP4                   (idx, [1:   8]) = [ -1.10364E-04 0.02552 -3.46991E-05 0.00821 -2.36925E-05 0.00656 -4.63195E-03 0.00061 ];
INF_SP5                   (idx, [1:   8]) = [  1.18824E-04 0.02160 -2.76280E-06 0.09374 -5.79162E-06 0.02513 -2.71914E-03 0.00084 ];
INF_SP6                   (idx, [1:   8]) = [ -2.98696E-04 0.00769 -2.33719E-05 0.00933 -1.59802E-05 0.00777 -4.40922E-03 0.00056 ];
INF_SP7                   (idx, [1:   8]) = [  1.03941E-04 0.02337  2.09861E-05 0.01117  6.51009E-06 0.02037 -6.35116E-04 0.00361 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98768E-01 0.00023  4.26149E-01 0.00060 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99284E-01 0.00040  4.21429E-01 0.00082 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99245E-01 0.00036  4.21601E-01 0.00102 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97788E-01 0.00035  4.35795E-01 0.00095 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11570E+00 0.00023  7.82228E-01 0.00060 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11379E+00 0.00040  7.91013E-01 0.00082 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11393E+00 0.00036  7.90718E-01 0.00102 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11938E+00 0.00035  7.64954E-01 0.00096 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.59619E-03 0.00371  2.12739E-04 0.02095  1.08864E-03 0.00912  1.07378E-03 0.00914  3.02636E-03 0.00550  8.82997E-04 0.01041  3.11671E-04 0.01745 ];
LAMBDA                    (idx, [1:  14]) = [  7.57257E-01 0.00895  1.24906E-02 2.4E-07  3.18197E-02 2.2E-05  1.09391E-01 2.4E-05  3.17101E-01 2.8E-05  1.35365E+00 2.6E-05  8.64692E+00 0.00025 ];

