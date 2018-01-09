
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input21' ;
HOSTNAME                  (idx, [1: 12])  = 'n0095.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:45:19 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00275E+00  1.00408E+00  9.99407E-01  9.95523E-01  1.00097E+00  9.97391E-01  9.98175E-01  9.94030E-01  9.99919E-01  9.97889E-01  9.98460E-01  1.00472E+00  1.00209E+00  9.98448E-01  1.00615E+00  9.97433E-01  1.00273E+00  1.00059E+00  1.00269E+00  9.96566E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.94140E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.20586E-01 2.8E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.80950E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85341E-01 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.87931E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84271E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84256E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.61499E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  5.14323E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001763 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.94306E+02 ;
RUNNING_TIME              (idx, 1)        =  3.00674E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.22117E-01  1.22117E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.43333E-03  1.43333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.99438E+01  2.99438E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  3.00668E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76579 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98400E+01 0.00016 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86846E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4803.10;
MEMSIZE                   (idx, 1)        = 835.76;
XS_MEMSIZE                (idx, 1)        = 501.99;
MAT_MEMSIZE               (idx, 1)        = 196.87;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3967.34;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 166025 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35063E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.40556E-01 0.00062 ];
U235_FISS                 (idx, [1:   4]) = [  7.27071E+18 0.00021  9.98353E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.19962E+16 0.00744  1.64726E-03 0.00744 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70770E+18 0.00061  2.77893E-01 0.00055 ];
U238_CAPT                 (idx, [1:   4]) = [  2.15976E+18 0.00061  3.51421E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001763 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80314E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001763 2.01803E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9020137 9.10002E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10688286 1.07846E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 293340 2.95669E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001763 2.01803E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -3.05474E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.14747E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34295E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35063E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.92005E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.99694E+17 0.00214 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36292E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.51042E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31433E+00 0.00022  1.30568E+00 0.00021  8.66497E-03 0.00380 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31410E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31428E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31410E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33382E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81250E+01 4.3E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81257E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.68968E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.68662E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.56186E-03 0.00584 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.53970E-03 0.00150 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.05838E-03 0.00280  1.62252E-04 0.01550  8.41380E-04 0.00681  8.23707E-04 0.00682  2.32229E-03 0.00424  6.73141E-04 0.00766  2.35614E-04 0.01281 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.52572E-01 0.00662  1.09480E-02 0.00840  3.18196E-02 1.8E-05  1.09401E-01 2.7E-05  3.17096E-01 2.1E-05  1.35370E+00 1.8E-05  8.25927E+00 0.00483 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.60994E-03 0.00367  2.14997E-04 0.02077  1.09547E-03 0.00912  1.07780E-03 0.00912  3.03193E-03 0.00575  8.86671E-04 0.01045  3.03073E-04 0.01674 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.50180E-01 0.00873  1.24906E-02 7.8E-08  3.18192E-02 2.7E-05  1.09402E-01 3.8E-05  3.17101E-01 2.8E-05  1.35368E+00 2.6E-05  8.64440E+00 0.00019 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.70429E-04 0.00065  3.70501E-04 0.00065  3.60309E-04 0.00747 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.86812E-04 0.00060  4.86907E-04 0.00060  4.73511E-04 0.00747 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.58948E-03 0.00387  2.11624E-04 0.02100  1.09483E-03 0.00940  1.07608E-03 0.00954  3.02115E-03 0.00588  8.79395E-04 0.01067  3.06400E-04 0.01749 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.54397E-01 0.00925  1.24906E-02 2.6E-07  3.18198E-02 2.4E-05  1.09399E-01 3.5E-05  3.17087E-01 2.8E-05  1.35369E+00 2.9E-05  8.64411E+00 0.00020 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.55821E-04 0.00141  3.55884E-04 0.00141  3.46694E-04 0.01708 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.67630E-04 0.00140  4.67712E-04 0.00140  4.55579E-04 0.01706 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.65376E-03 0.01136  2.28806E-04 0.06175  1.08938E-03 0.02759  1.08395E-03 0.02843  3.03714E-03 0.01658  8.72394E-04 0.03190  3.42087E-04 0.05024 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.82676E-01 0.02748  1.24906E-02 7.3E-09  3.18207E-02 4.8E-05  1.09406E-01 9.4E-05  3.17096E-01 8.6E-05  1.35369E+00 6.3E-05  8.64285E+00 0.00041 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.65148E-03 0.01102  2.28080E-04 0.05982  1.09073E-03 0.02690  1.07862E-03 0.02770  3.04432E-03 0.01614  8.71127E-04 0.03066  3.38600E-04 0.04894 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.75666E-01 0.02673  1.24906E-02 7.4E-09  3.18207E-02 4.8E-05  1.09405E-01 9.1E-05  3.17105E-01 8.9E-05  1.35369E+00 6.2E-05  8.64274E+00 0.00040 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.87813E+01 0.01147 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.63685E-04 0.00036 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.77953E-04 0.00028 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.57423E-03 0.00230 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.80830E+01 0.00234 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08953E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58250E-05 8.4E-05  3.58242E-05 8.4E-05  3.59450E-05 0.00103 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.47130E-04 0.00040  7.47355E-04 0.00040  7.12918E-04 0.00492 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.10061E-01 0.00015  7.09066E-01 0.00015  9.20445E-01 0.00443 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07981E+01 0.00647 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84256E+02 0.00023  1.76901E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.95437E+04 0.00169  3.79440E+05 0.00072  8.96745E+05 0.00041  1.66408E+06 0.00028  1.87388E+06 0.00018  1.94191E+06 0.00014  1.45909E+06 0.00014  1.14276E+06 0.00020  1.63006E+06 0.00014  1.60422E+06 0.00011  1.75068E+06 0.00011  1.74169E+06 0.00011  1.89952E+06 8.6E-05  1.85563E+06 0.00010  1.86312E+06 0.00011  1.63586E+06 0.00011  1.64700E+06 0.00013  1.63857E+06 0.00011  1.62954E+06 0.00011  3.22875E+06 8.9E-05  3.17391E+06 8.4E-05  2.32646E+06 0.00012  1.51583E+06 0.00013  1.79802E+06 0.00011  1.72402E+06 0.00014  1.46443E+06 0.00016  2.58698E+06 0.00015  5.52067E+05 0.00023  6.92042E+05 0.00030  6.23580E+05 0.00027  3.67190E+05 0.00033  6.41544E+05 0.00031  4.42630E+05 0.00033  3.86956E+05 0.00035  7.58999E+04 0.00070  7.52517E+04 0.00065  7.74913E+04 0.00069  8.01126E+04 0.00066  7.96263E+04 0.00072  7.89049E+04 0.00066  8.17312E+04 0.00065  7.75328E+04 0.00068  1.48130E+05 0.00060  2.42819E+05 0.00048  3.24743E+05 0.00044  1.01180E+06 0.00030  1.51715E+06 0.00035  2.40125E+06 0.00041  1.98648E+06 0.00045  1.58310E+06 0.00047  1.26393E+06 0.00052  1.45297E+06 0.00051  2.59262E+06 0.00050  3.17865E+06 0.00053  5.27606E+06 0.00052  6.54311E+06 0.00051  7.62085E+06 0.00054  3.99605E+06 0.00056  2.54119E+06 0.00058  1.68328E+06 0.00061  1.42723E+06 0.00062  1.35058E+06 0.00066  1.04077E+06 0.00066  6.85749E+05 0.00069  5.83355E+05 0.00070  5.32297E+05 0.00072  4.40568E+05 0.00073  3.02025E+05 0.00084  1.98539E+05 0.00102  6.25118E+04 0.00142 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33400E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.52595E+21 0.00020  3.39417E+21 0.00056 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38900E-01 1.7E-05  3.87575E-01 4.5E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.12211E-04 0.00038  9.67447E-04 0.00038 ];
INF_ABS                   (idx, [1:   4]) = [  1.13992E-03 0.00034  2.77270E-03 0.00044 ];
INF_FISS                  (idx, [1:   4]) = [  3.27710E-04 0.00044  1.80526E-03 0.00054 ];
INF_NSF                   (idx, [1:   4]) = [  8.00055E-04 0.00044  4.39887E-03 0.00054 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44135E+00 4.2E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.5E-07  2.02270E+02 1.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.15136E-07 0.00011  2.10193E-06 4.6E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37760E-01 1.7E-05  3.84803E-01 4.7E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13561E-02 0.00024  1.13312E-02 0.00043 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48365E-03 0.00138 -4.40949E-03 0.00086 ];
INF_SCATT3                (idx, [1:   4]) = [  4.68979E-04 0.00674 -4.04472E-03 0.00085 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.49931E-04 0.01971 -4.65041E-03 0.00067 ];
INF_SCATT5                (idx, [1:   4]) = [  1.18629E-04 0.01786 -2.71366E-03 0.00099 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.29106E-04 0.00653 -4.44908E-03 0.00047 ];
INF_SCATT7                (idx, [1:   4]) = [  1.30858E-04 0.01504 -6.25306E-04 0.00327 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37794E-01 1.7E-05  3.84803E-01 4.7E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13651E-02 0.00024  1.13312E-02 0.00043 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48531E-03 0.00138 -4.40949E-03 0.00086 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.69235E-04 0.00673 -4.04472E-03 0.00085 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.49879E-04 0.01971 -4.65041E-03 0.00067 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.18631E-04 0.01788 -2.71366E-03 0.00099 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.29134E-04 0.00654 -4.44908E-03 0.00047 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.30834E-04 0.01509 -6.25306E-04 0.00327 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00973E-01 3.2E-05  3.74786E-01 4.8E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10752E+00 3.2E-05  8.89397E-01 4.8E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.10539E-03 0.00034  2.77270E-03 0.00044 ];
INF_REMXS                 (idx, [1:   4]) = [  5.44025E-03 0.00013  4.42634E-03 0.00041 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33459E-01 1.6E-05  4.30022E-03 0.00022  1.65425E-03 0.00047  3.83148E-01 4.8E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23154E-02 0.00023 -9.59306E-04 0.00050 -1.76296E-04 0.00204  1.15075E-02 0.00043 ];
INF_S2                    (idx, [1:   8]) = [  2.65478E-03 0.00127 -1.71128E-04 0.00235 -1.08023E-04 0.00223 -4.30147E-03 0.00086 ];
INF_S3                    (idx, [1:   8]) = [  5.13664E-04 0.00616 -4.46845E-05 0.00746 -3.84646E-05 0.00486 -4.00626E-03 0.00086 ];
INF_S4                    (idx, [1:   8]) = [ -1.14378E-04 0.02574 -3.55525E-05 0.00882 -2.45740E-05 0.00769 -4.62583E-03 0.00068 ];
INF_S5                    (idx, [1:   8]) = [  1.21510E-04 0.01777 -2.88118E-06 0.09306 -5.88905E-06 0.02699 -2.70777E-03 0.00098 ];
INF_S6                    (idx, [1:   8]) = [ -3.04979E-04 0.00702 -2.41272E-05 0.01081 -1.69000E-05 0.00895 -4.43218E-03 0.00048 ];
INF_S7                    (idx, [1:   8]) = [  1.09390E-04 0.01744  2.14676E-05 0.00985  6.76836E-06 0.02012 -6.32074E-04 0.00319 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33494E-01 1.6E-05  4.30022E-03 0.00022  1.65425E-03 0.00047  3.83148E-01 4.8E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23244E-02 0.00023 -9.59306E-04 0.00050 -1.76296E-04 0.00204  1.15075E-02 0.00043 ];
INF_SP2                   (idx, [1:   8]) = [  2.65644E-03 0.00127 -1.71128E-04 0.00235 -1.08023E-04 0.00223 -4.30147E-03 0.00086 ];
INF_SP3                   (idx, [1:   8]) = [  5.13919E-04 0.00615 -4.46845E-05 0.00746 -3.84646E-05 0.00486 -4.00626E-03 0.00086 ];
INF_SP4                   (idx, [1:   8]) = [ -1.14326E-04 0.02575 -3.55525E-05 0.00882 -2.45740E-05 0.00769 -4.62583E-03 0.00068 ];
INF_SP5                   (idx, [1:   8]) = [  1.21513E-04 0.01780 -2.88118E-06 0.09306 -5.88905E-06 0.02699 -2.70777E-03 0.00098 ];
INF_SP6                   (idx, [1:   8]) = [ -3.05007E-04 0.00703 -2.41272E-05 0.01081 -1.69000E-05 0.00895 -4.43218E-03 0.00048 ];
INF_SP7                   (idx, [1:   8]) = [  1.09366E-04 0.01750  2.14676E-05 0.00985  6.76836E-06 0.02012 -6.32074E-04 0.00319 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98775E-01 0.00025  4.25976E-01 0.00058 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99337E-01 0.00037  4.21755E-01 0.00094 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99169E-01 0.00040  4.21338E-01 0.00090 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97830E-01 0.00032  4.35182E-01 0.00086 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11567E+00 0.00025  7.82543E-01 0.00059 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11359E+00 0.00037  7.90417E-01 0.00094 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11421E+00 0.00040  7.91193E-01 0.00090 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11922E+00 0.00032  7.66019E-01 0.00085 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.60994E-03 0.00367  2.14997E-04 0.02077  1.09547E-03 0.00912  1.07780E-03 0.00912  3.03193E-03 0.00575  8.86671E-04 0.01045  3.03073E-04 0.01674 ];
LAMBDA                    (idx, [1:  14]) = [  7.50180E-01 0.00873  1.24906E-02 7.8E-08  3.18192E-02 2.7E-05  1.09402E-01 3.8E-05  3.17101E-01 2.8E-05  1.35368E+00 2.6E-05  8.64440E+00 0.00019 ];

