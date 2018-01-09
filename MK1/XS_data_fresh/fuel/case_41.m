
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input40' ;
HOSTNAME                  (idx, [1: 12])  = 'n0068.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:41 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00385E+00  9.94064E-01  9.98095E-01  1.00180E+00  1.00328E+00  1.00238E+00  9.99636E-01  1.00103E+00  9.99577E-01  9.99404E-01  1.00136E+00  9.97498E-01  9.95463E-01  9.94934E-01  9.97795E-01  9.97024E-01  9.96129E-01  1.00536E+00  1.00606E+00  1.00527E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.65677E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.23432E-01 2.7E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81217E-01 4.6E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85490E-01 4.5E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.81497E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.83919E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.83904E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.60281E+02 0.00028  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.92759E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002032 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.81905E+02 ;
RUNNING_TIME              (idx, 1)        =  2.94269E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.20933E-01  1.20933E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.30000E-03  1.30000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.93047E+01  2.93047E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.94266E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77455 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98460E+01 0.00015 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87267E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4798.42;
MEMSIZE                   (idx, 1)        = 831.93;
XS_MEMSIZE                (idx, 1)        = 499.53;
MAT_MEMSIZE               (idx, 1)        = 195.50;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.49;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 164869 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35007E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.40636E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.26923E+18 0.00020  9.98377E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.18167E+16 0.00739  1.62272E-03 0.00738 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70562E+18 0.00061  2.77734E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.15963E+18 0.00063  3.51627E-01 0.00046 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002032 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79986E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002032 2.01800E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9017500 9.09781E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10691397 1.07867E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 293135 2.95469E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002032 2.01800E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.45869E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.14082E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34229E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35007E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.90390E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.99478E+17 0.00222 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36223E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.50449E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31476E+00 0.00022  1.30589E+00 0.00021  8.70011E-03 0.00373 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31476E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31483E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31476E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33447E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81414E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81425E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.64616E-07 0.00080 ];
IMP_EALF                  (idx, [1:   2]) = [  2.64200E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.51394E-03 0.00571 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.53106E-03 0.00151 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.06297E-03 0.00282  1.62668E-04 0.01576  8.44855E-04 0.00694  8.16740E-04 0.00699  2.32496E-03 0.00416  6.74037E-04 0.00757  2.39705E-04 0.01266 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.60144E-01 0.00662  1.08418E-02 0.00872  3.18185E-02 2.1E-05  1.09397E-01 2.5E-05  3.17088E-01 2.0E-05  1.35374E+00 1.9E-05  8.31506E+00 0.00445 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.60731E-03 0.00378  2.17506E-04 0.02110  1.10390E-03 0.00951  1.06449E-03 0.00954  3.02978E-03 0.00539  8.79699E-04 0.01025  3.11932E-04 0.01692 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.58639E-01 0.00878  1.24906E-02 1.8E-07  3.18188E-02 2.7E-05  1.09401E-01 4.0E-05  3.17092E-01 2.7E-05  1.35375E+00 2.4E-05  8.64393E+00 0.00021 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.69853E-04 0.00064  3.69916E-04 0.00064  3.59491E-04 0.00751 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.86221E-04 0.00060  4.86303E-04 0.00060  4.72634E-04 0.00750 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.62370E-03 0.00382  2.13496E-04 0.02126  1.09961E-03 0.00960  1.07133E-03 0.00970  3.04117E-03 0.00549  8.86956E-04 0.01037  3.11136E-04 0.01757 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.58318E-01 0.00917  1.24906E-02 2.4E-07  3.18185E-02 3.1E-05  1.09401E-01 3.7E-05  3.17085E-01 2.8E-05  1.35377E+00 2.6E-05  8.64379E+00 0.00023 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.55219E-04 0.00146  3.55301E-04 0.00146  3.41622E-04 0.01804 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.66973E-04 0.00144  4.67081E-04 0.00144  4.48976E-04 0.01801 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.66235E-03 0.01116  2.29016E-04 0.06231  1.09642E-03 0.02787  1.06702E-03 0.02869  3.06093E-03 0.01678  9.00068E-04 0.03157  3.08907E-04 0.05100 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.67552E-01 0.02765  1.24906E-02 1.5E-07  3.18193E-02 6.7E-05  1.09400E-01 9.3E-05  3.17117E-01 9.2E-05  1.35364E+00 6.9E-05  8.64624E+00 0.00054 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.67809E-03 0.01095  2.32556E-04 0.06042  1.10155E-03 0.02690  1.06719E-03 0.02799  3.05914E-03 0.01637  9.04404E-04 0.03079  3.13251E-04 0.05027 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.68137E-01 0.02715  1.24906E-02 1.3E-07  3.18193E-02 6.6E-05  1.09400E-01 9.4E-05  3.17108E-01 8.5E-05  1.35365E+00 6.8E-05  8.64618E+00 0.00054 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.88313E+01 0.01129 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.62747E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.76878E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.64329E-03 0.00211 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.83203E+01 0.00216 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.09048E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58019E-05 8.4E-05  3.58011E-05 8.5E-05  3.59385E-05 0.00105 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.46287E-04 0.00039  7.46487E-04 0.00039  7.15936E-04 0.00491 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.10092E-01 0.00015  7.09104E-01 0.00015  9.19058E-01 0.00443 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08372E+01 0.00651 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.83904E+02 0.00023  1.76460E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.94554E+04 0.00170  3.79867E+05 0.00071  8.96924E+05 0.00040  1.66428E+06 0.00026  1.87369E+06 0.00023  1.94246E+06 0.00018  1.45910E+06 0.00014  1.14315E+06 0.00017  1.62937E+06 0.00014  1.60438E+06 0.00012  1.75048E+06 0.00010  1.74177E+06 0.00011  1.89931E+06 0.00010  1.85583E+06 9.8E-05  1.86321E+06 9.1E-05  1.63584E+06 0.00011  1.64679E+06 0.00011  1.63842E+06 0.00010  1.62944E+06 0.00011  3.22893E+06 8.0E-05  3.17413E+06 9.1E-05  2.32668E+06 0.00011  1.51596E+06 0.00013  1.79800E+06 0.00013  1.72384E+06 0.00015  1.46428E+06 0.00015  2.58564E+06 0.00016  5.51442E+05 0.00027  6.91438E+05 0.00030  6.22987E+05 0.00028  3.66573E+05 0.00028  6.40516E+05 0.00029  4.41476E+05 0.00032  3.85571E+05 0.00037  7.56078E+04 0.00074  7.50394E+04 0.00076  7.73303E+04 0.00072  7.96428E+04 0.00061  7.92469E+04 0.00066  7.86540E+04 0.00065  8.13375E+04 0.00072  7.70332E+04 0.00068  1.47115E+05 0.00055  2.40936E+05 0.00043  3.21793E+05 0.00046  9.97646E+05 0.00033  1.49077E+06 0.00037  2.36104E+06 0.00046  1.95804E+06 0.00046  1.56310E+06 0.00047  1.24946E+06 0.00050  1.43815E+06 0.00049  2.57037E+06 0.00049  3.15700E+06 0.00049  5.25171E+06 0.00049  6.53241E+06 0.00050  7.62411E+06 0.00052  4.00402E+06 0.00054  2.54952E+06 0.00055  1.68913E+06 0.00056  1.43305E+06 0.00059  1.35689E+06 0.00058  1.04566E+06 0.00060  6.89759E+05 0.00065  5.86181E+05 0.00073  5.34918E+05 0.00074  4.42163E+05 0.00071  3.03520E+05 0.00076  1.99371E+05 0.00085  6.28581E+04 0.00135 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33454E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.52251E+21 0.00022  3.38147E+21 0.00057 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38898E-01 1.8E-05  3.87623E-01 4.0E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.12162E-04 0.00038  9.69990E-04 0.00040 ];
INF_ABS                   (idx, [1:   4]) = [  1.13909E-03 0.00033  2.78317E-03 0.00047 ];
INF_FISS                  (idx, [1:   4]) = [  3.26931E-04 0.00042  1.81318E-03 0.00057 ];
INF_NSF                   (idx, [1:   4]) = [  7.98156E-04 0.00042  4.41818E-03 0.00057 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44136E+00 4.2E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.7E-07  2.02270E+02 1.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.14769E-07 0.00011  2.10707E-06 4.3E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37759E-01 1.9E-05  3.84840E-01 4.2E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13657E-02 0.00021  1.12975E-02 0.00043 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48909E-03 0.00148 -4.42246E-03 0.00091 ];
INF_SCATT3                (idx, [1:   4]) = [  4.72835E-04 0.00639 -4.06159E-03 0.00082 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.46739E-04 0.02068 -4.65463E-03 0.00053 ];
INF_SCATT5                (idx, [1:   4]) = [  1.18190E-04 0.02199 -2.71747E-03 0.00105 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.26000E-04 0.00728 -4.43353E-03 0.00057 ];
INF_SCATT7                (idx, [1:   4]) = [  1.28101E-04 0.01659 -6.27534E-04 0.00335 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37793E-01 1.9E-05  3.84840E-01 4.2E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13749E-02 0.00021  1.12975E-02 0.00043 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.49080E-03 0.00148 -4.42246E-03 0.00091 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.73095E-04 0.00640 -4.06159E-03 0.00082 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.46703E-04 0.02066 -4.65463E-03 0.00053 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.18186E-04 0.02202 -2.71747E-03 0.00105 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.25967E-04 0.00729 -4.43353E-03 0.00057 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.28126E-04 0.01661 -6.27534E-04 0.00335 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00953E-01 3.5E-05  3.74880E-01 4.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10759E+00 3.5E-05  8.89173E-01 4.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.10460E-03 0.00034  2.78317E-03 0.00047 ];
INF_REMXS                 (idx, [1:   4]) = [  5.38718E-03 0.00014  4.38394E-03 0.00038 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33511E-01 1.8E-05  4.24770E-03 0.00023  1.60139E-03 0.00045  3.83239E-01 4.3E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23192E-02 0.00020 -9.53504E-04 0.00050 -1.69774E-04 0.00185  1.14673E-02 0.00042 ];
INF_S2                    (idx, [1:   8]) = [  2.65718E-03 0.00138 -1.68095E-04 0.00221 -1.04800E-04 0.00238 -4.31766E-03 0.00093 ];
INF_S3                    (idx, [1:   8]) = [  5.16629E-04 0.00581 -4.37935E-05 0.00735 -3.79613E-05 0.00537 -4.02363E-03 0.00083 ];
INF_S4                    (idx, [1:   8]) = [ -1.12365E-04 0.02676 -3.43745E-05 0.00832 -2.37305E-05 0.00748 -4.63090E-03 0.00053 ];
INF_S5                    (idx, [1:   8]) = [  1.20575E-04 0.02141 -2.38486E-06 0.10908 -5.77398E-06 0.02551 -2.71169E-03 0.00105 ];
INF_S6                    (idx, [1:   8]) = [ -3.01747E-04 0.00780 -2.42531E-05 0.00930 -1.62120E-05 0.00941 -4.41731E-03 0.00057 ];
INF_S7                    (idx, [1:   8]) = [  1.06882E-04 0.01969  2.12193E-05 0.01132  6.91002E-06 0.01875 -6.34444E-04 0.00332 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33546E-01 1.8E-05  4.24770E-03 0.00023  1.60139E-03 0.00045  3.83239E-01 4.3E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23284E-02 0.00020 -9.53504E-04 0.00050 -1.69774E-04 0.00185  1.14673E-02 0.00042 ];
INF_SP2                   (idx, [1:   8]) = [  2.65889E-03 0.00138 -1.68095E-04 0.00221 -1.04800E-04 0.00238 -4.31766E-03 0.00093 ];
INF_SP3                   (idx, [1:   8]) = [  5.16888E-04 0.00582 -4.37935E-05 0.00735 -3.79613E-05 0.00537 -4.02363E-03 0.00083 ];
INF_SP4                   (idx, [1:   8]) = [ -1.12329E-04 0.02675 -3.43745E-05 0.00832 -2.37305E-05 0.00748 -4.63090E-03 0.00053 ];
INF_SP5                   (idx, [1:   8]) = [  1.20571E-04 0.02144 -2.38486E-06 0.10908 -5.77398E-06 0.02551 -2.71169E-03 0.00105 ];
INF_SP6                   (idx, [1:   8]) = [ -3.01714E-04 0.00781 -2.42531E-05 0.00930 -1.62120E-05 0.00941 -4.41731E-03 0.00057 ];
INF_SP7                   (idx, [1:   8]) = [  1.06907E-04 0.01971  2.12193E-05 0.01132  6.91002E-06 0.01875 -6.34444E-04 0.00332 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98772E-01 0.00022  4.26182E-01 0.00064 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99129E-01 0.00034  4.21653E-01 0.00100 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99180E-01 0.00033  4.21442E-01 0.00100 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.98014E-01 0.00034  4.35841E-01 0.00098 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11569E+00 0.00023  7.82170E-01 0.00065 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11436E+00 0.00034  7.90618E-01 0.00100 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11417E+00 0.00033  7.91015E-01 0.00100 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11853E+00 0.00034  7.64877E-01 0.00097 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.60731E-03 0.00378  2.17506E-04 0.02110  1.10390E-03 0.00951  1.06449E-03 0.00954  3.02978E-03 0.00539  8.79699E-04 0.01025  3.11932E-04 0.01692 ];
LAMBDA                    (idx, [1:  14]) = [  7.58639E-01 0.00878  1.24906E-02 1.8E-07  3.18188E-02 2.7E-05  1.09401E-01 4.0E-05  3.17092E-01 2.7E-05  1.35375E+00 2.4E-05  8.64393E+00 0.00021 ];

