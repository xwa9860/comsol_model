
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input49' ;
HOSTNAME                  (idx, [1: 12])  = 'n0125.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1060.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:48 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00327E+00  1.00156E+00  9.99165E-01  1.00123E+00  9.93834E-01  9.97049E-01  1.00641E+00  9.96119E-01  9.97818E-01  9.95742E-01  1.00646E+00  9.92214E-01  9.98637E-01  1.00139E+00  1.00607E+00  9.96580E-01  1.00159E+00  9.99904E-01  1.00444E+00  1.00053E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 1.2E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.15291E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.28471E-01 2.5E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83684E-01 4.9E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87774E-01 4.9E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.54088E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.85338E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.85323E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.58680E+02 0.00030  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.56624E+01 0.00025  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001739 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.84213E+02 ;
RUNNING_TIME              (idx, 1)        =  2.95442E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.18633E-01  1.18633E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.18333E-03  1.18333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.94243E+01  2.94243E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.95438E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77425 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98456E+01 0.00012 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87019E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.80 ;
ALLOC_MEMSIZE             (idx, 1)        = 4756.56;
MEMSIZE                   (idx, 1)        = 790.46;
XS_MEMSIZE                (idx, 1)        = 472.54;
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
NEUTRON_ERG_NE            (idx, 1)        = 152620 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.36095E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.47876E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.26937E+18 0.00020  9.98340E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20887E+16 0.00758  1.65992E-03 0.00757 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71596E+18 0.00062  2.74599E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.22719E+18 0.00063  3.56378E-01 0.00047 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001739 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80639E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001739 2.01806E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9102029 9.18337E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10605875 1.07011E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 293835 2.96203E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001739 2.01806E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -3.01749E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.24580E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.35278E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.36095E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.01179E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.01583E+17 0.00216 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.37294E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.54428E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43745E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.30417E+00 0.00022  1.29555E+00 0.00022  8.62180E-03 0.00375 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30453E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.30432E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30453E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32415E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80718E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80716E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.83677E-07 0.00081 ];
IMP_EALF                  (idx, [1:   2]) = [  2.83596E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.70739E-03 0.00569 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.63730E-03 0.00150 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.09577E-03 0.00279  1.61032E-04 0.01567  8.45766E-04 0.00682  8.20413E-04 0.00668  2.34801E-03 0.00410  6.79028E-04 0.00777  2.41514E-04 0.01280 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.59056E-01 0.00664  1.08231E-02 0.00878  3.18195E-02 1.9E-05  1.09395E-01 2.4E-05  3.17092E-01 2.0E-05  1.35370E+00 1.8E-05  8.24756E+00 0.00492 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.63150E-03 0.00375  2.09429E-04 0.02123  1.10231E-03 0.00904  1.07038E-03 0.00924  3.05664E-03 0.00546  8.83589E-04 0.01023  3.09147E-04 0.01726 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.51956E-01 0.00881  1.24906E-02 1.5E-07  3.18191E-02 2.7E-05  1.09400E-01 4.0E-05  3.17110E-01 3.0E-05  1.35369E+00 2.4E-05  8.64497E+00 0.00022 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.75394E-04 0.00066  3.75443E-04 0.00067  3.68506E-04 0.00771 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.89522E-04 0.00061  4.89587E-04 0.00062  4.80567E-04 0.00771 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.62214E-03 0.00380  2.07953E-04 0.02130  1.10627E-03 0.00906  1.06525E-03 0.00941  3.04116E-03 0.00561  8.94065E-04 0.01046  3.07437E-04 0.01761 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.51680E-01 0.00908  1.24906E-02 2.7E-07  3.18191E-02 2.8E-05  1.09397E-01 3.8E-05  3.17105E-01 3.2E-05  1.35370E+00 2.7E-05  8.64646E+00 0.00026 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.60184E-04 0.00148  3.60153E-04 0.00149  3.63131E-04 0.01974 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.69693E-04 0.00146  4.69654E-04 0.00147  4.73554E-04 0.01978 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.56376E-03 0.01133  2.05039E-04 0.06260  1.09985E-03 0.02834  1.05566E-03 0.02835  2.99705E-03 0.01633  8.99267E-04 0.03096  3.06898E-04 0.05254 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.53115E-01 0.02706  1.24906E-02 7.7E-07  3.18199E-02 5.8E-05  1.09386E-01 5.2E-05  3.17108E-01 8.1E-05  1.35362E+00 7.0E-05  8.64496E+00 0.00052 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.57208E-03 0.01108  2.05728E-04 0.06089  1.10204E-03 0.02740  1.06165E-03 0.02728  3.00228E-03 0.01588  8.95868E-04 0.03057  3.04516E-04 0.05098 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.48354E-01 0.02636  1.24906E-02 7.6E-07  3.18198E-02 5.7E-05  1.09386E-01 5.3E-05  3.17104E-01 7.7E-05  1.35363E+00 6.9E-05  8.64486E+00 0.00051 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.83184E+01 0.01154 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.67902E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79758E-04 0.00031 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.66133E-03 0.00220 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.81113E+01 0.00223 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08716E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59060E-05 8.5E-05  3.59052E-05 8.6E-05  3.60355E-05 0.00106 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.53676E-04 0.00041  7.53900E-04 0.00041  7.19365E-04 0.00499 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.06423E-01 0.00015  7.05466E-01 0.00015  9.08340E-01 0.00446 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07173E+01 0.00638 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.85323E+02 0.00024  1.78446E+02 0.00027 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.97798E+04 0.00140  3.79766E+05 0.00073  8.97316E+05 0.00040  1.66480E+06 0.00026  1.87403E+06 0.00019  1.94192E+06 0.00017  1.45954E+06 0.00013  1.14309E+06 0.00018  1.62987E+06 0.00014  1.60446E+06 0.00010  1.75054E+06 9.6E-05  1.74192E+06 9.5E-05  1.89940E+06 9.6E-05  1.85620E+06 9.7E-05  1.86307E+06 0.00010  1.63590E+06 0.00012  1.64714E+06 0.00011  1.63855E+06 0.00012  1.62966E+06 0.00011  3.22859E+06 8.8E-05  3.17309E+06 8.8E-05  2.32575E+06 0.00011  1.51485E+06 0.00013  1.79697E+06 0.00012  1.72015E+06 0.00014  1.46129E+06 0.00017  2.57878E+06 0.00015  5.51289E+05 0.00026  6.90856E+05 0.00027  6.23602E+05 0.00024  3.67357E+05 0.00037  6.42999E+05 0.00029  4.44736E+05 0.00035  3.89879E+05 0.00034  7.65219E+04 0.00064  7.60483E+04 0.00069  7.85000E+04 0.00069  8.11148E+04 0.00063  8.06841E+04 0.00074  8.02608E+04 0.00064  8.31366E+04 0.00066  7.88866E+04 0.00063  1.51154E+05 0.00057  2.48983E+05 0.00039  3.35564E+05 0.00035  1.06149E+06 0.00033  1.60926E+06 0.00037  2.53113E+06 0.00041  2.07438E+06 0.00046  1.64215E+06 0.00049  1.30552E+06 0.00049  1.49429E+06 0.00050  2.65527E+06 0.00051  3.23619E+06 0.00053  5.33610E+06 0.00055  6.57194E+06 0.00056  7.60394E+06 0.00057  3.96927E+06 0.00060  2.51927E+06 0.00062  1.66662E+06 0.00065  1.41241E+06 0.00060  1.33602E+06 0.00063  1.02833E+06 0.00067  6.78301E+05 0.00073  5.76327E+05 0.00079  5.25775E+05 0.00072  4.35280E+05 0.00080  2.98068E+05 0.00087  1.95919E+05 0.00092  6.19311E+04 0.00139 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32393E+00 0.00019 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.55750E+21 0.00019  3.45435E+21 0.00058 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38931E-01 1.6E-05  3.87496E-01 4.1E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.25796E-04 0.00032  9.57643E-04 0.00039 ];
INF_ABS                   (idx, [1:   4]) = [  1.15591E-03 0.00028  2.72599E-03 0.00046 ];
INF_FISS                  (idx, [1:   4]) = [  3.30115E-04 0.00045  1.76834E-03 0.00056 ];
INF_NSF                   (idx, [1:   4]) = [  8.05921E-04 0.00045  4.30892E-03 0.00056 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44133E+00 3.9E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.3E-07  2.02270E+02 2.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.16221E-07 9.3E-05  2.08727E-06 4.5E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37775E-01 1.7E-05  3.84770E-01 4.3E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13569E-02 0.00021  1.14177E-02 0.00045 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48166E-03 0.00146 -4.36749E-03 0.00102 ];
INF_SCATT3                (idx, [1:   4]) = [  4.67053E-04 0.00710 -4.01245E-03 0.00088 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.51573E-04 0.01911 -4.65108E-03 0.00064 ];
INF_SCATT5                (idx, [1:   4]) = [  1.21346E-04 0.01899 -2.70028E-03 0.00094 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.40671E-04 0.00605 -4.47267E-03 0.00044 ];
INF_SCATT7                (idx, [1:   4]) = [  1.39675E-04 0.01566 -6.10771E-04 0.00381 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37810E-01 1.7E-05  3.84770E-01 4.3E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13659E-02 0.00021  1.14177E-02 0.00045 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48331E-03 0.00146 -4.36749E-03 0.00102 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.67286E-04 0.00710 -4.01245E-03 0.00088 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.51576E-04 0.01911 -4.65108E-03 0.00064 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.21304E-04 0.01900 -2.70028E-03 0.00094 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.40688E-04 0.00606 -4.47267E-03 0.00044 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.39665E-04 0.01567 -6.10771E-04 0.00381 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01011E-01 3.5E-05  3.74574E-01 4.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10738E+00 3.5E-05  8.89900E-01 4.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.12136E-03 0.00030  2.72599E-03 0.00046 ];
INF_REMXS                 (idx, [1:   4]) = [  5.64143E-03 0.00014  4.57814E-03 0.00042 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33290E-01 1.6E-05  4.48497E-03 0.00022  1.85201E-03 0.00045  3.82918E-01 4.3E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23411E-02 0.00019 -9.84263E-04 0.00055 -2.08327E-04 0.00155  1.16260E-02 0.00044 ];
INF_S2                    (idx, [1:   8]) = [  2.66321E-03 0.00133 -1.81551E-04 0.00211 -1.17603E-04 0.00211 -4.24989E-03 0.00105 ];
INF_S3                    (idx, [1:   8]) = [  5.14704E-04 0.00638 -4.76507E-05 0.00786 -4.22079E-05 0.00483 -3.97024E-03 0.00090 ];
INF_S4                    (idx, [1:   8]) = [ -1.13232E-04 0.02558 -3.83408E-05 0.00776 -2.70495E-05 0.00666 -4.62403E-03 0.00064 ];
INF_S5                    (idx, [1:   8]) = [  1.24687E-04 0.01852 -3.34132E-06 0.08598 -6.28227E-06 0.02604 -2.69399E-03 0.00094 ];
INF_S6                    (idx, [1:   8]) = [ -3.14746E-04 0.00663 -2.59253E-05 0.00950 -1.82353E-05 0.00865 -4.45444E-03 0.00044 ];
INF_S7                    (idx, [1:   8]) = [  1.17726E-04 0.01861  2.19493E-05 0.01060  8.08329E-06 0.01657 -6.18854E-04 0.00374 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33325E-01 1.6E-05  4.48497E-03 0.00022  1.85201E-03 0.00045  3.82918E-01 4.3E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23502E-02 0.00019 -9.84263E-04 0.00055 -2.08327E-04 0.00155  1.16260E-02 0.00044 ];
INF_SP2                   (idx, [1:   8]) = [  2.66486E-03 0.00133 -1.81551E-04 0.00211 -1.17603E-04 0.00211 -4.24989E-03 0.00105 ];
INF_SP3                   (idx, [1:   8]) = [  5.14937E-04 0.00639 -4.76507E-05 0.00786 -4.22079E-05 0.00483 -3.97024E-03 0.00090 ];
INF_SP4                   (idx, [1:   8]) = [ -1.13235E-04 0.02558 -3.83408E-05 0.00776 -2.70495E-05 0.00666 -4.62403E-03 0.00064 ];
INF_SP5                   (idx, [1:   8]) = [  1.24645E-04 0.01853 -3.34132E-06 0.08598 -6.28227E-06 0.02604 -2.69399E-03 0.00094 ];
INF_SP6                   (idx, [1:   8]) = [ -3.14762E-04 0.00663 -2.59253E-05 0.00950 -1.82353E-05 0.00865 -4.45444E-03 0.00044 ];
INF_SP7                   (idx, [1:   8]) = [  1.17715E-04 0.01862  2.19493E-05 0.01060  8.08329E-06 0.01657 -6.18854E-04 0.00374 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98874E-01 0.00023  4.26019E-01 0.00054 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99267E-01 0.00037  4.21387E-01 0.00085 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99397E-01 0.00037  4.21029E-01 0.00097 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97969E-01 0.00037  4.36047E-01 0.00090 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11530E+00 0.00023  7.82461E-01 0.00054 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11385E+00 0.00037  7.91096E-01 0.00085 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11336E+00 0.00037  7.91784E-01 0.00096 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11870E+00 0.00037  7.64504E-01 0.00090 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.63150E-03 0.00375  2.09429E-04 0.02123  1.10231E-03 0.00904  1.07038E-03 0.00924  3.05664E-03 0.00546  8.83589E-04 0.01023  3.09147E-04 0.01726 ];
LAMBDA                    (idx, [1:  14]) = [  7.51956E-01 0.00881  1.24906E-02 1.5E-07  3.18191E-02 2.7E-05  1.09400E-01 4.0E-05  3.17110E-01 3.0E-05  1.35369E+00 2.4E-05  8.64497E+00 0.00022 ];

