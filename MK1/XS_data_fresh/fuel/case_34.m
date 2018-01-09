
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input33' ;
HOSTNAME                  (idx, [1: 12])  = 'n0061.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:32 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.99511E-01  1.00066E+00  1.00074E+00  9.98395E-01  1.00367E+00  9.97663E-01  1.00599E+00  1.00457E+00  9.98122E-01  9.99017E-01  9.97817E-01  1.00278E+00  9.94035E-01  9.95071E-01  1.00388E+00  9.95851E-01  1.00332E+00  9.99694E-01  1.00089E+00  9.98324E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 9.3E-10  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.23420E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.27658E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.84446E-01 4.9E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.88547E-01 4.9E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.72501E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.83901E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.83886E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.53411E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.57714E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001927 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00032 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00032 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.79012E+02 ;
RUNNING_TIME              (idx, 1)        =  2.92776E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.14517E-01  1.14517E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  9.66667E-04  9.66667E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.91621E+01  2.91621E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.92772E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77660 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98446E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87139E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4724.92;
MEMSIZE                   (idx, 1)        = 754.62;
XS_MEMSIZE                (idx, 1)        = 449.24;
MAT_MEMSIZE               (idx, 1)        = 168.48;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3970.31;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 142018 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.37235E+15 0.00022  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.60620E-01 0.00060 ];
U235_FISS                 (idx, [1:   4]) = [  7.27056E+18 0.00020  9.98353E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.19958E+16 0.00741  1.64695E-03 0.00740 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71054E+18 0.00062  2.69051E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.34063E+18 0.00061  3.68124E-01 0.00043 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001927 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80504E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001927 2.01805E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9183982 9.26554E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10519099 1.06138E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 298846 3.01157E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001927 2.01805E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -1.78814E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.2E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.35762E+18 0.00033 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.36397E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.37235E+19 0.00022 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.01479E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.06675E+17 0.00213 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.38463E+19 0.00016 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.54563E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43745E+00 6.6E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.29359E+00 0.00022  1.28497E+00 0.00022  8.55472E-03 0.00383 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.29351E+00 0.00016 ];
COL_KEFF                  (idx, [1:   2]) = [  1.29350E+00 0.00022 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.29351E+00 0.00016 ];
ABS_KINF                  (idx, [1:   2]) = [  1.31328E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80980E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80980E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.76336E-07 0.00081 ];
IMP_EALF                  (idx, [1:   2]) = [  2.76229E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.60394E-03 0.00579 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.67344E-03 0.00151 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.14134E-03 0.00291  1.60994E-04 0.01605  8.45004E-04 0.00699  8.32628E-04 0.00702  2.37422E-03 0.00410  6.84848E-04 0.00757  2.43645E-04 0.01308 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.60055E-01 0.00690  1.07544E-02 0.00899  3.17872E-02 0.00071  1.09343E-01 0.00050  3.17088E-01 2.0E-05  1.35304E+00 0.00050  8.21965E+00 0.00511 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.61419E-03 0.00382  2.11512E-04 0.02082  1.08598E-03 0.00919  1.07989E-03 0.00931  3.04634E-03 0.00564  8.77605E-04 0.01025  3.12853E-04 0.01732 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.58141E-01 0.00908  1.24906E-02 1.9E-07  3.18191E-02 2.5E-05  1.09400E-01 3.6E-05  3.17089E-01 2.8E-05  1.35373E+00 2.4E-05  8.64623E+00 0.00023 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.79088E-04 0.00065  3.79197E-04 0.00065  3.63270E-04 0.00755 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.90333E-04 0.00061  4.90474E-04 0.00061  4.69860E-04 0.00755 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.61205E-03 0.00389  2.14184E-04 0.02126  1.08506E-03 0.00941  1.07644E-03 0.00952  3.04348E-03 0.00575  8.78767E-04 0.01048  3.14116E-04 0.01760 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.60009E-01 0.00928  1.24906E-02 2.7E-07  3.18194E-02 2.4E-05  1.09396E-01 3.1E-05  3.17085E-01 2.8E-05  1.35373E+00 2.4E-05  8.64632E+00 0.00024 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.62773E-04 0.00146  3.62848E-04 0.00147  3.57130E-04 0.01996 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.69238E-04 0.00145  4.69334E-04 0.00145  4.62056E-04 0.01996 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.76136E-03 0.01145  2.13650E-04 0.06159  1.09372E-03 0.02760  1.09760E-03 0.02730  3.15970E-03 0.01676  8.85363E-04 0.03110  3.11324E-04 0.04902 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.47716E-01 0.02692  1.24906E-02 7.4E-09  3.18204E-02 5.8E-05  1.09408E-01 0.00011  3.17046E-01 6.6E-05  1.35369E+00 6.6E-05  8.64367E+00 0.00048 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.76302E-03 0.01111  2.13794E-04 0.06046  1.08100E-03 0.02672  1.10760E-03 0.02652  3.15960E-03 0.01623  8.87056E-04 0.03044  3.13968E-04 0.04803 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.48033E-01 0.02579  1.24906E-02 7.4E-09  3.18202E-02 5.8E-05  1.09406E-01 0.00011  3.17048E-01 6.7E-05  1.35371E+00 6.4E-05  8.64374E+00 0.00048 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.86996E+01 0.01150 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.71537E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.80565E-04 0.00029 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.65477E-03 0.00220 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.79174E+01 0.00225 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08700E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58270E-05 8.5E-05  3.58263E-05 8.5E-05  3.59335E-05 0.00106 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.54305E-04 0.00040  7.54536E-04 0.00040  7.19103E-04 0.00496 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.00241E-01 0.00015  6.99308E-01 0.00016  8.96375E-01 0.00459 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07373E+01 0.00670 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.83886E+02 0.00023  1.77815E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.92585E+04 0.00188  3.79744E+05 0.00076  8.96815E+05 0.00046  1.66306E+06 0.00029  1.87296E+06 0.00018  1.94148E+06 0.00016  1.45872E+06 0.00015  1.14301E+06 0.00019  1.62985E+06 0.00013  1.60420E+06 0.00012  1.75008E+06 0.00011  1.74175E+06 9.8E-05  1.89881E+06 0.00011  1.85546E+06 0.00010  1.86277E+06 0.00011  1.63547E+06 0.00013  1.64645E+06 0.00011  1.63811E+06 0.00012  1.62916E+06 0.00011  3.22784E+06 7.9E-05  3.17230E+06 0.00010  2.32332E+06 0.00011  1.51201E+06 0.00012  1.79135E+06 0.00012  1.71108E+06 0.00012  1.45225E+06 0.00015  2.55625E+06 0.00015  5.44320E+05 0.00027  6.82389E+05 0.00028  6.15500E+05 0.00028  3.62655E+05 0.00035  6.33567E+05 0.00028  4.37824E+05 0.00034  3.82909E+05 0.00039  7.51439E+04 0.00072  7.45901E+04 0.00068  7.69402E+04 0.00071  7.94125E+04 0.00069  7.90050E+04 0.00069  7.84422E+04 0.00061  8.11553E+04 0.00066  7.70304E+04 0.00062  1.47135E+05 0.00049  2.41939E+05 0.00044  3.24370E+05 0.00040  1.01646E+06 0.00031  1.53370E+06 0.00031  2.42756E+06 0.00037  2.00424E+06 0.00041  1.59452E+06 0.00045  1.27033E+06 0.00043  1.45948E+06 0.00047  2.60097E+06 0.00046  3.18174E+06 0.00049  5.26903E+06 0.00047  6.51812E+06 0.00050  7.57338E+06 0.00051  3.96384E+06 0.00055  2.51988E+06 0.00054  1.66773E+06 0.00053  1.41442E+06 0.00058  1.33846E+06 0.00058  1.03059E+06 0.00059  6.79970E+05 0.00061  5.77652E+05 0.00070  5.27475E+05 0.00069  4.36405E+05 0.00071  2.98661E+05 0.00082  1.96629E+05 0.00075  6.20116E+04 0.00141 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.31327E+00 0.00024 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.57391E+21 0.00023  3.44096E+21 0.00055 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38998E-01 1.5E-05  3.87714E-01 4.1E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.53612E-04 0.00041  9.61034E-04 0.00039 ];
INF_ABS                   (idx, [1:   4]) = [  1.18060E-03 0.00034  2.73794E-03 0.00044 ];
INF_FISS                  (idx, [1:   4]) = [  3.26991E-04 0.00045  1.77690E-03 0.00054 ];
INF_NSF                   (idx, [1:   4]) = [  7.98304E-04 0.00045  4.32978E-03 0.00054 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44137E+00 4.7E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.4E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.14661E-07 0.00010  2.09710E-06 4.2E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37817E-01 1.5E-05  3.84977E-01 4.3E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13651E-02 0.00025  1.13627E-02 0.00041 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48959E-03 0.00151 -4.40729E-03 0.00085 ];
INF_SCATT3                (idx, [1:   4]) = [  4.70885E-04 0.00684 -4.04344E-03 0.00085 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.46646E-04 0.01762 -4.66188E-03 0.00058 ];
INF_SCATT5                (idx, [1:   4]) = [  1.16470E-04 0.02020 -2.71520E-03 0.00101 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.31010E-04 0.00654 -4.46245E-03 0.00059 ];
INF_SCATT7                (idx, [1:   4]) = [  1.27172E-04 0.01722 -6.18734E-04 0.00389 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37852E-01 1.5E-05  3.84977E-01 4.3E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13743E-02 0.00025  1.13627E-02 0.00041 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.49130E-03 0.00151 -4.40729E-03 0.00085 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.71121E-04 0.00682 -4.04344E-03 0.00085 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.46605E-04 0.01763 -4.66188E-03 0.00058 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.16432E-04 0.02022 -2.71520E-03 0.00101 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.31007E-04 0.00654 -4.46245E-03 0.00059 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.27157E-04 0.01721 -6.18734E-04 0.00389 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01014E-01 3.7E-05  3.74877E-01 4.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10737E+00 3.7E-05  8.89181E-01 4.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.14595E-03 0.00035  2.73794E-03 0.00044 ];
INF_REMXS                 (idx, [1:   4]) = [  5.50750E-03 0.00013  4.45187E-03 0.00041 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33491E-01 1.5E-05  4.32629E-03 0.00021  1.71443E-03 0.00048  3.83263E-01 4.3E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23230E-02 0.00023 -9.57950E-04 0.00056 -1.85308E-04 0.00166  1.15480E-02 0.00040 ];
INF_S2                    (idx, [1:   8]) = [  2.66340E-03 0.00140 -1.73813E-04 0.00238 -1.10896E-04 0.00225 -4.29639E-03 0.00088 ];
INF_S3                    (idx, [1:   8]) = [  5.16598E-04 0.00618 -4.57137E-05 0.00690 -3.99073E-05 0.00566 -4.00353E-03 0.00086 ];
INF_S4                    (idx, [1:   8]) = [ -1.10734E-04 0.02329 -3.59123E-05 0.00698 -2.53309E-05 0.00649 -4.63655E-03 0.00059 ];
INF_S5                    (idx, [1:   8]) = [  1.19401E-04 0.02025 -2.93014E-06 0.09656 -6.16134E-06 0.02826 -2.70904E-03 0.00101 ];
INF_S6                    (idx, [1:   8]) = [ -3.06387E-04 0.00694 -2.46227E-05 0.00811 -1.70635E-05 0.00862 -4.44538E-03 0.00059 ];
INF_S7                    (idx, [1:   8]) = [  1.05668E-04 0.02062  2.15034E-05 0.01060  7.31272E-06 0.01990 -6.26047E-04 0.00381 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33525E-01 1.5E-05  4.32629E-03 0.00021  1.71443E-03 0.00048  3.83263E-01 4.3E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23322E-02 0.00023 -9.57950E-04 0.00056 -1.85308E-04 0.00166  1.15480E-02 0.00040 ];
INF_SP2                   (idx, [1:   8]) = [  2.66511E-03 0.00140 -1.73813E-04 0.00238 -1.10896E-04 0.00225 -4.29639E-03 0.00088 ];
INF_SP3                   (idx, [1:   8]) = [  5.16834E-04 0.00617 -4.57137E-05 0.00690 -3.99073E-05 0.00566 -4.00353E-03 0.00086 ];
INF_SP4                   (idx, [1:   8]) = [ -1.10693E-04 0.02330 -3.59123E-05 0.00698 -2.53309E-05 0.00649 -4.63655E-03 0.00059 ];
INF_SP5                   (idx, [1:   8]) = [  1.19362E-04 0.02027 -2.93014E-06 0.09656 -6.16134E-06 0.02826 -2.70904E-03 0.00101 ];
INF_SP6                   (idx, [1:   8]) = [ -3.06384E-04 0.00694 -2.46227E-05 0.00811 -1.70635E-05 0.00862 -4.44538E-03 0.00059 ];
INF_SP7                   (idx, [1:   8]) = [  1.05654E-04 0.02060  2.15034E-05 0.01060  7.31272E-06 0.01990 -6.26047E-04 0.00381 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98782E-01 0.00022  4.26288E-01 0.00059 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99370E-01 0.00033  4.20999E-01 0.00092 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99281E-01 0.00035  4.22011E-01 0.00082 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97705E-01 0.00033  4.36250E-01 0.00094 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11565E+00 0.00022  7.81970E-01 0.00059 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11346E+00 0.00033  7.91835E-01 0.00092 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11379E+00 0.00035  7.89921E-01 0.00082 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11969E+00 0.00033  7.64155E-01 0.00094 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.61419E-03 0.00382  2.11512E-04 0.02082  1.08598E-03 0.00919  1.07989E-03 0.00931  3.04634E-03 0.00564  8.77605E-04 0.01025  3.12853E-04 0.01732 ];
LAMBDA                    (idx, [1:  14]) = [  7.58141E-01 0.00908  1.24906E-02 1.9E-07  3.18191E-02 2.5E-05  1.09400E-01 3.6E-05  3.17089E-01 2.8E-05  1.35373E+00 2.4E-05  8.64623E+00 0.00023 ];

