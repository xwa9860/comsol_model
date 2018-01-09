
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input42' ;
HOSTNAME                  (idx, [1: 12])  = 'n0070.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:21 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00205E+00  9.99328E-01  9.99438E-01  9.96926E-01  9.99131E-01  9.99403E-01  1.00205E+00  1.00253E+00  9.96824E-01  1.00348E+00  1.00146E+00  1.00109E+00  9.98921E-01  9.99429E-01  9.97397E-01  1.00136E+00  1.00018E+00  1.00077E+00  9.99341E-01  9.98889E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.03109E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.29689E-01 2.5E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.84331E-01 5.0E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.88351E-01 5.0E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.56879E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84326E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84311E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.54894E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.44896E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002177 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.74519E+02 ;
RUNNING_TIME              (idx, 1)        =  2.90959E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.28233E-01  1.28233E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  9.49999E-04  9.49999E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.89667E+01  2.89667E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.90954E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.74574 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98241E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.85479E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4735.05;
MEMSIZE                   (idx, 1)        = 766.09;
XS_MEMSIZE                (idx, 1)        = 456.69;
MAT_MEMSIZE               (idx, 1)        = 172.49;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3968.96;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 145412 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.36018E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.48825E-01 0.00062 ];
U235_FISS                 (idx, [1:   4]) = [  7.26850E+18 0.00021  9.98339E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20919E+16 0.00761  1.66072E-03 0.00760 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71189E+18 0.00062  2.74323E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.23450E+18 0.00062  3.58036E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002177 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80066E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002177 2.01801E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9095252 9.17606E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10611207 1.07059E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 295718 2.98138E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002177 2.01801E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.75671E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.2E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.23781E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.35199E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.36018E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.96985E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.02785E+17 0.00212 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.37226E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.52881E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.6E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.30467E+00 0.00022  1.29611E+00 0.00022  8.63601E-03 0.00380 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30516E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.30506E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30516E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32491E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81049E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81049E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.74463E-07 0.00082 ];
IMP_EALF                  (idx, [1:   2]) = [  2.74308E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.62275E-03 0.00589 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.61135E-03 0.00151 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.09633E-03 0.00285  1.63734E-04 0.01520  8.51565E-04 0.00686  8.20656E-04 0.00705  2.34195E-03 0.00412  6.81659E-04 0.00760  2.36765E-04 0.01277 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.51722E-01 0.00665  1.10729E-02 0.00800  3.18202E-02 1.7E-05  1.09392E-01 2.2E-05  3.17097E-01 2.2E-05  1.35306E+00 0.00050  8.18501E+00 0.00529 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.60355E-03 0.00376  2.18311E-04 0.02042  1.09497E-03 0.00924  1.06967E-03 0.00926  3.03915E-03 0.00553  8.74967E-04 0.01044  3.06479E-04 0.01701 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.50390E-01 0.00880  1.24906E-02 3.2E-07  3.18204E-02 2.1E-05  1.09395E-01 3.9E-05  3.17088E-01 2.8E-05  1.35371E+00 2.5E-05  8.64298E+00 0.00016 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.74020E-04 0.00066  3.74120E-04 0.00066  3.58983E-04 0.00736 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.87917E-04 0.00061  4.88049E-04 0.00061  4.68240E-04 0.00734 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.62654E-03 0.00392  2.15455E-04 0.02066  1.11098E-03 0.00936  1.06765E-03 0.00945  3.03940E-03 0.00567  8.80873E-04 0.01058  3.12188E-04 0.01760 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.55865E-01 0.00925  1.24906E-02 2.4E-07  3.18199E-02 2.7E-05  1.09388E-01 2.5E-05  3.17099E-01 3.1E-05  1.35376E+00 2.3E-05  8.64366E+00 0.00022 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.58283E-04 0.00144  3.58405E-04 0.00144  3.39615E-04 0.01739 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.67397E-04 0.00142  4.67557E-04 0.00143  4.42953E-04 0.01737 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.69497E-03 0.01127  2.24426E-04 0.06492  1.09254E-03 0.02737  1.07663E-03 0.02852  3.10029E-03 0.01622  8.78484E-04 0.03134  3.22596E-04 0.05223 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.46687E-01 0.02651  1.24906E-02 7.4E-09  3.18202E-02 5.9E-05  1.09382E-01 3.5E-05  3.17092E-01 8.5E-05  1.35385E+00 4.2E-05  8.64207E+00 0.00040 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.69754E-03 0.01098  2.23579E-04 0.06276  1.08570E-03 0.02668  1.08137E-03 0.02787  3.10699E-03 0.01567  8.71380E-04 0.03040  3.28525E-04 0.05016 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.51332E-01 0.02584  1.24906E-02 7.4E-09  3.18201E-02 6.0E-05  1.09383E-01 3.8E-05  3.17089E-01 8.3E-05  1.35385E+00 4.2E-05  8.64189E+00 0.00040 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.87603E+01 0.01140 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.66489E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.78101E-04 0.00031 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.66347E-03 0.00232 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.81883E+01 0.00236 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08785E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58460E-05 8.4E-05  3.58447E-05 8.4E-05  3.60400E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.50529E-04 0.00041  7.50718E-04 0.00041  7.21333E-04 0.00487 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.05912E-01 0.00015  7.04961E-01 0.00015  9.06857E-01 0.00442 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08557E+01 0.00660 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84311E+02 0.00023  1.77480E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.92811E+04 0.00186  3.79674E+05 0.00074  8.97219E+05 0.00044  1.66446E+06 0.00026  1.87295E+06 0.00018  1.94162E+06 0.00016  1.45890E+06 0.00015  1.14290E+06 0.00017  1.62947E+06 0.00015  1.60449E+06 0.00011  1.75037E+06 0.00012  1.74203E+06 0.00010  1.89931E+06 0.00012  1.85555E+06 0.00010  1.86312E+06 0.00010  1.63576E+06 0.00012  1.64682E+06 0.00010  1.63826E+06 0.00012  1.62899E+06 0.00013  3.22848E+06 8.8E-05  3.17312E+06 8.4E-05  2.32498E+06 0.00011  1.51417E+06 0.00015  1.79598E+06 0.00014  1.71849E+06 0.00014  1.45980E+06 0.00015  2.57515E+06 0.00014  5.49232E+05 0.00028  6.88519E+05 0.00024  6.21026E+05 0.00026  3.65677E+05 0.00036  6.39053E+05 0.00031  4.41387E+05 0.00035  3.86132E+05 0.00034  7.57930E+04 0.00068  7.51306E+04 0.00056  7.74988E+04 0.00071  8.00569E+04 0.00067  7.96418E+04 0.00061  7.91138E+04 0.00075  8.17851E+04 0.00070  7.76393E+04 0.00069  1.48452E+05 0.00055  2.43756E+05 0.00040  3.26459E+05 0.00038  1.02277E+06 0.00031  1.54094E+06 0.00036  2.43707E+06 0.00040  2.01105E+06 0.00041  1.59989E+06 0.00044  1.27416E+06 0.00047  1.46403E+06 0.00049  2.60955E+06 0.00045  3.19156E+06 0.00044  5.28486E+06 0.00047  6.53898E+06 0.00046  7.59519E+06 0.00048  3.97574E+06 0.00051  2.52706E+06 0.00053  1.67266E+06 0.00053  1.41843E+06 0.00057  1.34315E+06 0.00058  1.03360E+06 0.00060  6.81691E+05 0.00058  5.79508E+05 0.00067  5.29033E+05 0.00066  4.37524E+05 0.00074  2.99610E+05 0.00082  1.97532E+05 0.00100  6.21414E+04 0.00118 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32481E+00 0.00019 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.54874E+21 0.00018  3.42119E+21 0.00050 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38938E-01 1.5E-05  3.87592E-01 4.2E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.28753E-04 0.00037  9.63637E-04 0.00038 ];
INF_ABS                   (idx, [1:   4]) = [  1.15669E-03 0.00029  2.75221E-03 0.00041 ];
INF_FISS                  (idx, [1:   4]) = [  3.27940E-04 0.00040  1.78857E-03 0.00049 ];
INF_NSF                   (idx, [1:   4]) = [  8.00618E-04 0.00040  4.35822E-03 0.00049 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44136E+00 4.1E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.5E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.15184E-07 0.00011  2.09697E-06 4.5E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37781E-01 1.5E-05  3.84840E-01 4.4E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13605E-02 0.00022  1.13460E-02 0.00042 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48179E-03 0.00139 -4.39700E-03 0.00098 ];
INF_SCATT3                (idx, [1:   4]) = [  4.67318E-04 0.00613 -4.03167E-03 0.00085 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.51898E-04 0.01877 -4.66005E-03 0.00059 ];
INF_SCATT5                (idx, [1:   4]) = [  1.16856E-04 0.02057 -2.70907E-03 0.00099 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.27078E-04 0.00622 -4.45572E-03 0.00058 ];
INF_SCATT7                (idx, [1:   4]) = [  1.32425E-04 0.01717 -6.24886E-04 0.00329 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37816E-01 1.5E-05  3.84840E-01 4.4E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13696E-02 0.00022  1.13460E-02 0.00042 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48340E-03 0.00139 -4.39700E-03 0.00098 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.67529E-04 0.00612 -4.03167E-03 0.00085 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.51847E-04 0.01878 -4.66005E-03 0.00059 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.16840E-04 0.02059 -2.70907E-03 0.00099 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.27097E-04 0.00622 -4.45572E-03 0.00058 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.32396E-04 0.01717 -6.24886E-04 0.00329 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00992E-01 3.5E-05  3.74772E-01 4.7E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10745E+00 3.5E-05  8.89430E-01 4.7E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.12218E-03 0.00030  2.75221E-03 0.00041 ];
INF_REMXS                 (idx, [1:   4]) = [  5.50225E-03 0.00014  4.46606E-03 0.00036 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33436E-01 1.5E-05  4.34507E-03 0.00021  1.71405E-03 0.00042  3.83126E-01 4.4E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23244E-02 0.00021 -9.63920E-04 0.00051 -1.85271E-04 0.00186  1.15313E-02 0.00042 ];
INF_S2                    (idx, [1:   8]) = [  2.65568E-03 0.00129 -1.73885E-04 0.00203 -1.11269E-04 0.00232 -4.28573E-03 0.00100 ];
INF_S3                    (idx, [1:   8]) = [  5.12610E-04 0.00559 -4.52915E-05 0.00708 -3.95861E-05 0.00474 -3.99208E-03 0.00086 ];
INF_S4                    (idx, [1:   8]) = [ -1.15373E-04 0.02447 -3.65250E-05 0.00828 -2.55573E-05 0.00642 -4.63450E-03 0.00059 ];
INF_S5                    (idx, [1:   8]) = [  1.19738E-04 0.02012 -2.88189E-06 0.09159 -6.31460E-06 0.02646 -2.70276E-03 0.00099 ];
INF_S6                    (idx, [1:   8]) = [ -3.02381E-04 0.00665 -2.46972E-05 0.01063 -1.71713E-05 0.00982 -4.43855E-03 0.00058 ];
INF_S7                    (idx, [1:   8]) = [  1.10911E-04 0.02014  2.15144E-05 0.01091  7.17371E-06 0.01907 -6.32060E-04 0.00327 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33471E-01 1.5E-05  4.34507E-03 0.00021  1.71405E-03 0.00042  3.83126E-01 4.4E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23336E-02 0.00021 -9.63920E-04 0.00051 -1.85271E-04 0.00186  1.15313E-02 0.00042 ];
INF_SP2                   (idx, [1:   8]) = [  2.65728E-03 0.00129 -1.73885E-04 0.00203 -1.11269E-04 0.00232 -4.28573E-03 0.00100 ];
INF_SP3                   (idx, [1:   8]) = [  5.12820E-04 0.00558 -4.52915E-05 0.00708 -3.95861E-05 0.00474 -3.99208E-03 0.00086 ];
INF_SP4                   (idx, [1:   8]) = [ -1.15322E-04 0.02450 -3.65250E-05 0.00828 -2.55573E-05 0.00642 -4.63450E-03 0.00059 ];
INF_SP5                   (idx, [1:   8]) = [  1.19722E-04 0.02014 -2.88189E-06 0.09159 -6.31460E-06 0.02646 -2.70276E-03 0.00099 ];
INF_SP6                   (idx, [1:   8]) = [ -3.02400E-04 0.00666 -2.46972E-05 0.01063 -1.71713E-05 0.00982 -4.43855E-03 0.00058 ];
INF_SP7                   (idx, [1:   8]) = [  1.10882E-04 0.02015  2.15144E-05 0.01091  7.17371E-06 0.01907 -6.32060E-04 0.00327 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98858E-01 0.00022  4.26120E-01 0.00059 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99300E-01 0.00030  4.21860E-01 0.00094 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99422E-01 0.00036  4.21013E-01 0.00088 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97863E-01 0.00038  4.35877E-01 0.00097 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11536E+00 0.00022  7.82279E-01 0.00059 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11372E+00 0.00030  7.90222E-01 0.00094 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11327E+00 0.00036  7.91802E-01 0.00088 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11910E+00 0.00038  7.64813E-01 0.00097 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.60355E-03 0.00376  2.18311E-04 0.02042  1.09497E-03 0.00924  1.06967E-03 0.00926  3.03915E-03 0.00553  8.74967E-04 0.01044  3.06479E-04 0.01701 ];
LAMBDA                    (idx, [1:  14]) = [  7.50390E-01 0.00880  1.24906E-02 3.2E-07  3.18204E-02 2.1E-05  1.09395E-01 3.9E-05  3.17088E-01 2.8E-05  1.35371E+00 2.5E-05  8.64298E+00 0.00016 ];

