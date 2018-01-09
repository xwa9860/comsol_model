
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input37' ;
HOSTNAME                  (idx, [1: 12])  = 'n0065.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:31 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.92431E-01  9.98233E-01  9.98597E-01  1.00187E+00  1.00628E+00  9.99636E-01  1.00018E+00  1.00268E+00  1.00381E+00  9.89452E-01  1.00177E+00  9.98962E-01  1.00753E+00  1.00114E+00  1.00169E+00  9.99045E-01  1.00153E+00  9.99772E-01  9.96076E-01  9.99329E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.78817E-02 0.00034  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.22118E-01 2.9E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.82579E-01 4.9E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.86879E-01 4.9E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.86407E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.83336E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.83322E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.55713E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.98274E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002152 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00032 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.78662E+02 ;
RUNNING_TIME              (idx, 1)        =  2.92596E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.25717E-01  1.25717E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.15000E-03  1.15000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.91327E+01  2.91327E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.92591E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77685 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98489E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87061E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4755.50;
MEMSIZE                   (idx, 1)        = 789.25;
XS_MEMSIZE                (idx, 1)        = 471.79;
MAT_MEMSIZE               (idx, 1)        = 180.56;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.25;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 152238 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35489E+15 0.00022  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.46133E-01 0.00062 ];
U235_FISS                 (idx, [1:   4]) = [  7.27046E+18 0.00020  9.98342E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20765E+16 0.00759  1.65803E-03 0.00757 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70323E+18 0.00061  2.75273E-01 0.00055 ];
U238_CAPT                 (idx, [1:   4]) = [  2.20869E+18 0.00063  3.56924E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002152 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80716E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002152 2.01807E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9053274 9.13378E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10654857 1.07506E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 294021 2.96331E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002152 2.01807E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.38419E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.19037E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34724E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35489E+19 0.00022 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.90723E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.00776E+17 0.00216 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36732E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.50562E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31028E+00 0.00022  1.30157E+00 0.00022  8.62585E-03 0.00367 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30989E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31016E+00 0.00022 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30989E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32959E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81486E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81502E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.62703E-07 0.00082 ];
IMP_EALF                  (idx, [1:   2]) = [  2.62169E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.55179E-03 0.00574 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.55555E-03 0.00151 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.07072E-03 0.00275  1.62432E-04 0.01545  8.49880E-04 0.00685  8.21995E-04 0.00696  2.32076E-03 0.00415  6.74124E-04 0.00754  2.41537E-04 0.01265 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.60386E-01 0.00656  1.09355E-02 0.00843  3.18188E-02 2.0E-05  1.09395E-01 2.2E-05  3.17102E-01 2.1E-05  1.35367E+00 2.0E-05  8.30318E+00 0.00454 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.58664E-03 0.00363  2.09314E-04 0.02080  1.10184E-03 0.00916  1.07211E-03 0.00956  3.00386E-03 0.00556  8.79222E-04 0.01011  3.20290E-04 0.01690 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.68688E-01 0.00885  1.24906E-02 2.8E-07  3.18179E-02 2.9E-05  1.09393E-01 2.6E-05  3.17112E-01 3.1E-05  1.35368E+00 2.4E-05  8.64453E+00 0.00021 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.71615E-04 0.00066  3.71738E-04 0.00066  3.53114E-04 0.00742 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.86867E-04 0.00061  4.87028E-04 0.00061  4.62672E-04 0.00742 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.58144E-03 0.00374  2.12307E-04 0.02091  1.11309E-03 0.00940  1.06570E-03 0.00952  2.99332E-03 0.00569  8.80881E-04 0.01043  3.16142E-04 0.01700 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.63778E-01 0.00904  1.24906E-02 2.6E-07  3.18180E-02 3.1E-05  1.09398E-01 3.6E-05  3.17108E-01 3.1E-05  1.35367E+00 2.7E-05  8.64376E+00 0.00022 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.56817E-04 0.00147  3.56989E-04 0.00148  3.37320E-04 0.01679 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.67466E-04 0.00144  4.67692E-04 0.00145  4.41952E-04 0.01679 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.60216E-03 0.01123  2.00932E-04 0.06056  1.12262E-03 0.02721  1.07225E-03 0.02771  2.98411E-03 0.01690  8.82804E-04 0.03133  3.39452E-04 0.04938 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.88060E-01 0.02683  1.24906E-02 7.4E-09  3.18189E-02 6.4E-05  1.09393E-01 6.6E-05  3.17107E-01 8.4E-05  1.35365E+00 6.8E-05  8.64570E+00 0.00050 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.60677E-03 0.01081  2.03268E-04 0.05876  1.13329E-03 0.02672  1.07702E-03 0.02701  2.98296E-03 0.01645  8.74142E-04 0.02985  3.36096E-04 0.04859 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.82936E-01 0.02628  1.24906E-02 7.4E-09  3.18187E-02 6.6E-05  1.09394E-01 6.9E-05  3.17108E-01 8.1E-05  1.35364E+00 6.8E-05  8.64591E+00 0.00051 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.85824E+01 0.01138 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.64277E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.77254E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.60684E-03 0.00211 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.81419E+01 0.00215 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08991E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.57797E-05 8.4E-05  3.57790E-05 8.4E-05  3.58787E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.46469E-04 0.00040  7.46722E-04 0.00041  7.07297E-04 0.00478 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.07352E-01 0.00015  7.06388E-01 0.00015  9.09989E-01 0.00426 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08113E+01 0.00666 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.83322E+02 0.00023  1.76326E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.94664E+04 0.00148  3.80201E+05 0.00080  8.97187E+05 0.00043  1.66376E+06 0.00027  1.87328E+06 0.00018  1.94164E+06 0.00017  1.45894E+06 0.00016  1.14294E+06 0.00018  1.62938E+06 0.00013  1.60453E+06 0.00010  1.75027E+06 1.0E-04  1.74160E+06 0.00011  1.89962E+06 0.00011  1.85607E+06 0.00010  1.86279E+06 9.6E-05  1.63575E+06 0.00012  1.64697E+06 0.00011  1.63786E+06 0.00010  1.62930E+06 0.00010  3.22849E+06 9.7E-05  3.17319E+06 9.2E-05  2.32491E+06 0.00010  1.51454E+06 0.00013  1.79538E+06 0.00013  1.71824E+06 0.00013  1.45956E+06 0.00016  2.57452E+06 0.00014  5.49528E+05 0.00028  6.89035E+05 0.00024  6.19873E+05 0.00029  3.64776E+05 0.00032  6.37054E+05 0.00030  4.39340E+05 0.00038  3.83620E+05 0.00036  7.51539E+04 0.00075  7.45652E+04 0.00068  7.67935E+04 0.00069  7.92433E+04 0.00064  7.86819E+04 0.00073  7.80765E+04 0.00070  8.07456E+04 0.00067  7.65935E+04 0.00069  1.45960E+05 0.00052  2.39121E+05 0.00048  3.19070E+05 0.00042  9.87951E+05 0.00033  1.47245E+06 0.00038  2.33203E+06 0.00044  1.93579E+06 0.00049  1.54693E+06 0.00051  1.23695E+06 0.00052  1.42500E+06 0.00054  2.54887E+06 0.00059  3.13411E+06 0.00053  5.22144E+06 0.00056  6.50233E+06 0.00056  7.60469E+06 0.00057  3.99855E+06 0.00058  2.54649E+06 0.00057  1.68723E+06 0.00060  1.43212E+06 0.00060  1.35681E+06 0.00061  1.04523E+06 0.00063  6.89651E+05 0.00065  5.86010E+05 0.00069  5.35115E+05 0.00075  4.42102E+05 0.00075  3.03774E+05 0.00090  1.99011E+05 0.00100  6.28818E+04 0.00133 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32986E+00 0.00021 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.53053E+21 0.00019  3.37676E+21 0.00060 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38920E-01 1.7E-05  3.87670E-01 4.3E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.24804E-04 0.00041  9.70869E-04 0.00040 ];
INF_ABS                   (idx, [1:   4]) = [  1.15096E-03 0.00034  2.78664E-03 0.00048 ];
INF_FISS                  (idx, [1:   4]) = [  3.26152E-04 0.00041  1.81577E-03 0.00059 ];
INF_NSF                   (idx, [1:   4]) = [  7.96257E-04 0.00041  4.42449E-03 0.00059 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44137E+00 4.5E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.8E-07  2.02270E+02 1.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.14336E-07 0.00010  2.11009E-06 4.2E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37769E-01 1.8E-05  3.84884E-01 4.5E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13640E-02 0.00023  1.12907E-02 0.00045 ];
INF_SCATT2                (idx, [1:   4]) = [  2.49157E-03 0.00139 -4.44242E-03 0.00104 ];
INF_SCATT3                (idx, [1:   4]) = [  4.75722E-04 0.00654 -4.05866E-03 0.00076 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.46034E-04 0.01886 -4.65344E-03 0.00064 ];
INF_SCATT5                (idx, [1:   4]) = [  1.12524E-04 0.02239 -2.72525E-03 0.00097 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.25029E-04 0.00788 -4.42271E-03 0.00053 ];
INF_SCATT7                (idx, [1:   4]) = [  1.26356E-04 0.01615 -6.28435E-04 0.00295 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37803E-01 1.8E-05  3.84884E-01 4.5E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13732E-02 0.00023  1.12907E-02 0.00045 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.49328E-03 0.00139 -4.44242E-03 0.00104 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.75966E-04 0.00654 -4.05866E-03 0.00076 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.46035E-04 0.01885 -4.65344E-03 0.00064 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.12541E-04 0.02239 -2.72525E-03 0.00097 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.25010E-04 0.00789 -4.42271E-03 0.00053 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.26340E-04 0.01617 -6.28435E-04 0.00295 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00957E-01 3.9E-05  3.74943E-01 4.8E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10758E+00 3.9E-05  8.89024E-01 4.8E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.11628E-03 0.00036  2.78664E-03 0.00048 ];
INF_REMXS                 (idx, [1:   4]) = [  5.36238E-03 0.00015  4.36207E-03 0.00044 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33557E-01 1.6E-05  4.21140E-03 0.00024  1.57619E-03 0.00050  3.83308E-01 4.6E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23123E-02 0.00022 -9.48319E-04 0.00052 -1.66560E-04 0.00151  1.14573E-02 0.00044 ];
INF_S2                    (idx, [1:   8]) = [  2.65762E-03 0.00133 -1.66047E-04 0.00265 -1.03072E-04 0.00212 -4.33934E-03 0.00105 ];
INF_S3                    (idx, [1:   8]) = [  5.17990E-04 0.00596 -4.22674E-05 0.00781 -3.72288E-05 0.00537 -4.02143E-03 0.00077 ];
INF_S4                    (idx, [1:   8]) = [ -1.11754E-04 0.02402 -3.42805E-05 0.00961 -2.31348E-05 0.00629 -4.63031E-03 0.00065 ];
INF_S5                    (idx, [1:   8]) = [  1.15027E-04 0.02187 -2.50331E-06 0.10981 -5.66994E-06 0.03049 -2.71958E-03 0.00095 ];
INF_S6                    (idx, [1:   8]) = [ -3.01298E-04 0.00848 -2.37302E-05 0.00862 -1.62612E-05 0.00819 -4.40645E-03 0.00053 ];
INF_S7                    (idx, [1:   8]) = [  1.05914E-04 0.01915  2.04421E-05 0.01182  6.66315E-06 0.01917 -6.35098E-04 0.00293 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33592E-01 1.6E-05  4.21140E-03 0.00024  1.57619E-03 0.00050  3.83308E-01 4.6E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23215E-02 0.00022 -9.48319E-04 0.00052 -1.66560E-04 0.00151  1.14573E-02 0.00044 ];
INF_SP2                   (idx, [1:   8]) = [  2.65933E-03 0.00133 -1.66047E-04 0.00265 -1.03072E-04 0.00212 -4.33934E-03 0.00105 ];
INF_SP3                   (idx, [1:   8]) = [  5.18233E-04 0.00597 -4.22674E-05 0.00781 -3.72288E-05 0.00537 -4.02143E-03 0.00077 ];
INF_SP4                   (idx, [1:   8]) = [ -1.11755E-04 0.02401 -3.42805E-05 0.00961 -2.31348E-05 0.00629 -4.63031E-03 0.00065 ];
INF_SP5                   (idx, [1:   8]) = [  1.15044E-04 0.02188 -2.50331E-06 0.10981 -5.66994E-06 0.03049 -2.71958E-03 0.00095 ];
INF_SP6                   (idx, [1:   8]) = [ -3.01280E-04 0.00849 -2.37302E-05 0.00862 -1.62612E-05 0.00819 -4.40645E-03 0.00053 ];
INF_SP7                   (idx, [1:   8]) = [  1.05898E-04 0.01916  2.04421E-05 0.01182  6.66315E-06 0.01917 -6.35098E-04 0.00293 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98746E-01 0.00020  4.26438E-01 0.00061 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99352E-01 0.00035  4.22299E-01 0.00106 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99152E-01 0.00036  4.22005E-01 0.00084 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97747E-01 0.00039  4.35349E-01 0.00098 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11578E+00 0.00020  7.81698E-01 0.00060 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11353E+00 0.00035  7.89418E-01 0.00106 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11427E+00 0.00036  7.89934E-01 0.00083 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11954E+00 0.00039  7.65742E-01 0.00098 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.58664E-03 0.00363  2.09314E-04 0.02080  1.10184E-03 0.00916  1.07211E-03 0.00956  3.00386E-03 0.00556  8.79222E-04 0.01011  3.20290E-04 0.01690 ];
LAMBDA                    (idx, [1:  14]) = [  7.68688E-01 0.00885  1.24906E-02 2.8E-07  3.18179E-02 2.9E-05  1.09393E-01 2.6E-05  3.17112E-01 3.1E-05  1.35368E+00 2.4E-05  8.64453E+00 0.00021 ];

