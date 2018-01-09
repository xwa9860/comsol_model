
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input34' ;
HOSTNAME                  (idx, [1: 12])  = 'n0062.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:55 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00171E+00  9.96682E-01  9.93422E-01  9.99680E-01  9.97716E-01  1.00020E+00  1.00501E+00  9.97621E-01  9.94806E-01  9.98324E-01  1.00386E+00  1.00062E+00  1.00405E+00  1.00009E+00  1.00530E+00  9.99085E-01  1.00121E+00  1.00259E+00  9.97489E-01  1.00054E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 8.1E-10  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.55608E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.24439E-01 2.7E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81189E-01 4.8E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85410E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.74409E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.83790E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.83776E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.60140E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.85507E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001892 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.86336E+02 ;
RUNNING_TIME              (idx, 1)        =  2.96618E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.32233E-01  1.32233E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.41667E-03  1.41667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.95281E+01  2.95281E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.96614E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76737 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98481E+01 0.00014 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86565E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4803.55;
MEMSIZE                   (idx, 1)        = 836.26;
XS_MEMSIZE                (idx, 1)        = 502.35;
MAT_MEMSIZE               (idx, 1)        = 197.02;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3967.29;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 166149 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34553E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.36845E-01 0.00064 ];
U235_FISS                 (idx, [1:   4]) = [  7.26842E+18 0.00021  9.98348E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20302E+16 0.00747  1.65213E-03 0.00746 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70534E+18 0.00061  2.79659E-01 0.00053 ];
U238_CAPT                 (idx, [1:   4]) = [  2.12534E+18 0.00063  3.48503E-01 0.00047 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001892 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80024E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001892 2.01800E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8984349 9.06416E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10726191 1.08222E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 291352 2.93651E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001892 2.01800E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.64496E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.09829E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.33803E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34553E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.87670E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.97580E+17 0.00222 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35779E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.49439E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31895E+00 0.00022  1.31026E+00 0.00022  8.65876E-03 0.00381 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31905E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31927E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31905E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33870E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81530E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81526E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.61557E-07 0.00081 ];
IMP_EALF                  (idx, [1:   2]) = [  2.61551E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.53734E-03 0.00569 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.48378E-03 0.00152 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.02814E-03 0.00284  1.60443E-04 0.01594  8.33976E-04 0.00685  8.10933E-04 0.00717  2.31269E-03 0.00409  6.70005E-04 0.00776  2.40095E-04 0.01299 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.62850E-01 0.00675  1.08793E-02 0.00861  3.18194E-02 1.8E-05  1.09398E-01 2.5E-05  3.17104E-01 2.2E-05  1.35304E+00 0.00050  8.17642E+00 0.00535 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.56586E-03 0.00381  2.14740E-04 0.02119  1.09228E-03 0.00902  1.04883E-03 0.00972  3.01652E-03 0.00543  8.80504E-04 0.01029  3.13001E-04 0.01743 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.61751E-01 0.00900  1.24906E-02 1.8E-08  3.18185E-02 3.1E-05  1.09398E-01 3.2E-05  3.17108E-01 3.1E-05  1.35371E+00 2.6E-05  8.64373E+00 0.00022 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.68241E-04 0.00064  3.68344E-04 0.00065  3.53204E-04 0.00739 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.85639E-04 0.00060  4.85775E-04 0.00060  4.65785E-04 0.00738 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.55912E-03 0.00385  2.15237E-04 0.02116  1.09958E-03 0.00927  1.04972E-03 0.00971  3.00983E-03 0.00552  8.75182E-04 0.01073  3.09584E-04 0.01798 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.57513E-01 0.00944  1.24906E-02 3.0E-08  3.18188E-02 3.0E-05  1.09398E-01 3.5E-05  3.17095E-01 3.0E-05  1.35370E+00 2.8E-05  8.64428E+00 0.00026 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.53299E-04 0.00139  3.53342E-04 0.00140  3.41998E-04 0.01714 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.65948E-04 0.00138  4.66004E-04 0.00139  4.51064E-04 0.01711 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.61937E-03 0.01141  2.16233E-04 0.06467  1.09226E-03 0.02758  1.02111E-03 0.02873  3.09304E-03 0.01663  8.90996E-04 0.03078  3.05736E-04 0.05148 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.47957E-01 0.02619  1.24906E-02 7.4E-09  3.18201E-02 5.8E-05  1.09399E-01 8.7E-05  3.17132E-01 0.00011  1.35358E+00 7.6E-05  8.63882E+00 0.00028 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.61545E-03 0.01103  2.16818E-04 0.06298  1.09102E-03 0.02694  1.02134E-03 0.02768  3.08570E-03 0.01613  8.93357E-04 0.02997  3.07220E-04 0.05036 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.50676E-01 0.02596  1.24906E-02 7.4E-09  3.18201E-02 5.7E-05  1.09401E-01 8.8E-05  3.17131E-01 0.00011  1.35359E+00 7.5E-05  8.63897E+00 0.00028 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.88181E+01 0.01154 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.61290E-04 0.00036 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.76477E-04 0.00028 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.57409E-03 0.00206 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.82016E+01 0.00210 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.09065E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.57984E-05 8.4E-05  3.57979E-05 8.4E-05  3.58709E-05 0.00105 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.43892E-04 0.00040  7.44096E-04 0.00041  7.12547E-04 0.00483 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.12000E-01 0.00015  7.10996E-01 0.00015  9.26718E-01 0.00455 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08238E+01 0.00664 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.83776E+02 0.00024  1.76124E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.93779E+04 0.00168  3.79191E+05 0.00067  8.96489E+05 0.00038  1.66423E+06 0.00025  1.87372E+06 0.00020  1.94218E+06 0.00015  1.45893E+06 0.00017  1.14272E+06 0.00016  1.62984E+06 0.00015  1.60460E+06 0.00012  1.75073E+06 0.00010  1.74169E+06 0.00010  1.89955E+06 0.00010  1.85604E+06 0.00011  1.86313E+06 9.2E-05  1.63574E+06 0.00012  1.64708E+06 0.00012  1.63866E+06 0.00011  1.62961E+06 0.00012  3.22860E+06 9.5E-05  3.17439E+06 8.8E-05  2.32655E+06 9.6E-05  1.51625E+06 0.00013  1.79916E+06 0.00014  1.72587E+06 0.00014  1.46642E+06 0.00017  2.59173E+06 0.00016  5.52776E+05 0.00025  6.93091E+05 0.00021  6.24607E+05 0.00029  3.67240E+05 0.00034  6.41652E+05 0.00031  4.42557E+05 0.00036  3.86296E+05 0.00038  7.57525E+04 0.00064  7.49735E+04 0.00081  7.72792E+04 0.00072  7.98476E+04 0.00071  7.93207E+04 0.00066  7.86334E+04 0.00065  8.13123E+04 0.00073  7.72411E+04 0.00071  1.47148E+05 0.00058  2.40719E+05 0.00047  3.21320E+05 0.00041  9.94496E+05 0.00033  1.48261E+06 0.00036  2.34528E+06 0.00042  1.94539E+06 0.00047  1.55456E+06 0.00047  1.24308E+06 0.00052  1.43150E+06 0.00052  2.55947E+06 0.00051  3.14651E+06 0.00053  5.23950E+06 0.00053  6.52430E+06 0.00052  7.62652E+06 0.00053  4.00758E+06 0.00055  2.55316E+06 0.00058  1.69133E+06 0.00058  1.43473E+06 0.00062  1.35934E+06 0.00059  1.04760E+06 0.00063  6.91498E+05 0.00076  5.87707E+05 0.00068  5.35785E+05 0.00071  4.43075E+05 0.00079  3.04487E+05 0.00079  1.99427E+05 0.00087  6.30698E+04 0.00121 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33892E+00 0.00024 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.51175E+21 0.00022  3.36501E+21 0.00059 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38878E-01 1.4E-05  3.87622E-01 3.7E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.04752E-04 0.00042  9.72426E-04 0.00040 ];
INF_ABS                   (idx, [1:   4]) = [  1.13184E-03 0.00035  2.79537E-03 0.00049 ];
INF_FISS                  (idx, [1:   4]) = [  3.27090E-04 0.00043  1.82295E-03 0.00060 ];
INF_NSF                   (idx, [1:   4]) = [  7.98538E-04 0.00043  4.44197E-03 0.00060 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44134E+00 5.2E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 4.0E-07  2.02270E+02 3.0E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.14808E-07 0.00011  2.10925E-06 4.2E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37747E-01 1.5E-05  3.84827E-01 3.9E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13646E-02 0.00020  1.12869E-02 0.00043 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48403E-03 0.00151 -4.43151E-03 0.00077 ];
INF_SCATT3                (idx, [1:   4]) = [  4.68969E-04 0.00627 -4.06111E-03 0.00080 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.49274E-04 0.01658 -4.64857E-03 0.00060 ];
INF_SCATT5                (idx, [1:   4]) = [  1.12433E-04 0.02273 -2.72224E-03 0.00109 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.23524E-04 0.00667 -4.42562E-03 0.00054 ];
INF_SCATT7                (idx, [1:   4]) = [  1.25115E-04 0.01794 -6.27286E-04 0.00359 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37781E-01 1.5E-05  3.84827E-01 3.9E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13737E-02 0.00020  1.12869E-02 0.00043 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48573E-03 0.00151 -4.43151E-03 0.00077 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.69244E-04 0.00626 -4.06111E-03 0.00080 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.49259E-04 0.01661 -4.64857E-03 0.00060 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.12413E-04 0.02273 -2.72224E-03 0.00109 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.23510E-04 0.00667 -4.42562E-03 0.00054 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.25108E-04 0.01793 -6.27286E-04 0.00359 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00953E-01 3.2E-05  3.74898E-01 4.1E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10759E+00 3.2E-05  8.89132E-01 4.1E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.09735E-03 0.00036  2.79537E-03 0.00049 ];
INF_REMXS                 (idx, [1:   4]) = [  5.36466E-03 0.00014  4.37697E-03 0.00037 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33514E-01 1.4E-05  4.23305E-03 0.00024  1.58198E-03 0.00043  3.83245E-01 4.0E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23162E-02 0.00019 -9.51577E-04 0.00051 -1.67113E-04 0.00179  1.14540E-02 0.00042 ];
INF_S2                    (idx, [1:   8]) = [  2.65071E-03 0.00143 -1.66686E-04 0.00215 -1.03254E-04 0.00227 -4.32826E-03 0.00078 ];
INF_S3                    (idx, [1:   8]) = [  5.11763E-04 0.00567 -4.27938E-05 0.00780 -3.72384E-05 0.00555 -4.02387E-03 0.00081 ];
INF_S4                    (idx, [1:   8]) = [ -1.13474E-04 0.02169 -3.58000E-05 0.00745 -2.36268E-05 0.00699 -4.62494E-03 0.00060 ];
INF_S5                    (idx, [1:   8]) = [  1.14962E-04 0.02186 -2.52825E-06 0.10885 -5.66732E-06 0.02939 -2.71657E-03 0.00109 ];
INF_S6                    (idx, [1:   8]) = [ -3.00308E-04 0.00701 -2.32151E-05 0.00986 -1.57742E-05 0.00968 -4.40985E-03 0.00054 ];
INF_S7                    (idx, [1:   8]) = [  1.04365E-04 0.02143  2.07506E-05 0.01122  6.55800E-06 0.02121 -6.33844E-04 0.00352 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33548E-01 1.4E-05  4.23305E-03 0.00024  1.58198E-03 0.00043  3.83245E-01 4.0E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23253E-02 0.00019 -9.51577E-04 0.00051 -1.67113E-04 0.00179  1.14540E-02 0.00042 ];
INF_SP2                   (idx, [1:   8]) = [  2.65241E-03 0.00143 -1.66686E-04 0.00215 -1.03254E-04 0.00227 -4.32826E-03 0.00078 ];
INF_SP3                   (idx, [1:   8]) = [  5.12038E-04 0.00566 -4.27938E-05 0.00780 -3.72384E-05 0.00555 -4.02387E-03 0.00081 ];
INF_SP4                   (idx, [1:   8]) = [ -1.13459E-04 0.02173 -3.58000E-05 0.00745 -2.36268E-05 0.00699 -4.62494E-03 0.00060 ];
INF_SP5                   (idx, [1:   8]) = [  1.14941E-04 0.02186 -2.52825E-06 0.10885 -5.66732E-06 0.02939 -2.71657E-03 0.00109 ];
INF_SP6                   (idx, [1:   8]) = [ -3.00295E-04 0.00701 -2.32151E-05 0.00986 -1.57742E-05 0.00968 -4.40985E-03 0.00054 ];
INF_SP7                   (idx, [1:   8]) = [  1.04357E-04 0.02142  2.07506E-05 0.01122  6.55800E-06 0.02121 -6.33844E-04 0.00352 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98717E-01 0.00021  4.25819E-01 0.00066 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99196E-01 0.00033  4.21643E-01 0.00104 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99192E-01 0.00037  4.20947E-01 0.00089 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97776E-01 0.00035  4.35233E-01 0.00100 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11589E+00 0.00021  7.82839E-01 0.00066 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11411E+00 0.00033  7.90643E-01 0.00104 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11413E+00 0.00037  7.91926E-01 0.00089 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11942E+00 0.00035  7.65949E-01 0.00100 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.56586E-03 0.00381  2.14740E-04 0.02119  1.09228E-03 0.00902  1.04883E-03 0.00972  3.01652E-03 0.00543  8.80504E-04 0.01029  3.13001E-04 0.01743 ];
LAMBDA                    (idx, [1:  14]) = [  7.61751E-01 0.00900  1.24906E-02 1.8E-08  3.18185E-02 3.1E-05  1.09398E-01 3.2E-05  3.17108E-01 3.1E-05  1.35371E+00 2.6E-05  8.64373E+00 0.00022 ];

