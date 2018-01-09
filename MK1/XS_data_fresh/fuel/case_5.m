
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
WORKING_DIRECTORY         (idx, [1: 62])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input4' ;
HOSTNAME                  (idx, [1: 12])  = 'n0116.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1047.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:12 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:31 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00632E+00  9.89780E-01  1.00265E+00  9.97816E-01  9.98146E-01  1.00170E+00  1.00369E+00  1.00570E+00  1.00286E+00  9.94554E-01  1.00404E+00  1.00490E+00  1.00260E+00  9.95110E-01  9.94527E-01  9.96665E-01  9.96013E-01  9.97934E-01  1.00508E+00  9.99918E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.75830E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.22417E-01 2.7E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81032E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85347E-01 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.90243E+00 0.00035  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.83293E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.83279E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.59037E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.98546E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002017 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00033 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00033 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.79262E+02 ;
RUNNING_TIME              (idx, 1)        =  2.93206E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.36017E-01  1.36017E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.46666E-03  1.46666E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.91831E+01  2.91831E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.93202E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.75613 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98381E+01 0.00016 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86316E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.80 ;
ALLOC_MEMSIZE             (idx, 1)        = 4800.14;
MEMSIZE                   (idx, 1)        = 833.85;
XS_MEMSIZE                (idx, 1)        = 500.78;
MAT_MEMSIZE               (idx, 1)        = 196.17;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.29;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 165437 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35724E+15 0.00022  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.47866E-01 0.00064 ];
U235_FISS                 (idx, [1:   4]) = [  7.27181E+18 0.00020  9.98343E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20701E+16 0.00753  1.65697E-03 0.00753 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70454E+18 0.00062  2.74577E-01 0.00055 ];
U238_CAPT                 (idx, [1:   4]) = [  2.22488E+18 0.00064  3.58354E-01 0.00046 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002017 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79593E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002017 2.01796E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9068073 9.14813E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10638859 1.07340E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 295085 2.97488E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002017 2.01796E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -3.01749E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.20754E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34896E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35724E+19 0.00022 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.91653E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.01914E+17 0.00221 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36915E+19 0.00016 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.50919E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.30819E+00 0.00023  1.29957E+00 0.00022  8.59888E-03 0.00378 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30813E+00 0.00016 ];
COL_KEFF                  (idx, [1:   2]) = [  1.30789E+00 0.00022 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30813E+00 0.00016 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32788E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81471E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81474E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.63112E-07 0.00081 ];
IMP_EALF                  (idx, [1:   2]) = [  2.62901E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.56578E-03 0.00577 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.58379E-03 0.00149 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.09478E-03 0.00288  1.60266E-04 0.01584  8.52154E-04 0.00683  8.19696E-04 0.00710  2.34360E-03 0.00420  6.81381E-04 0.00783  2.37688E-04 0.01300 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.53171E-01 0.00667  1.08543E-02 0.00868  3.18195E-02 1.9E-05  1.09400E-01 2.8E-05  3.17098E-01 2.1E-05  1.35304E+00 0.00050  8.19489E+00 0.00524 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.58265E-03 0.00379  2.03856E-04 0.02108  1.09806E-03 0.00916  1.05606E-03 0.00938  3.02973E-03 0.00554  8.83612E-04 0.01047  3.11336E-04 0.01756 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.59873E-01 0.00922  1.24906E-02 2.6E-07  3.18196E-02 2.5E-05  1.09404E-01 3.9E-05  3.17106E-01 3.0E-05  1.35368E+00 2.5E-05  8.64406E+00 0.00019 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.72397E-04 0.00065  3.72486E-04 0.00065  3.58629E-04 0.00743 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.87115E-04 0.00060  4.87231E-04 0.00060  4.69055E-04 0.00741 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.57277E-03 0.00383  2.08213E-04 0.02133  1.09461E-03 0.00913  1.05418E-03 0.00973  3.02503E-03 0.00565  8.81477E-04 0.01054  3.09257E-04 0.01756 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.56576E-01 0.00929  1.24906E-02 4.3E-07  3.18191E-02 3.3E-05  1.09404E-01 4.5E-05  3.17100E-01 3.0E-05  1.35368E+00 2.9E-05  8.64421E+00 0.00023 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.56919E-04 0.00144  3.56991E-04 0.00145  3.46530E-04 0.01806 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.66873E-04 0.00142  4.66968E-04 0.00143  4.53321E-04 0.01810 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.68750E-03 0.01142  2.20944E-04 0.06254  1.13436E-03 0.02658  1.03317E-03 0.02836  3.12762E-03 0.01675  8.66683E-04 0.03160  3.04722E-04 0.05388 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.38364E-01 0.02817  1.24906E-02 7.2E-07  3.18201E-02 5.7E-05  1.09398E-01 9.0E-05  3.17108E-01 0.00010  1.35380E+00 5.0E-05  8.63894E+00 0.00030 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.67578E-03 0.01113  2.23531E-04 0.05983  1.14159E-03 0.02584  1.03457E-03 0.02753  3.09526E-03 0.01640  8.76412E-04 0.03093  3.04417E-04 0.05262 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.44424E-01 0.02784  1.24906E-02 7.2E-07  3.18200E-02 5.6E-05  1.09397E-01 9.0E-05  3.17110E-01 9.9E-05  1.35380E+00 5.0E-05  8.63893E+00 0.00030 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.88020E+01 0.01152 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.64950E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.77372E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.59933E-03 0.00226 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.80879E+01 0.00229 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08956E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.57862E-05 8.0E-05  3.57856E-05 8.0E-05  3.58802E-05 0.00102 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.46918E-04 0.00040  7.47090E-04 0.00040  7.20353E-04 0.00493 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.06457E-01 0.00015  7.05487E-01 0.00015  9.11489E-01 0.00453 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07602E+01 0.00659 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.83279E+02 0.00023  1.76404E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.94242E+04 0.00169  3.79236E+05 0.00071  8.97037E+05 0.00045  1.66368E+06 0.00027  1.87338E+06 0.00019  1.94221E+06 0.00015  1.45899E+06 0.00016  1.14328E+06 0.00018  1.62979E+06 0.00015  1.60451E+06 0.00013  1.75038E+06 0.00012  1.74172E+06 0.00011  1.89916E+06 0.00011  1.85550E+06 0.00010  1.86266E+06 0.00011  1.63542E+06 0.00011  1.64673E+06 0.00012  1.63845E+06 0.00010  1.62916E+06 0.00012  3.22774E+06 8.2E-05  3.17344E+06 1.0E-04  2.32510E+06 0.00011  1.51455E+06 0.00013  1.79441E+06 0.00011  1.71780E+06 0.00013  1.45893E+06 0.00014  2.57263E+06 0.00015  5.48601E+05 0.00025  6.87536E+05 0.00026  6.19039E+05 0.00026  3.64569E+05 0.00036  6.36198E+05 0.00027  4.38888E+05 0.00027  3.82839E+05 0.00033  7.51133E+04 0.00073  7.44343E+04 0.00063  7.68366E+04 0.00068  7.92714E+04 0.00073  7.86693E+04 0.00071  7.80613E+04 0.00067  8.07395E+04 0.00071  7.65356E+04 0.00063  1.45973E+05 0.00050  2.39079E+05 0.00041  3.18872E+05 0.00040  9.87650E+05 0.00032  1.47284E+06 0.00038  2.33256E+06 0.00047  1.93624E+06 0.00050  1.54724E+06 0.00049  1.23721E+06 0.00055  1.42548E+06 0.00056  2.54884E+06 0.00052  3.13388E+06 0.00058  5.21920E+06 0.00056  6.49846E+06 0.00059  7.59543E+06 0.00058  3.99389E+06 0.00059  2.54434E+06 0.00065  1.68594E+06 0.00060  1.43016E+06 0.00069  1.35526E+06 0.00063  1.04419E+06 0.00066  6.88969E+05 0.00077  5.85548E+05 0.00077  5.34377E+05 0.00081  4.41595E+05 0.00079  3.03851E+05 0.00087  1.98998E+05 0.00086  6.29035E+04 0.00155 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32764E+00 0.00023 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.53589E+21 0.00022  3.38070E+21 0.00061 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38936E-01 1.5E-05  3.87720E-01 4.2E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.27997E-04 0.00034  9.70165E-04 0.00039 ];
INF_ABS                   (idx, [1:   4]) = [  1.15411E-03 0.00030  2.78334E-03 0.00048 ];
INF_FISS                  (idx, [1:   4]) = [  3.26113E-04 0.00041  1.81318E-03 0.00060 ];
INF_NSF                   (idx, [1:   4]) = [  7.96166E-04 0.00041  4.41817E-03 0.00060 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44138E+00 4.1E-06  2.43670E+00 1.9E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02320E+02 3.4E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.14280E-07 9.9E-05  2.10980E-06 4.5E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37781E-01 1.6E-05  3.84936E-01 4.4E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13672E-02 0.00022  1.12843E-02 0.00040 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48194E-03 0.00140 -4.43722E-03 0.00085 ];
INF_SCATT3                (idx, [1:   4]) = [  4.66458E-04 0.00714 -4.06641E-03 0.00079 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.46316E-04 0.01660 -4.65385E-03 0.00062 ];
INF_SCATT5                (idx, [1:   4]) = [  1.09924E-04 0.02343 -2.72272E-03 0.00102 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.18184E-04 0.00673 -4.42812E-03 0.00055 ];
INF_SCATT7                (idx, [1:   4]) = [  1.20368E-04 0.01595 -6.27825E-04 0.00353 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37816E-01 1.6E-05  3.84936E-01 4.4E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13763E-02 0.00022  1.12843E-02 0.00040 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48363E-03 0.00140 -4.43722E-03 0.00085 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.66745E-04 0.00713 -4.06641E-03 0.00079 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.46275E-04 0.01658 -4.65385E-03 0.00062 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.09900E-04 0.02347 -2.72272E-03 0.00102 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.18178E-04 0.00673 -4.42812E-03 0.00055 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.20378E-04 0.01595 -6.27825E-04 0.00353 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00973E-01 3.3E-05  3.74997E-01 4.5E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10752E+00 3.3E-05  8.88895E-01 4.5E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.11964E-03 0.00032  2.78334E-03 0.00048 ];
INF_REMXS                 (idx, [1:   4]) = [  5.36592E-03 0.00015  4.36356E-03 0.00046 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33570E-01 1.4E-05  4.21151E-03 0.00024  1.57989E-03 0.00056  3.83356E-01 4.5E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23137E-02 0.00022 -9.46511E-04 0.00050 -1.67281E-04 0.00186  1.14515E-02 0.00040 ];
INF_S2                    (idx, [1:   8]) = [  2.64797E-03 0.00131 -1.66030E-04 0.00256 -1.03328E-04 0.00219 -4.33390E-03 0.00086 ];
INF_S3                    (idx, [1:   8]) = [  5.10024E-04 0.00643 -4.35657E-05 0.00829 -3.69689E-05 0.00495 -4.02944E-03 0.00080 ];
INF_S4                    (idx, [1:   8]) = [ -1.11831E-04 0.02131 -3.44855E-05 0.00736 -2.34946E-05 0.00655 -4.63035E-03 0.00063 ];
INF_S5                    (idx, [1:   8]) = [  1.12259E-04 0.02287 -2.33478E-06 0.10793 -5.81388E-06 0.02656 -2.71691E-03 0.00102 ];
INF_S6                    (idx, [1:   8]) = [ -2.94812E-04 0.00714 -2.33719E-05 0.01086 -1.62911E-05 0.00817 -4.41183E-03 0.00055 ];
INF_S7                    (idx, [1:   8]) = [  9.98049E-05 0.01962  2.05628E-05 0.01122  6.73747E-06 0.02123 -6.34562E-04 0.00351 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33604E-01 1.4E-05  4.21151E-03 0.00024  1.57989E-03 0.00056  3.83356E-01 4.5E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23228E-02 0.00022 -9.46511E-04 0.00050 -1.67281E-04 0.00186  1.14515E-02 0.00040 ];
INF_SP2                   (idx, [1:   8]) = [  2.64966E-03 0.00130 -1.66030E-04 0.00256 -1.03328E-04 0.00219 -4.33390E-03 0.00086 ];
INF_SP3                   (idx, [1:   8]) = [  5.10310E-04 0.00643 -4.35657E-05 0.00829 -3.69689E-05 0.00495 -4.02944E-03 0.00080 ];
INF_SP4                   (idx, [1:   8]) = [ -1.11790E-04 0.02128 -3.44855E-05 0.00736 -2.34946E-05 0.00655 -4.63035E-03 0.00063 ];
INF_SP5                   (idx, [1:   8]) = [  1.12235E-04 0.02292 -2.33478E-06 0.10793 -5.81388E-06 0.02656 -2.71691E-03 0.00102 ];
INF_SP6                   (idx, [1:   8]) = [ -2.94806E-04 0.00714 -2.33719E-05 0.01086 -1.62911E-05 0.00817 -4.41183E-03 0.00055 ];
INF_SP7                   (idx, [1:   8]) = [  9.98156E-05 0.01963  2.05628E-05 0.01122  6.73747E-06 0.02123 -6.34562E-04 0.00351 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98792E-01 0.00021  4.26489E-01 0.00066 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99201E-01 0.00034  4.21686E-01 0.00093 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99328E-01 0.00035  4.22300E-01 0.00090 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97858E-01 0.00036  4.35831E-01 0.00095 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11561E+00 0.00021  7.81609E-01 0.00066 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11409E+00 0.00034  7.90546E-01 0.00093 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11362E+00 0.00035  7.89392E-01 0.00090 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11912E+00 0.00036  7.64891E-01 0.00095 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.58265E-03 0.00379  2.03856E-04 0.02108  1.09806E-03 0.00916  1.05606E-03 0.00938  3.02973E-03 0.00554  8.83612E-04 0.01047  3.11336E-04 0.01756 ];
LAMBDA                    (idx, [1:  14]) = [  7.59873E-01 0.00922  1.24906E-02 2.6E-07  3.18196E-02 2.5E-05  1.09404E-01 3.9E-05  3.17106E-01 3.0E-05  1.35368E+00 2.5E-05  8.64406E+00 0.00019 ];

