
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input47' ;
HOSTNAME                  (idx, [1: 12])  = 'n0123.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1060.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:45:07 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00246E+00  1.00077E+00  9.99045E-01  9.95730E-01  9.96654E-01  9.95516E-01  1.00636E+00  9.99486E-01  1.00260E+00  1.00256E+00  9.96975E-01  9.92572E-01  1.00150E+00  1.00215E+00  9.98232E-01  9.99055E-01  1.00163E+00  9.96195E-01  1.00516E+00  1.00535E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.00725E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.29928E-01 2.5E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83781E-01 4.8E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87869E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.39848E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.86231E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.86216E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.60676E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.47838E+01 0.00025  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002186 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.90414E+02 ;
RUNNING_TIME              (idx, 1)        =  2.98693E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.24700E-01  1.24700E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.11667E-03  1.11667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.97435E+01  2.97435E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.98688E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76659 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98421E+01 0.00015 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86784E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.80 ;
ALLOC_MEMSIZE             (idx, 1)        = 4756.53;
MEMSIZE                   (idx, 1)        = 790.42;
XS_MEMSIZE                (idx, 1)        = 472.52;
MAT_MEMSIZE               (idx, 1)        = 181.01;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.10;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 152611 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.36666E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.51996E-01 0.00064 ];
U235_FISS                 (idx, [1:   4]) = [  7.26873E+18 0.00020  9.98338E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.21037E+16 0.00735  1.66216E-03 0.00734 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71812E+18 0.00060  2.72586E-01 0.00053 ];
U238_CAPT                 (idx, [1:   4]) = [  2.26458E+18 0.00063  3.59239E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002186 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80287E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002186 2.01803E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9142965 9.22431E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10561077 1.06555E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 298144 3.00527E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002186 2.01803E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -3.05474E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.30232E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.35844E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.36666E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.07278E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.05382E+17 0.00217 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.37897E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.56722E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43745E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.29861E+00 0.00023  1.29004E+00 0.00022  8.56522E-03 0.00366 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.29881E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.29887E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.29881E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.31862E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80386E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80372E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.93261E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.93544E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.63582E-03 0.00569 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.64400E-03 0.00149 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.12960E-03 0.00281  1.64040E-04 0.01583  8.52194E-04 0.00663  8.29744E-04 0.00698  2.34172E-03 0.00428  6.96188E-04 0.00758  2.45715E-04 0.01264 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.65840E-01 0.00661  1.09480E-02 0.00840  3.18197E-02 1.8E-05  1.09395E-01 2.3E-05  3.17101E-01 2.2E-05  1.35302E+00 0.00050  8.27704E+00 0.00471 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.60359E-03 0.00366  2.11047E-04 0.02130  1.09377E-03 0.00882  1.06494E-03 0.00919  3.01871E-03 0.00559  8.94625E-04 0.01044  3.20501E-04 0.01696 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.70144E-01 0.00893  1.24906E-02 1.8E-07  3.18193E-02 2.6E-05  1.09397E-01 3.2E-05  3.17108E-01 2.9E-05  1.35372E+00 2.1E-05  8.64660E+00 0.00023 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.78587E-04 0.00065  3.78678E-04 0.00066  3.64710E-04 0.00747 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.91580E-04 0.00061  4.91698E-04 0.00061  4.73544E-04 0.00745 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.60567E-03 0.00372  2.13419E-04 0.02157  1.09309E-03 0.00932  1.06754E-03 0.00956  3.02003E-03 0.00588  8.93915E-04 0.01061  3.17674E-04 0.01748 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.67299E-01 0.00927  1.24906E-02 2.5E-07  3.18196E-02 2.5E-05  1.09398E-01 3.6E-05  3.17118E-01 3.4E-05  1.35371E+00 2.4E-05  8.64695E+00 0.00026 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.63084E-04 0.00143  3.63192E-04 0.00144  3.44931E-04 0.01751 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.71463E-04 0.00142  4.71603E-04 0.00143  4.47932E-04 0.01751 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.59795E-03 0.01168  2.14809E-04 0.06443  1.15704E-03 0.02750  1.05742E-03 0.02907  2.94521E-03 0.01717  8.94781E-04 0.03088  3.28690E-04 0.05488 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.69753E-01 0.02763  1.24906E-02 7.4E-09  3.18178E-02 7.9E-05  1.09408E-01 0.00011  3.17108E-01 9.5E-05  1.35375E+00 5.6E-05  8.64026E+00 0.00033 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.59176E-03 0.01126  2.11849E-04 0.06373  1.13374E-03 0.02682  1.05698E-03 0.02813  2.96445E-03 0.01654  9.01302E-04 0.02985  3.23437E-04 0.05242 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.67972E-01 0.02651  1.24906E-02 7.4E-09  3.18179E-02 7.7E-05  1.09409E-01 0.00011  3.17110E-01 9.5E-05  1.35375E+00 5.5E-05  8.64060E+00 0.00035 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.82503E+01 0.01184 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.71358E-04 0.00039 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.82195E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.57918E-03 0.00216 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.77219E+01 0.00220 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08616E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59569E-05 8.6E-05  3.59560E-05 8.6E-05  3.60863E-05 0.00108 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.58591E-04 0.00040  7.58816E-04 0.00040  7.24775E-04 0.00486 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.04513E-01 0.00015  7.03571E-01 0.00016  9.01493E-01 0.00433 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08019E+01 0.00673 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.86216E+02 0.00023  1.79593E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.95483E+04 0.00186  3.79513E+05 0.00081  8.96580E+05 0.00044  1.66359E+06 0.00025  1.87333E+06 0.00022  1.94167E+06 0.00017  1.45920E+06 0.00014  1.14290E+06 0.00017  1.62963E+06 0.00013  1.60417E+06 0.00011  1.75034E+06 9.7E-05  1.74198E+06 0.00011  1.89914E+06 0.00010  1.85580E+06 0.00012  1.86298E+06 0.00011  1.63564E+06 0.00011  1.64681E+06 0.00012  1.63862E+06 0.00011  1.62935E+06 0.00012  3.22846E+06 8.3E-05  3.17341E+06 9.7E-05  2.32487E+06 9.7E-05  1.51473E+06 0.00012  1.79546E+06 0.00014  1.71744E+06 0.00014  1.45932E+06 0.00016  2.57502E+06 0.00016  5.50646E+05 0.00030  6.90499E+05 0.00026  6.23880E+05 0.00029  3.67792E+05 0.00034  6.44615E+05 0.00034  4.46644E+05 0.00038  3.93031E+05 0.00039  7.73669E+04 0.00066  7.68578E+04 0.00066  7.94957E+04 0.00072  8.22395E+04 0.00070  8.19677E+04 0.00069  8.16095E+04 0.00069  8.46458E+04 0.00061  8.05951E+04 0.00063  1.54383E+05 0.00057  2.55322E+05 0.00043  3.46360E+05 0.00049  1.10643E+06 0.00032  1.68299E+06 0.00038  2.62892E+06 0.00039  2.13603E+06 0.00046  1.68235E+06 0.00048  1.33191E+06 0.00050  1.52299E+06 0.00049  2.69536E+06 0.00051  3.27323E+06 0.00052  5.37717E+06 0.00054  6.59435E+06 0.00053  7.60164E+06 0.00055  3.95845E+06 0.00057  2.50948E+06 0.00058  1.65875E+06 0.00057  1.40486E+06 0.00058  1.32862E+06 0.00061  1.02221E+06 0.00064  6.73781E+05 0.00067  5.72300E+05 0.00067  5.22192E+05 0.00074  4.32211E+05 0.00082  2.95920E+05 0.00087  1.94399E+05 0.00091  6.13471E+04 0.00124 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.31868E+00 0.00021 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.57682E+21 0.00020  3.49603E+21 0.00055 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38983E-01 1.6E-05  3.87514E-01 4.4E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.33639E-04 0.00040  9.49807E-04 0.00042 ];
INF_ABS                   (idx, [1:   4]) = [  1.16587E-03 0.00035  2.69308E-03 0.00045 ];
INF_FISS                  (idx, [1:   4]) = [  3.32228E-04 0.00044  1.74327E-03 0.00054 ];
INF_NSF                   (idx, [1:   4]) = [  8.11059E-04 0.00044  4.24783E-03 0.00054 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44127E+00 4.4E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02318E+02 3.3E-07  2.02270E+02 1.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.17298E-07 0.00012  2.07760E-06 4.3E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37817E-01 1.7E-05  3.84820E-01 4.6E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13474E-02 0.00021  1.14647E-02 0.00044 ];
INF_SCATT2                (idx, [1:   4]) = [  2.47685E-03 0.00137 -4.34243E-03 0.00089 ];
INF_SCATT3                (idx, [1:   4]) = [  4.60967E-04 0.00690 -3.98481E-03 0.00078 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.55350E-04 0.01479 -4.64917E-03 0.00059 ];
INF_SCATT5                (idx, [1:   4]) = [  1.15228E-04 0.02085 -2.68489E-03 0.00091 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.42510E-04 0.00677 -4.48777E-03 0.00053 ];
INF_SCATT7                (idx, [1:   4]) = [  1.40685E-04 0.01460 -6.06614E-04 0.00351 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37852E-01 1.7E-05  3.84820E-01 4.6E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13566E-02 0.00021  1.14647E-02 0.00044 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.47851E-03 0.00137 -4.34243E-03 0.00089 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.61213E-04 0.00690 -3.98481E-03 0.00078 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.55324E-04 0.01478 -4.64917E-03 0.00059 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.15166E-04 0.02083 -2.68489E-03 0.00091 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.42528E-04 0.00678 -4.48777E-03 0.00053 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.40669E-04 0.01462 -6.06614E-04 0.00351 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01099E-01 3.9E-05  3.74514E-01 4.5E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10705E+00 3.9E-05  8.90043E-01 4.5E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.13142E-03 0.00037  2.69308E-03 0.00045 ];
INF_REMXS                 (idx, [1:   4]) = [  5.81641E-03 0.00015  4.71770E-03 0.00037 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33166E-01 1.5E-05  4.65111E-03 0.00023  2.02418E-03 0.00039  3.82796E-01 4.6E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23562E-02 0.00020 -1.00872E-03 0.00052 -2.39001E-04 0.00140  1.17037E-02 0.00043 ];
INF_S2                    (idx, [1:   8]) = [  2.66697E-03 0.00127 -1.90115E-04 0.00207 -1.25559E-04 0.00196 -4.21687E-03 0.00090 ];
INF_S3                    (idx, [1:   8]) = [  5.12007E-04 0.00621 -5.10399E-05 0.00661 -4.42355E-05 0.00495 -3.94058E-03 0.00079 ];
INF_S4                    (idx, [1:   8]) = [ -1.15334E-04 0.01950 -4.00160E-05 0.00831 -2.91676E-05 0.00682 -4.62000E-03 0.00060 ];
INF_S5                    (idx, [1:   8]) = [  1.19179E-04 0.02045 -3.95143E-06 0.07451 -6.56434E-06 0.02595 -2.67833E-03 0.00091 ];
INF_S6                    (idx, [1:   8]) = [ -3.15721E-04 0.00722 -2.67896E-05 0.00931 -1.98033E-05 0.00891 -4.46797E-03 0.00053 ];
INF_S7                    (idx, [1:   8]) = [  1.17839E-04 0.01742  2.28460E-05 0.01109  9.05711E-06 0.01713 -6.15671E-04 0.00341 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33201E-01 1.5E-05  4.65111E-03 0.00023  2.02418E-03 0.00039  3.82796E-01 4.6E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23653E-02 0.00020 -1.00872E-03 0.00052 -2.39001E-04 0.00140  1.17037E-02 0.00043 ];
INF_SP2                   (idx, [1:   8]) = [  2.66863E-03 0.00127 -1.90115E-04 0.00207 -1.25559E-04 0.00196 -4.21687E-03 0.00090 ];
INF_SP3                   (idx, [1:   8]) = [  5.12253E-04 0.00621 -5.10399E-05 0.00661 -4.42355E-05 0.00495 -3.94058E-03 0.00079 ];
INF_SP4                   (idx, [1:   8]) = [ -1.15308E-04 0.01949 -4.00160E-05 0.00831 -2.91676E-05 0.00682 -4.62000E-03 0.00060 ];
INF_SP5                   (idx, [1:   8]) = [  1.19118E-04 0.02043 -3.95143E-06 0.07451 -6.56434E-06 0.02595 -2.67833E-03 0.00091 ];
INF_SP6                   (idx, [1:   8]) = [ -3.15739E-04 0.00722 -2.67896E-05 0.00931 -1.98033E-05 0.00891 -4.46797E-03 0.00053 ];
INF_SP7                   (idx, [1:   8]) = [  1.17823E-04 0.01744  2.28460E-05 0.01109  9.05711E-06 0.01713 -6.15671E-04 0.00341 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98861E-01 0.00023  4.25491E-01 0.00067 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99477E-01 0.00038  4.20798E-01 0.00091 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99297E-01 0.00032  4.20700E-01 0.00109 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97823E-01 0.00035  4.35376E-01 0.00097 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11535E+00 0.00023  7.83443E-01 0.00067 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11307E+00 0.00038  7.92211E-01 0.00091 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11373E+00 0.00032  7.92424E-01 0.00109 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11925E+00 0.00035  7.65693E-01 0.00098 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.60359E-03 0.00366  2.11047E-04 0.02130  1.09377E-03 0.00882  1.06494E-03 0.00919  3.01871E-03 0.00559  8.94625E-04 0.01044  3.20501E-04 0.01696 ];
LAMBDA                    (idx, [1:  14]) = [  7.70144E-01 0.00893  1.24906E-02 1.8E-07  3.18193E-02 2.6E-05  1.09397E-01 3.2E-05  3.17108E-01 2.9E-05  1.35372E+00 2.1E-05  8.64660E+00 0.00023 ];

