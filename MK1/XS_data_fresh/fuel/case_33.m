
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input32' ;
HOSTNAME                  (idx, [1: 12])  = 'n0060.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:42 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00358E+00  9.97062E-01  9.99676E-01  1.00405E+00  9.98656E-01  9.96810E-01  9.99031E-01  9.97684E-01  1.00462E+00  9.94645E-01  9.98743E-01  9.99879E-01  9.97009E-01  9.98983E-01  9.98178E-01  1.00099E+00  1.00293E+00  1.00320E+00  9.99548E-01  1.00472E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.31173E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.26883E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81715E-01 4.6E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85839E-01 4.6E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.55874E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84776E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84761E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.61635E+02 0.00028  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.69973E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001737 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.82237E+02 ;
RUNNING_TIME              (idx, 1)        =  2.94442E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.26283E-01  1.26283E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.31667E-03  1.31667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.93166E+01  2.93166E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.94439E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77423 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98494E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87114E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4798.01;
MEMSIZE                   (idx, 1)        = 831.47;
XS_MEMSIZE                (idx, 1)        = 499.20;
MAT_MEMSIZE               (idx, 1)        = 195.37;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.54;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 164756 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34045E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.29706E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.27450E+18 0.00020  9.98356E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.19846E+16 0.00738  1.64449E-03 0.00736 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70595E+18 0.00060  2.82384E-01 0.00053 ];
U238_CAPT                 (idx, [1:   4]) = [  2.06282E+18 0.00063  3.41419E-01 0.00046 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001737 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79583E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001737 2.01796E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8934673 9.01405E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10776088 1.08722E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 290976 2.93319E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001737 2.01796E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.49594E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 5.9E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.3E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.04253E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.33246E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34045E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.88684E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.96615E+17 0.00225 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35212E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.49825E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.4E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.3E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.32486E+00 0.00022  1.31632E+00 0.00021  8.70091E-03 0.00378 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.32458E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.32426E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.32458E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.34430E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81295E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81304E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.67767E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.67414E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.53461E-03 0.00577 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.46476E-03 0.00149 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  4.99137E-03 0.00290  1.60066E-04 0.01581  8.23837E-04 0.00686  8.16876E-04 0.00699  2.29310E-03 0.00420  6.58537E-04 0.00773  2.38954E-04 0.01250 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.61782E-01 0.00655  1.09292E-02 0.00845  3.18180E-02 2.7E-05  1.09397E-01 2.5E-05  3.17091E-01 2.0E-05  1.35306E+00 0.00050  8.33230E+00 0.00433 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.57209E-03 0.00382  2.07548E-04 0.02078  1.08218E-03 0.00930  1.07948E-03 0.00920  3.02404E-03 0.00554  8.64691E-04 0.01036  3.14148E-04 0.01706 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.61656E-01 0.00887  1.24906E-02 7.7E-08  3.18190E-02 3.4E-05  1.09402E-01 3.7E-05  3.17092E-01 2.7E-05  1.35371E+00 2.6E-05  8.64376E+00 0.00021 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.66520E-04 0.00065  3.66620E-04 0.00065  3.51944E-04 0.00733 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.85538E-04 0.00060  4.85671E-04 0.00061  4.66283E-04 0.00734 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.56780E-03 0.00385  2.07129E-04 0.02130  1.08973E-03 0.00939  1.07235E-03 0.00932  3.02410E-03 0.00571  8.67229E-04 0.01063  3.07280E-04 0.01765 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.53144E-01 0.00919  1.24906E-02 5.4E-08  3.18189E-02 3.4E-05  1.09401E-01 3.8E-05  3.17080E-01 2.6E-05  1.35373E+00 2.5E-05  8.64147E+00 0.00017 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.51119E-04 0.00144  3.51135E-04 0.00144  3.46370E-04 0.01828 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.65138E-04 0.00142  4.65159E-04 0.00143  4.58890E-04 0.01827 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.47817E-03 0.01132  2.10525E-04 0.06208  1.12322E-03 0.02783  1.02319E-03 0.02780  2.98558E-03 0.01665  8.26655E-04 0.03213  3.08999E-04 0.05043 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.55218E-01 0.02775  1.24906E-02 7.4E-09  3.18174E-02 8.0E-05  1.09414E-01 0.00012  3.17080E-01 7.9E-05  1.35360E+00 7.1E-05  8.64289E+00 0.00044 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.48655E-03 0.01106  2.11883E-04 0.06138  1.12862E-03 0.02700  1.02899E-03 0.02725  2.98147E-03 0.01624  8.31274E-04 0.03067  3.04319E-04 0.04894 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.53595E-01 0.02708  1.24906E-02 7.4E-09  3.18178E-02 7.8E-05  1.09412E-01 0.00011  3.17072E-01 6.9E-05  1.35360E+00 7.1E-05  8.64246E+00 0.00042 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.85212E+01 0.01140 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.59126E-04 0.00037 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.75743E-04 0.00029 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.54521E-03 0.00210 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.82315E+01 0.00215 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.09080E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58469E-05 8.5E-05  3.58458E-05 8.5E-05  3.60253E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.44420E-04 0.00040  7.44655E-04 0.00041  7.08552E-04 0.00481 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.15369E-01 0.00014  7.14337E-01 0.00015  9.37162E-01 0.00451 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08333E+01 0.00652 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84761E+02 0.00023  1.76688E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.94902E+04 0.00176  3.79164E+05 0.00073  8.96308E+05 0.00039  1.66348E+06 0.00028  1.87293E+06 0.00024  1.94226E+06 0.00016  1.45876E+06 0.00014  1.14281E+06 0.00019  1.62948E+06 0.00013  1.60404E+06 0.00010  1.75031E+06 0.00011  1.74169E+06 0.00011  1.89946E+06 0.00012  1.85561E+06 0.00011  1.86320E+06 0.00011  1.63576E+06 0.00011  1.64694E+06 0.00011  1.63828E+06 0.00012  1.62941E+06 0.00013  3.22844E+06 9.9E-05  3.17434E+06 9.7E-05  2.32745E+06 0.00012  1.51754E+06 0.00014  1.80260E+06 0.00013  1.73065E+06 0.00014  1.47163E+06 0.00014  2.60604E+06 0.00015  5.56246E+05 0.00029  6.97153E+05 0.00023  6.29190E+05 0.00027  3.70171E+05 0.00031  6.46633E+05 0.00028  4.46503E+05 0.00032  3.90102E+05 0.00037  7.64629E+04 0.00068  7.59543E+04 0.00069  7.81735E+04 0.00067  8.08279E+04 0.00063  8.02738E+04 0.00063  7.95950E+04 0.00073  8.25677E+04 0.00059  7.82194E+04 0.00069  1.49406E+05 0.00055  2.44716E+05 0.00044  3.27416E+05 0.00045  1.01823E+06 0.00031  1.52652E+06 0.00041  2.41407E+06 0.00043  1.99549E+06 0.00050  1.59059E+06 0.00050  1.26981E+06 0.00054  1.45910E+06 0.00054  2.60253E+06 0.00051  3.19121E+06 0.00051  5.29653E+06 0.00055  6.56792E+06 0.00056  7.64881E+06 0.00054  4.00946E+06 0.00056  2.55071E+06 0.00054  1.68859E+06 0.00058  1.43196E+06 0.00060  1.35600E+06 0.00063  1.04422E+06 0.00061  6.88777E+05 0.00072  5.85624E+05 0.00075  5.34199E+05 0.00063  4.41987E+05 0.00084  3.02855E+05 0.00085  1.99211E+05 0.00105  6.27895E+04 0.00139 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.34397E+00 0.00023 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.50501E+21 0.00022  3.38190E+21 0.00058 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38862E-01 1.6E-05  3.87520E-01 4.2E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.88655E-04 0.00037  9.69370E-04 0.00039 ];
INF_ABS                   (idx, [1:   4]) = [  1.11738E-03 0.00031  2.78216E-03 0.00048 ];
INF_FISS                  (idx, [1:   4]) = [  3.28730E-04 0.00044  1.81279E-03 0.00057 ];
INF_NSF                   (idx, [1:   4]) = [  8.02535E-04 0.00043  4.41722E-03 0.00057 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44132E+00 4.5E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.6E-07  2.02270E+02 2.6E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.15682E-07 9.3E-05  2.10160E-06 4.4E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37744E-01 1.6E-05  3.84737E-01 4.5E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13536E-02 0.00023  1.13301E-02 0.00044 ];
INF_SCATT2                (idx, [1:   4]) = [  2.47988E-03 0.00143 -4.40790E-03 0.00091 ];
INF_SCATT3                (idx, [1:   4]) = [  4.68138E-04 0.00586 -4.04268E-03 0.00087 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.54838E-04 0.01685 -4.65116E-03 0.00069 ];
INF_SCATT5                (idx, [1:   4]) = [  1.13703E-04 0.02110 -2.70760E-03 0.00094 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.30601E-04 0.00619 -4.44263E-03 0.00056 ];
INF_SCATT7                (idx, [1:   4]) = [  1.31353E-04 0.01550 -6.20177E-04 0.00375 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37779E-01 1.6E-05  3.84737E-01 4.5E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13627E-02 0.00023  1.13301E-02 0.00044 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48161E-03 0.00143 -4.40790E-03 0.00091 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.68407E-04 0.00585 -4.04268E-03 0.00087 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.54767E-04 0.01689 -4.65116E-03 0.00069 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.13715E-04 0.02110 -2.70760E-03 0.00094 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.30619E-04 0.00620 -4.44263E-03 0.00056 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.31331E-04 0.01550 -6.20177E-04 0.00375 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00984E-01 3.6E-05  3.74728E-01 4.5E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10748E+00 3.6E-05  8.89534E-01 4.5E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.08305E-03 0.00033  2.78216E-03 0.00048 ];
INF_REMXS                 (idx, [1:   4]) = [  5.44056E-03 0.00016  4.43943E-03 0.00040 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33422E-01 1.5E-05  4.32248E-03 0.00023  1.65707E-03 0.00044  3.83080E-01 4.5E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23188E-02 0.00022 -9.65212E-04 0.00048 -1.76165E-04 0.00180  1.15063E-02 0.00044 ];
INF_S2                    (idx, [1:   8]) = [  2.65086E-03 0.00133 -1.70987E-04 0.00229 -1.08085E-04 0.00228 -4.29982E-03 0.00094 ];
INF_S3                    (idx, [1:   8]) = [  5.13337E-04 0.00526 -4.51994E-05 0.00648 -3.87736E-05 0.00524 -4.00390E-03 0.00087 ];
INF_S4                    (idx, [1:   8]) = [ -1.18947E-04 0.02157 -3.58916E-05 0.00761 -2.46474E-05 0.00704 -4.62652E-03 0.00069 ];
INF_S5                    (idx, [1:   8]) = [  1.16189E-04 0.02056 -2.48669E-06 0.10530 -6.07896E-06 0.02685 -2.70152E-03 0.00094 ];
INF_S6                    (idx, [1:   8]) = [ -3.06475E-04 0.00669 -2.41262E-05 0.01073 -1.67670E-05 0.00854 -4.42586E-03 0.00056 ];
INF_S7                    (idx, [1:   8]) = [  1.10031E-04 0.01844  2.13224E-05 0.00892  7.12602E-06 0.01823 -6.27303E-04 0.00369 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33456E-01 1.5E-05  4.32248E-03 0.00023  1.65707E-03 0.00044  3.83080E-01 4.5E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23279E-02 0.00022 -9.65212E-04 0.00048 -1.76165E-04 0.00180  1.15063E-02 0.00044 ];
INF_SP2                   (idx, [1:   8]) = [  2.65260E-03 0.00133 -1.70987E-04 0.00229 -1.08085E-04 0.00228 -4.29982E-03 0.00094 ];
INF_SP3                   (idx, [1:   8]) = [  5.13607E-04 0.00525 -4.51994E-05 0.00648 -3.87736E-05 0.00524 -4.00390E-03 0.00087 ];
INF_SP4                   (idx, [1:   8]) = [ -1.18876E-04 0.02163 -3.58916E-05 0.00761 -2.46474E-05 0.00704 -4.62652E-03 0.00069 ];
INF_SP5                   (idx, [1:   8]) = [  1.16202E-04 0.02056 -2.48669E-06 0.10530 -6.07896E-06 0.02685 -2.70152E-03 0.00094 ];
INF_SP6                   (idx, [1:   8]) = [ -3.06492E-04 0.00669 -2.41262E-05 0.01073 -1.67670E-05 0.00854 -4.42586E-03 0.00056 ];
INF_SP7                   (idx, [1:   8]) = [  1.10008E-04 0.01844  2.13224E-05 0.00892  7.12602E-06 0.01823 -6.27303E-04 0.00369 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98862E-01 0.00020  4.25480E-01 0.00065 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99326E-01 0.00033  4.21045E-01 0.00088 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99436E-01 0.00034  4.20532E-01 0.00108 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97835E-01 0.00035  4.35255E-01 0.00099 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11535E+00 0.00020  7.83462E-01 0.00065 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11363E+00 0.00033  7.91741E-01 0.00088 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11322E+00 0.00034  7.92738E-01 0.00108 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11920E+00 0.00035  7.65908E-01 0.00099 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.57209E-03 0.00382  2.07548E-04 0.02078  1.08218E-03 0.00930  1.07948E-03 0.00920  3.02404E-03 0.00554  8.64691E-04 0.01036  3.14148E-04 0.01706 ];
LAMBDA                    (idx, [1:  14]) = [  7.61656E-01 0.00887  1.24906E-02 7.7E-08  3.18190E-02 3.4E-05  1.09402E-01 3.7E-05  3.17092E-01 2.7E-05  1.35371E+00 2.6E-05  8.64376E+00 0.00021 ];

