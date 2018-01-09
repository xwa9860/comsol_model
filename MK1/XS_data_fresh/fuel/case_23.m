
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input22' ;
HOSTNAME                  (idx, [1: 12])  = 'n0049.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00460E+00  1.00283E+00  1.00046E+00  9.98668E-01  9.98798E-01  9.99802E-01  1.00028E+00  9.97910E-01  9.97535E-01  9.97075E-01  9.94038E-01  1.00110E+00  9.98820E-01  1.00261E+00  1.00285E+00  9.99658E-01  1.00085E+00  1.00242E+00  1.00237E+00  9.97342E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.70862E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.22914E-01 2.7E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81022E-01 4.8E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85299E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.71784E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84066E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84052E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.61083E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.97363E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001912 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.90629E+02 ;
RUNNING_TIME              (idx, 1)        =  2.98791E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.23817E-01  1.23817E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.03333E-03  1.03333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.97543E+01  2.97543E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.98787E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76728 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98410E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86804E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4798.54;
MEMSIZE                   (idx, 1)        = 832.06;
XS_MEMSIZE                (idx, 1)        = 499.62;
MAT_MEMSIZE               (idx, 1)        = 195.54;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.48;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 164900 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.33873E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.30247E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.27180E+18 0.00020  9.98369E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.18805E+16 0.00760  1.63088E-03 0.00759 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70174E+18 0.00062  2.82361E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.06610E+18 0.00063  3.42783E-01 0.00046 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001912 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80030E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001912 2.01800E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8924901 9.00401E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10785362 1.08820E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 291649 2.93985E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001912 2.01800E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -1.63913E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.02876E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.33108E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.33873E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.85219E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.96804E+17 0.00217 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35076E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.48551E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.32606E+00 0.00022  1.31754E+00 0.00021  8.67102E-03 0.00379 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.32593E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.32597E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.32593E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.34571E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81578E+01 4.3E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81573E+01 2.3E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.60285E-07 0.00078 ];
IMP_EALF                  (idx, [1:   2]) = [  2.60299E-07 0.00042 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.47754E-03 0.00572 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.46589E-03 0.00153 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  4.98322E-03 0.00280  1.58730E-04 0.01570  8.31500E-04 0.00688  7.91722E-04 0.00716  2.29488E-03 0.00409  6.67765E-04 0.00752  2.38629E-04 0.01277 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.64664E-01 0.00669  1.08793E-02 0.00861  3.18188E-02 2.0E-05  1.09397E-01 2.5E-05  3.17093E-01 2.1E-05  1.35300E+00 0.00050  8.25661E+00 0.00486 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.55717E-03 0.00379  2.06592E-04 0.02115  1.09932E-03 0.00937  1.04464E-03 0.00942  3.01055E-03 0.00544  8.82601E-04 0.01033  3.13464E-04 0.01698 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.62959E-01 0.00878  1.24906E-02 2.4E-07  3.18186E-02 2.6E-05  1.09395E-01 3.1E-05  3.17097E-01 2.9E-05  1.35364E+00 3.1E-05  8.64605E+00 0.00022 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.65480E-04 0.00064  3.65585E-04 0.00064  3.49725E-04 0.00747 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.84600E-04 0.00060  4.84740E-04 0.00060  4.63725E-04 0.00747 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.54083E-03 0.00386  2.08152E-04 0.02146  1.08819E-03 0.00951  1.03685E-03 0.00968  3.01704E-03 0.00563  8.77516E-04 0.01073  3.13085E-04 0.01744 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.65265E-01 0.00915  1.24906E-02 3.2E-07  3.18181E-02 3.1E-05  1.09394E-01 3.3E-05  3.17089E-01 2.9E-05  1.35366E+00 3.1E-05  8.64592E+00 0.00025 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.50302E-04 0.00148  3.50398E-04 0.00148  3.30881E-04 0.01824 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.64471E-04 0.00146  4.64598E-04 0.00146  4.38795E-04 0.01824 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.57696E-03 0.01133  2.08863E-04 0.06277  1.09403E-03 0.02782  1.05082E-03 0.02824  3.07806E-03 0.01638  8.26600E-04 0.03103  3.18589E-04 0.05134 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.58785E-01 0.02756  1.24906E-02 7.5E-07  3.18140E-02 9.6E-05  1.09398E-01 8.0E-05  3.17075E-01 8.0E-05  1.35376E+00 5.3E-05  8.64431E+00 0.00049 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.60395E-03 0.01093  2.14180E-04 0.06179  1.09748E-03 0.02663  1.04873E-03 0.02747  3.09064E-03 0.01581  8.33340E-04 0.02996  3.19575E-04 0.04984 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.53171E-01 0.02631  1.24906E-02 7.5E-07  3.18139E-02 9.7E-05  1.09398E-01 7.9E-05  3.17070E-01 7.5E-05  1.35376E+00 5.3E-05  8.64459E+00 0.00049 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.88394E+01 0.01141 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.58098E-04 0.00036 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.74812E-04 0.00028 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.57276E-03 0.00218 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.83603E+01 0.00222 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.09176E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.57985E-05 8.3E-05  3.57976E-05 8.3E-05  3.59319E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.42357E-04 0.00041  7.42559E-04 0.00041  7.10912E-04 0.00486 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.15231E-01 0.00015  7.14227E-01 0.00015  9.30793E-01 0.00438 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08345E+01 0.00649 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84052E+02 0.00024  1.75970E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.95288E+04 0.00167  3.79536E+05 0.00078  8.97119E+05 0.00041  1.66382E+06 0.00031  1.87306E+06 0.00020  1.94117E+06 0.00015  1.45875E+06 0.00014  1.14277E+06 0.00019  1.62971E+06 0.00014  1.60436E+06 0.00011  1.75053E+06 0.00011  1.74182E+06 0.00010  1.89924E+06 0.00010  1.85579E+06 0.00011  1.86305E+06 0.00011  1.63605E+06 0.00011  1.64673E+06 0.00013  1.63840E+06 0.00012  1.62936E+06 0.00011  3.22889E+06 7.9E-05  3.17475E+06 0.00010  2.32742E+06 0.00011  1.51734E+06 0.00014  1.80155E+06 0.00012  1.72887E+06 0.00014  1.46931E+06 0.00017  2.60115E+06 0.00016  5.55996E+05 0.00025  6.97307E+05 0.00025  6.27223E+05 0.00028  3.68983E+05 0.00033  6.44420E+05 0.00026  4.44237E+05 0.00032  3.87891E+05 0.00033  7.58952E+04 0.00079  7.53814E+04 0.00065  7.76019E+04 0.00065  8.02046E+04 0.00068  7.95904E+04 0.00074  7.89643E+04 0.00070  8.16409E+04 0.00070  7.74556E+04 0.00073  1.47713E+05 0.00051  2.41663E+05 0.00042  3.22355E+05 0.00041  9.96924E+05 0.00029  1.48446E+06 0.00036  2.34740E+06 0.00041  1.94765E+06 0.00046  1.55637E+06 0.00046  1.24411E+06 0.00048  1.43315E+06 0.00050  2.56303E+06 0.00048  3.15169E+06 0.00047  5.25031E+06 0.00048  6.54011E+06 0.00050  7.64670E+06 0.00050  4.01932E+06 0.00054  2.56043E+06 0.00056  1.69677E+06 0.00058  1.43904E+06 0.00056  1.36387E+06 0.00056  1.05043E+06 0.00061  6.93285E+05 0.00063  5.89748E+05 0.00068  5.37658E+05 0.00071  4.43948E+05 0.00068  3.05730E+05 0.00077  2.00030E+05 0.00099  6.31984E+04 0.00120 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.34575E+00 0.00020 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.49685E+21 0.00018  3.35542E+21 0.00054 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38860E-01 1.5E-05  3.87609E-01 4.4E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.90316E-04 0.00038  9.73098E-04 0.00042 ];
INF_ABS                   (idx, [1:   4]) = [  1.11808E-03 0.00032  2.80199E-03 0.00046 ];
INF_FISS                  (idx, [1:   4]) = [  3.27764E-04 0.00038  1.82889E-03 0.00054 ];
INF_NSF                   (idx, [1:   4]) = [  8.00185E-04 0.00038  4.45646E-03 0.00054 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44134E+00 4.8E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.6E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.15074E-07 9.4E-05  2.10980E-06 4.0E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37742E-01 1.5E-05  3.84807E-01 4.7E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13571E-02 0.00020  1.12946E-02 0.00035 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48629E-03 0.00158 -4.44014E-03 0.00090 ];
INF_SCATT3                (idx, [1:   4]) = [  4.70236E-04 0.00634 -4.06514E-03 0.00073 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.48418E-04 0.01777 -4.65238E-03 0.00067 ];
INF_SCATT5                (idx, [1:   4]) = [  1.17478E-04 0.01950 -2.72377E-03 0.00099 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.23956E-04 0.00725 -4.42268E-03 0.00055 ];
INF_SCATT7                (idx, [1:   4]) = [  1.24951E-04 0.01664 -6.24415E-04 0.00295 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37777E-01 1.5E-05  3.84807E-01 4.7E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13662E-02 0.00020  1.12946E-02 0.00035 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48801E-03 0.00158 -4.44014E-03 0.00090 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.70495E-04 0.00634 -4.06514E-03 0.00073 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.48339E-04 0.01777 -4.65238E-03 0.00067 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.17500E-04 0.01949 -2.72377E-03 0.00099 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.23934E-04 0.00726 -4.42268E-03 0.00055 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.24954E-04 0.01663 -6.24415E-04 0.00295 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00952E-01 2.9E-05  3.74879E-01 4.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10760E+00 2.9E-05  8.89177E-01 4.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.08362E-03 0.00033  2.80199E-03 0.00046 ];
INF_REMXS                 (idx, [1:   4]) = [  5.35885E-03 0.00014  4.37888E-03 0.00038 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33502E-01 1.5E-05  4.24070E-03 0.00021  1.57708E-03 0.00041  3.83230E-01 4.7E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23121E-02 0.00019 -9.54989E-04 0.00057 -1.65853E-04 0.00183  1.14604E-02 0.00035 ];
INF_S2                    (idx, [1:   8]) = [  2.65308E-03 0.00149 -1.66792E-04 0.00235 -1.03257E-04 0.00196 -4.33688E-03 0.00093 ];
INF_S3                    (idx, [1:   8]) = [  5.12597E-04 0.00565 -4.23608E-05 0.00783 -3.73973E-05 0.00509 -4.02775E-03 0.00073 ];
INF_S4                    (idx, [1:   8]) = [ -1.13610E-04 0.02325 -3.48075E-05 0.00845 -2.33205E-05 0.00751 -4.62906E-03 0.00068 ];
INF_S5                    (idx, [1:   8]) = [  1.20532E-04 0.01886 -3.05432E-06 0.07960 -5.78996E-06 0.02531 -2.71798E-03 0.00099 ];
INF_S6                    (idx, [1:   8]) = [ -3.00456E-04 0.00774 -2.35003E-05 0.00980 -1.62225E-05 0.00856 -4.40646E-03 0.00055 ];
INF_S7                    (idx, [1:   8]) = [  1.03849E-04 0.01983  2.11022E-05 0.01067  6.47957E-06 0.01919 -6.30895E-04 0.00295 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33536E-01 1.5E-05  4.24070E-03 0.00021  1.57708E-03 0.00041  3.83230E-01 4.7E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23212E-02 0.00019 -9.54989E-04 0.00057 -1.65853E-04 0.00183  1.14604E-02 0.00035 ];
INF_SP2                   (idx, [1:   8]) = [  2.65480E-03 0.00149 -1.66792E-04 0.00235 -1.03257E-04 0.00196 -4.33688E-03 0.00093 ];
INF_SP3                   (idx, [1:   8]) = [  5.12856E-04 0.00565 -4.23608E-05 0.00783 -3.73973E-05 0.00509 -4.02775E-03 0.00073 ];
INF_SP4                   (idx, [1:   8]) = [ -1.13531E-04 0.02326 -3.48075E-05 0.00845 -2.33205E-05 0.00751 -4.62906E-03 0.00068 ];
INF_SP5                   (idx, [1:   8]) = [  1.20554E-04 0.01885 -3.05432E-06 0.07960 -5.78996E-06 0.02531 -2.71798E-03 0.00099 ];
INF_SP6                   (idx, [1:   8]) = [ -3.00434E-04 0.00774 -2.35003E-05 0.00980 -1.62225E-05 0.00856 -4.40646E-03 0.00055 ];
INF_SP7                   (idx, [1:   8]) = [  1.03852E-04 0.01982  2.11022E-05 0.01067  6.47957E-06 0.01919 -6.30895E-04 0.00295 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98867E-01 0.00023  4.26188E-01 0.00075 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99315E-01 0.00037  4.21375E-01 0.00105 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99473E-01 0.00036  4.21719E-01 0.00101 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97825E-01 0.00037  4.35850E-01 0.00102 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11533E+00 0.00023  7.82171E-01 0.00075 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11367E+00 0.00037  7.91147E-01 0.00105 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11308E+00 0.00036  7.90496E-01 0.00101 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11924E+00 0.00037  7.64869E-01 0.00102 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.55717E-03 0.00379  2.06592E-04 0.02115  1.09932E-03 0.00937  1.04464E-03 0.00942  3.01055E-03 0.00544  8.82601E-04 0.01033  3.13464E-04 0.01698 ];
LAMBDA                    (idx, [1:  14]) = [  7.62959E-01 0.00878  1.24906E-02 2.4E-07  3.18186E-02 2.6E-05  1.09395E-01 3.1E-05  3.17097E-01 2.9E-05  1.35364E+00 3.1E-05  8.64605E+00 0.00022 ];

