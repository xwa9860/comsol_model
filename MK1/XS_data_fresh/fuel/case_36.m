
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input35' ;
HOSTNAME                  (idx, [1: 12])  = 'n0063.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:36 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00117E+00  9.99535E-01  1.00212E+00  9.96609E-01  9.98198E-01  9.98736E-01  9.99214E-01  9.98727E-01  9.98250E-01  9.95996E-01  1.00540E+00  1.00428E+00  9.98535E-01  9.99645E-01  1.00548E+00  9.99234E-01  9.94687E-01  1.00242E+00  9.99004E-01  1.00276E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 3.3E-10  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.15626E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.28437E-01 2.5E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83609E-01 4.6E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87709E-01 4.6E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.54350E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.85397E+02 0.00022  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.85383E+02 0.00022  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.58972E+02 0.00028  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.57037E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002058 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.80126E+02 ;
RUNNING_TIME              (idx, 1)        =  2.93465E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.24767E-01  1.24767E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.16667E-03  1.16667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.92205E+01  2.92205E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.93461E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76820 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98447E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86623E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4755.12;
MEMSIZE                   (idx, 1)        = 788.82;
XS_MEMSIZE                (idx, 1)        = 471.49;
MAT_MEMSIZE               (idx, 1)        = 180.44;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.29;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 152131 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.36137E+15 0.00022  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.48744E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.26726E+18 0.00020  9.98345E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20493E+16 0.00745  1.65489E-03 0.00744 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71556E+18 0.00062  2.74313E-01 0.00056 ];
U238_CAPT                 (idx, [1:   4]) = [  2.23437E+18 0.00063  3.57222E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002058 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80145E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002058 2.01801E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9107548 9.18822E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10599530 1.06946E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 294980 2.97291E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002058 2.01801E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.45869E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.25503E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.35371E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.36137E+19 0.00022 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.01521E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.02392E+17 0.00223 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.37395E+19 0.00016 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.54577E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.30338E+00 0.00022  1.29478E+00 0.00022  8.60248E-03 0.00373 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30355E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.30392E+00 0.00022 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30355E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32321E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80713E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80716E+01 2.5E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.83804E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.83600E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.60984E-03 0.00567 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.59529E-03 0.00149 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.09931E-03 0.00289  1.59178E-04 0.01574  8.45448E-04 0.00688  8.17613E-04 0.00683  2.33845E-03 0.00407  6.89132E-04 0.00768  2.49486E-04 0.01274 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.73849E-01 0.00672  1.09168E-02 0.00849  3.18184E-02 2.0E-05  1.09400E-01 2.8E-05  3.17098E-01 2.1E-05  1.35305E+00 0.00050  8.29328E+00 0.00460 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.62435E-03 0.00382  2.02832E-04 0.02148  1.09453E-03 0.00924  1.06687E-03 0.00907  3.03712E-03 0.00550  8.95081E-04 0.00991  3.27913E-04 0.01725 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.77969E-01 0.00906  1.24906E-02 1.3E-07  3.18175E-02 3.3E-05  1.09399E-01 3.3E-05  3.17101E-01 2.8E-05  1.35374E+00 2.1E-05  8.64376E+00 0.00022 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.76140E-04 0.00064  3.76231E-04 0.00064  3.61749E-04 0.00744 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.90207E-04 0.00061  4.90327E-04 0.00061  4.71421E-04 0.00743 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.59676E-03 0.00381  2.05037E-04 0.02171  1.09298E-03 0.00931  1.06372E-03 0.00933  3.01726E-03 0.00563  8.92615E-04 0.01031  3.25149E-04 0.01752 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.76975E-01 0.00926  1.24906E-02 1.3E-07  3.18180E-02 3.0E-05  1.09400E-01 4.0E-05  3.17100E-01 3.0E-05  1.35372E+00 2.6E-05  8.64406E+00 0.00025 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.59973E-04 0.00146  3.60037E-04 0.00147  3.48592E-04 0.01889 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.69144E-04 0.00145  4.69227E-04 0.00146  4.54480E-04 0.01893 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.57701E-03 0.01154  1.95438E-04 0.06958  1.10131E-03 0.02842  1.01433E-03 0.02933  3.04971E-03 0.01719  8.92588E-04 0.03124  3.23638E-04 0.05051 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.84506E-01 0.02823  1.24906E-02 7.5E-09  3.18163E-02 8.5E-05  1.09404E-01 0.00010  3.17074E-01 7.0E-05  1.35375E+00 5.6E-05  8.64770E+00 0.00058 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.57442E-03 0.01121  1.93585E-04 0.06819  1.10197E-03 0.02749  1.01484E-03 0.02821  3.04184E-03 0.01669  8.97143E-04 0.03035  3.25045E-04 0.04896 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.84079E-01 0.02734  1.24906E-02 7.5E-09  3.18163E-02 8.4E-05  1.09405E-01 0.00010  3.17068E-01 6.5E-05  1.35375E+00 5.6E-05  8.64766E+00 0.00058 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.83419E+01 0.01167 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.68587E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.80361E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.58105E-03 0.00222 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.78596E+01 0.00224 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08739E-06 0.00019 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59060E-05 8.7E-05  3.59048E-05 8.8E-05  3.60901E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.54389E-04 0.00038  7.54611E-04 0.00038  7.19829E-04 0.00486 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.06099E-01 0.00015  7.05131E-01 0.00015  9.10505E-01 0.00455 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07532E+01 0.00652 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.85383E+02 0.00022  1.78587E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.92291E+04 0.00164  3.79524E+05 0.00081  8.96588E+05 0.00039  1.66378E+06 0.00027  1.87282E+06 0.00018  1.94156E+06 0.00015  1.45933E+06 0.00016  1.14321E+06 0.00017  1.62970E+06 0.00013  1.60433E+06 0.00010  1.75050E+06 0.00010  1.74173E+06 0.00010  1.89934E+06 0.00011  1.85600E+06 9.7E-05  1.86284E+06 0.00011  1.63591E+06 0.00011  1.64701E+06 0.00011  1.63849E+06 9.9E-05  1.62944E+06 9.5E-05  3.22899E+06 8.5E-05  3.17344E+06 9.4E-05  2.32526E+06 9.9E-05  1.51452E+06 0.00013  1.79672E+06 0.00012  1.71925E+06 0.00013  1.46083E+06 0.00016  2.57823E+06 0.00012  5.50357E+05 0.00026  6.90083E+05 0.00022  6.23366E+05 0.00027  3.67244E+05 0.00033  6.42551E+05 0.00026  4.44462E+05 0.00038  3.89600E+05 0.00040  7.65212E+04 0.00062  7.61093E+04 0.00071  7.84161E+04 0.00081  8.10480E+04 0.00058  8.07043E+04 0.00077  8.01906E+04 0.00071  8.30271E+04 0.00072  7.89564E+04 0.00058  1.51284E+05 0.00047  2.49036E+05 0.00047  3.35786E+05 0.00041  1.06181E+06 0.00026  1.61032E+06 0.00029  2.53406E+06 0.00034  2.07652E+06 0.00039  1.64411E+06 0.00039  1.30723E+06 0.00041  1.49579E+06 0.00042  2.65769E+06 0.00041  3.23834E+06 0.00042  5.34069E+06 0.00043  6.57543E+06 0.00046  7.60621E+06 0.00046  3.97041E+06 0.00050  2.52048E+06 0.00053  1.66687E+06 0.00053  1.41227E+06 0.00054  1.33663E+06 0.00056  1.02858E+06 0.00055  6.78293E+05 0.00059  5.75784E+05 0.00069  5.26155E+05 0.00070  4.35042E+05 0.00070  2.98181E+05 0.00078  1.95774E+05 0.00093  6.17914E+04 0.00127 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32360E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.55789E+21 0.00021  3.45739E+21 0.00051 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38959E-01 1.6E-05  3.87523E-01 4.2E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.28286E-04 0.00036  9.56810E-04 0.00038 ];
INF_ABS                   (idx, [1:   4]) = [  1.15812E-03 0.00032  2.72385E-03 0.00041 ];
INF_FISS                  (idx, [1:   4]) = [  3.29831E-04 0.00041  1.76704E-03 0.00051 ];
INF_NSF                   (idx, [1:   4]) = [  8.05217E-04 0.00041  4.30575E-03 0.00051 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44130E+00 4.0E-06  2.43670E+00 3.0E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.2E-07  2.02270E+02 1.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.16215E-07 8.7E-05  2.08695E-06 4.3E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37801E-01 1.6E-05  3.84800E-01 4.4E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13562E-02 0.00022  1.14195E-02 0.00042 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48282E-03 0.00156 -4.36549E-03 0.00096 ];
INF_SCATT3                (idx, [1:   4]) = [  4.69837E-04 0.00646 -4.00815E-03 0.00079 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.51203E-04 0.01848 -4.65050E-03 0.00063 ];
INF_SCATT5                (idx, [1:   4]) = [  1.20430E-04 0.01962 -2.69954E-03 0.00095 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.35547E-04 0.00630 -4.47907E-03 0.00056 ];
INF_SCATT7                (idx, [1:   4]) = [  1.38531E-04 0.01592 -6.14372E-04 0.00370 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37836E-01 1.6E-05  3.84800E-01 4.4E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13653E-02 0.00022  1.14195E-02 0.00042 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48451E-03 0.00156 -4.36549E-03 0.00096 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.70087E-04 0.00646 -4.00815E-03 0.00079 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.51167E-04 0.01846 -4.65050E-03 0.00063 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.20394E-04 0.01959 -2.69954E-03 0.00095 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.35542E-04 0.00631 -4.47907E-03 0.00056 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.38495E-04 0.01591 -6.14372E-04 0.00370 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01045E-01 3.3E-05  3.74598E-01 4.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10725E+00 3.3E-05  8.89844E-01 4.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.12365E-03 0.00034  2.72385E-03 0.00041 ];
INF_REMXS                 (idx, [1:   4]) = [  5.64556E-03 0.00013  4.57738E-03 0.00037 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33313E-01 1.6E-05  4.48775E-03 0.00018  1.85428E-03 0.00042  3.82945E-01 4.4E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23406E-02 0.00021 -9.84389E-04 0.00049 -2.08263E-04 0.00180  1.16278E-02 0.00041 ];
INF_S2                    (idx, [1:   8]) = [  2.66504E-03 0.00142 -1.82212E-04 0.00234 -1.18178E-04 0.00214 -4.24731E-03 0.00097 ];
INF_S3                    (idx, [1:   8]) = [  5.17447E-04 0.00577 -4.76105E-05 0.00705 -4.21137E-05 0.00516 -3.96604E-03 0.00080 ];
INF_S4                    (idx, [1:   8]) = [ -1.12916E-04 0.02487 -3.82863E-05 0.00804 -2.67391E-05 0.00667 -4.62376E-03 0.00064 ];
INF_S5                    (idx, [1:   8]) = [  1.23344E-04 0.01876 -2.91465E-06 0.09005 -6.94361E-06 0.02498 -2.69260E-03 0.00095 ];
INF_S6                    (idx, [1:   8]) = [ -3.09727E-04 0.00673 -2.58193E-05 0.00921 -1.82864E-05 0.00846 -4.46079E-03 0.00056 ];
INF_S7                    (idx, [1:   8]) = [  1.16861E-04 0.01858  2.16693E-05 0.01115  8.24550E-06 0.01705 -6.22618E-04 0.00362 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33348E-01 1.6E-05  4.48775E-03 0.00018  1.85428E-03 0.00042  3.82945E-01 4.4E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23497E-02 0.00021 -9.84389E-04 0.00049 -2.08263E-04 0.00180  1.16278E-02 0.00041 ];
INF_SP2                   (idx, [1:   8]) = [  2.66673E-03 0.00142 -1.82212E-04 0.00234 -1.18178E-04 0.00214 -4.24731E-03 0.00097 ];
INF_SP3                   (idx, [1:   8]) = [  5.17697E-04 0.00576 -4.76105E-05 0.00705 -4.21137E-05 0.00516 -3.96604E-03 0.00080 ];
INF_SP4                   (idx, [1:   8]) = [ -1.12881E-04 0.02486 -3.82863E-05 0.00804 -2.67391E-05 0.00667 -4.62376E-03 0.00064 ];
INF_SP5                   (idx, [1:   8]) = [  1.23309E-04 0.01874 -2.91465E-06 0.09005 -6.94361E-06 0.02498 -2.69260E-03 0.00095 ];
INF_SP6                   (idx, [1:   8]) = [ -3.09723E-04 0.00674 -2.58193E-05 0.00921 -1.82864E-05 0.00846 -4.46079E-03 0.00056 ];
INF_SP7                   (idx, [1:   8]) = [  1.16826E-04 0.01857  2.16693E-05 0.01115  8.24550E-06 0.01705 -6.22618E-04 0.00362 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98751E-01 0.00025  4.25357E-01 0.00055 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99243E-01 0.00032  4.20201E-01 0.00094 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99307E-01 0.00038  4.20944E-01 0.00093 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97714E-01 0.00040  4.35334E-01 0.00094 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11576E+00 0.00025  7.83680E-01 0.00055 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11393E+00 0.00032  7.93340E-01 0.00093 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11370E+00 0.00038  7.91938E-01 0.00093 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11966E+00 0.00040  7.65762E-01 0.00094 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.62435E-03 0.00382  2.02832E-04 0.02148  1.09453E-03 0.00924  1.06687E-03 0.00907  3.03712E-03 0.00550  8.95081E-04 0.00991  3.27913E-04 0.01725 ];
LAMBDA                    (idx, [1:  14]) = [  7.77969E-01 0.00906  1.24906E-02 1.3E-07  3.18175E-02 3.3E-05  1.09399E-01 3.3E-05  3.17101E-01 2.8E-05  1.35374E+00 2.1E-05  8.64376E+00 0.00022 ];

