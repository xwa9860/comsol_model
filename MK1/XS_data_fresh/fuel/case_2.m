
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
WORKING_DIRECTORY         (idx, [1: 62])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input1' ;
HOSTNAME                  (idx, [1: 12])  = 'n0113.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1047.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:12 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:24 2018' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 2000 ;
SKIP                      (idx, 1)        = 500 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1515449712 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00315E+00  9.99187E-01  1.00277E+00  1.00188E+00  9.98590E-01  9.97037E-01  9.98247E-01  9.98631E-01  1.00245E+00  9.96077E-01  1.00086E+00  9.97504E-01  9.98264E-01  1.00293E+00  9.98901E-01  1.00350E+00  1.00262E+00  1.00179E+00  9.96651E-01  9.98951E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  6.90993E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.30901E-01 2.4E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.84507E-01 4.9E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.88554E-01 4.9E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.40674E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.86287E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.86272E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.59280E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.40058E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001936 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00032 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00032 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.77078E+02 ;
RUNNING_TIME              (idx, 1)        =  2.92153E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.39200E-01  1.39200E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.16667E-03  1.16667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.90749E+01  2.90749E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.92150E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.75262 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98375E+01 0.00016 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86260E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.80 ;
ALLOC_MEMSIZE             (idx, 1)        = 4736.56;
MEMSIZE                   (idx, 1)        = 767.81;
XS_MEMSIZE                (idx, 1)        = 457.80;
MAT_MEMSIZE               (idx, 1)        = 173.11;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3968.75;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 145930 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.36951E+15 0.00022  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.54954E-01 0.00062 ];
U235_FISS                 (idx, [1:   4]) = [  7.26959E+18 0.00021  9.98320E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.22347E+16 0.00749  1.67994E-03 0.00748 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71528E+18 0.00062  2.70969E-01 0.00055 ];
U238_CAPT                 (idx, [1:   4]) = [  2.29068E+18 0.00062  3.61830E-01 0.00044 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001936 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80192E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001936 2.01802E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9163044 9.24469E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10540528 1.06348E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 298364 3.00735E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001936 2.01802E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -1.15484E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.33478E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.36168E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.36951E+19 0.00022 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.08892E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.05952E+17 0.00224 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.38228E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.57335E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43745E+00 6.4E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.29613E+00 0.00022  1.28753E+00 0.00022  8.55575E-03 0.00375 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.29572E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.29618E+00 0.00022 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.29572E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.31549E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80363E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80365E+01 2.3E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.93938E-07 0.00080 ];
IMP_EALF                  (idx, [1:   2]) = [  2.93726E-07 0.00042 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.73261E-03 0.00580 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.63833E-03 0.00148 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.12528E-03 0.00281  1.60990E-04 0.01534  8.53790E-04 0.00689  8.24159E-04 0.00688  2.35497E-03 0.00411  6.94695E-04 0.00763  2.36677E-04 0.01338 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.50381E-01 0.00683  1.09417E-02 0.00841  3.18195E-02 1.9E-05  1.09398E-01 2.6E-05  3.17109E-01 2.2E-05  1.35370E+00 1.9E-05  8.17799E+00 0.00535 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.59251E-03 0.00369  2.08527E-04 0.02094  1.09747E-03 0.00926  1.06570E-03 0.00935  3.02702E-03 0.00555  8.93089E-04 0.01018  3.00703E-04 0.01719 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.47325E-01 0.00879  1.24906E-02 3.0E-07  3.18196E-02 2.5E-05  1.09397E-01 3.1E-05  3.17119E-01 3.4E-05  1.35369E+00 2.6E-05  8.64248E+00 0.00017 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.80328E-04 0.00064  3.80434E-04 0.00065  3.64742E-04 0.00742 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.92912E-04 0.00061  4.93050E-04 0.00061  4.72698E-04 0.00741 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.60330E-03 0.00381  2.06472E-04 0.02146  1.09813E-03 0.00929  1.06534E-03 0.00949  3.03114E-03 0.00560  9.01987E-04 0.01031  3.00230E-04 0.01801 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.45892E-01 0.00916  1.24906E-02 4.0E-07  3.18192E-02 2.7E-05  1.09397E-01 3.2E-05  3.17121E-01 3.3E-05  1.35370E+00 2.8E-05  8.64297E+00 0.00022 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.65266E-04 0.00147  3.65354E-04 0.00147  3.47876E-04 0.01675 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.73390E-04 0.00145  4.73504E-04 0.00145  4.50863E-04 0.01674 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.50782E-03 0.01112  2.17398E-04 0.06368  1.08414E-03 0.02828  1.04362E-03 0.02776  2.95931E-03 0.01689  8.90082E-04 0.03073  3.13272E-04 0.05330 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.77715E-01 0.02773  1.24906E-02 7.7E-07  3.18174E-02 7.3E-05  1.09389E-01 6.7E-05  3.17096E-01 7.0E-05  1.35371E+00 6.2E-05  8.64797E+00 0.00060 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.51762E-03 0.01070  2.20131E-04 0.06177  1.09341E-03 0.02783  1.03922E-03 0.02693  2.96427E-03 0.01620  8.85882E-04 0.02993  3.14699E-04 0.05246 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.77684E-01 0.02754  1.24906E-02 7.8E-07  3.18180E-02 6.7E-05  1.09389E-01 6.8E-05  3.17105E-01 7.1E-05  1.35371E+00 6.2E-05  8.64779E+00 0.00059 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.78978E+01 0.01130 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.73234E-04 0.00037 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.83716E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.59374E-03 0.00216 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.76700E+01 0.00217 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08663E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59510E-05 8.8E-05  3.59504E-05 8.8E-05  3.60375E-05 0.00112 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.60536E-04 0.00040  7.60774E-04 0.00040  7.24426E-04 0.00479 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.03220E-01 0.00015  7.02285E-01 0.00015  8.99560E-01 0.00451 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07388E+01 0.00664 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.86272E+02 0.00023  1.79873E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.97597E+04 0.00159  3.79961E+05 0.00075  8.96423E+05 0.00038  1.66329E+06 0.00025  1.87307E+06 0.00019  1.94197E+06 0.00015  1.45926E+06 0.00016  1.14323E+06 0.00017  1.62971E+06 0.00013  1.60446E+06 0.00011  1.75042E+06 9.7E-05  1.74173E+06 0.00010  1.89917E+06 0.00010  1.85554E+06 9.2E-05  1.86279E+06 1.0E-04  1.63565E+06 0.00010  1.64693E+06 0.00012  1.63813E+06 0.00012  1.62953E+06 0.00011  3.22830E+06 8.8E-05  3.17346E+06 9.8E-05  2.32429E+06 0.00011  1.51513E+06 0.00013  1.79407E+06 0.00014  1.71620E+06 0.00015  1.45820E+06 0.00016  2.57141E+06 0.00016  5.49258E+05 0.00024  6.88896E+05 0.00025  6.22601E+05 0.00030  3.67218E+05 0.00033  6.43316E+05 0.00030  4.45684E+05 0.00033  3.91912E+05 0.00040  7.72965E+04 0.00064  7.68646E+04 0.00064  7.93340E+04 0.00068  8.20836E+04 0.00068  8.17828E+04 0.00066  8.14304E+04 0.00073  8.46127E+04 0.00070  8.04424E+04 0.00063  1.54349E+05 0.00056  2.55419E+05 0.00048  3.46174E+05 0.00038  1.10613E+06 0.00032  1.68297E+06 0.00035  2.63006E+06 0.00039  2.13770E+06 0.00041  1.68322E+06 0.00046  1.33293E+06 0.00043  1.52453E+06 0.00045  2.69822E+06 0.00044  3.27654E+06 0.00052  5.38160E+06 0.00050  6.59954E+06 0.00051  7.60764E+06 0.00054  3.96229E+06 0.00056  2.51101E+06 0.00059  1.65916E+06 0.00059  1.40599E+06 0.00066  1.32912E+06 0.00067  1.02288E+06 0.00067  6.74107E+05 0.00066  5.72774E+05 0.00077  5.22397E+05 0.00081  4.32769E+05 0.00083  2.96149E+05 0.00092  1.94606E+05 0.00108  6.12738E+04 0.00144 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.31597E+00 0.00023 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.58310E+21 0.00021  3.50590E+21 0.00055 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.39000E-01 1.6E-05  3.87546E-01 4.3E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.39865E-04 0.00038  9.48536E-04 0.00041 ];
INF_ABS                   (idx, [1:   4]) = [  1.17130E-03 0.00031  2.68712E-03 0.00047 ];
INF_FISS                  (idx, [1:   4]) = [  3.31438E-04 0.00038  1.73858E-03 0.00055 ];
INF_NSF                   (idx, [1:   4]) = [  8.09130E-04 0.00038  4.23640E-03 0.00055 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44127E+00 4.5E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02318E+02 3.4E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.17205E-07 0.00010  2.07757E-06 5.3E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37830E-01 1.6E-05  3.84860E-01 4.5E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13484E-02 0.00023  1.14610E-02 0.00043 ];
INF_SCATT2                (idx, [1:   4]) = [  2.47903E-03 0.00158 -4.34500E-03 0.00102 ];
INF_SCATT3                (idx, [1:   4]) = [  4.66112E-04 0.00711 -3.98828E-03 0.00085 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.54234E-04 0.01540 -4.64571E-03 0.00065 ];
INF_SCATT5                (idx, [1:   4]) = [  1.12173E-04 0.02033 -2.68910E-03 0.00083 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.40151E-04 0.00639 -4.49315E-03 0.00050 ];
INF_SCATT7                (idx, [1:   4]) = [  1.40109E-04 0.01572 -6.06040E-04 0.00358 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37864E-01 1.6E-05  3.84860E-01 4.5E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13576E-02 0.00023  1.14610E-02 0.00043 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48071E-03 0.00158 -4.34500E-03 0.00102 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.66351E-04 0.00710 -3.98828E-03 0.00085 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.54176E-04 0.01540 -4.64571E-03 0.00065 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.12132E-04 0.02028 -2.68910E-03 0.00083 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.40139E-04 0.00640 -4.49315E-03 0.00050 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.40097E-04 0.01574 -6.06040E-04 0.00358 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01102E-01 3.4E-05  3.74551E-01 4.8E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10705E+00 3.4E-05  8.89955E-01 4.8E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.13687E-03 0.00032  2.68712E-03 0.00047 ];
INF_REMXS                 (idx, [1:   4]) = [  5.82055E-03 0.00014  4.71146E-03 0.00042 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33180E-01 1.5E-05  4.64997E-03 0.00020  2.02501E-03 0.00046  3.82835E-01 4.6E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23574E-02 0.00022 -1.00892E-03 0.00054 -2.39440E-04 0.00150  1.17004E-02 0.00042 ];
INF_S2                    (idx, [1:   8]) = [  2.66955E-03 0.00148 -1.90523E-04 0.00201 -1.25954E-04 0.00186 -4.21905E-03 0.00106 ];
INF_S3                    (idx, [1:   8]) = [  5.17113E-04 0.00627 -5.10008E-05 0.00681 -4.42901E-05 0.00514 -3.94399E-03 0.00087 ];
INF_S4                    (idx, [1:   8]) = [ -1.14726E-04 0.02087 -3.95081E-05 0.00815 -2.90426E-05 0.00660 -4.61667E-03 0.00064 ];
INF_S5                    (idx, [1:   8]) = [  1.15724E-04 0.02032 -3.55025E-06 0.08056 -6.63790E-06 0.03087 -2.68246E-03 0.00084 ];
INF_S6                    (idx, [1:   8]) = [ -3.13237E-04 0.00694 -2.69139E-05 0.00902 -1.94173E-05 0.00846 -4.47373E-03 0.00050 ];
INF_S7                    (idx, [1:   8]) = [  1.17154E-04 0.01864  2.29547E-05 0.01056  9.35501E-06 0.01740 -6.15395E-04 0.00357 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33214E-01 1.5E-05  4.64997E-03 0.00020  2.02501E-03 0.00046  3.82835E-01 4.6E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23665E-02 0.00022 -1.00892E-03 0.00054 -2.39440E-04 0.00150  1.17004E-02 0.00042 ];
INF_SP2                   (idx, [1:   8]) = [  2.67123E-03 0.00147 -1.90523E-04 0.00201 -1.25954E-04 0.00186 -4.21905E-03 0.00106 ];
INF_SP3                   (idx, [1:   8]) = [  5.17352E-04 0.00625 -5.10008E-05 0.00681 -4.42901E-05 0.00514 -3.94399E-03 0.00087 ];
INF_SP4                   (idx, [1:   8]) = [ -1.14668E-04 0.02086 -3.95081E-05 0.00815 -2.90426E-05 0.00660 -4.61667E-03 0.00064 ];
INF_SP5                   (idx, [1:   8]) = [  1.15682E-04 0.02027 -3.55025E-06 0.08056 -6.63790E-06 0.03087 -2.68246E-03 0.00084 ];
INF_SP6                   (idx, [1:   8]) = [ -3.13225E-04 0.00695 -2.69139E-05 0.00902 -1.94173E-05 0.00846 -4.47373E-03 0.00050 ];
INF_SP7                   (idx, [1:   8]) = [  1.17143E-04 0.01866  2.29547E-05 0.01056  9.35501E-06 0.01740 -6.15395E-04 0.00357 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98864E-01 0.00020  4.25984E-01 0.00058 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99206E-01 0.00037  4.21297E-01 0.00100 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99275E-01 0.00033  4.21063E-01 0.00092 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.98122E-01 0.00038  4.36000E-01 0.00089 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11534E+00 0.00020  7.82528E-01 0.00058 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11407E+00 0.00037  7.91286E-01 0.00100 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11381E+00 0.00033  7.91713E-01 0.00092 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11813E+00 0.00038  7.64586E-01 0.00089 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.59251E-03 0.00369  2.08527E-04 0.02094  1.09747E-03 0.00926  1.06570E-03 0.00935  3.02702E-03 0.00555  8.93089E-04 0.01018  3.00703E-04 0.01719 ];
LAMBDA                    (idx, [1:  14]) = [  7.47325E-01 0.00879  1.24906E-02 3.0E-07  3.18196E-02 2.5E-05  1.09397E-01 3.1E-05  3.17119E-01 3.4E-05  1.35369E+00 2.6E-05  8.64248E+00 0.00017 ];

