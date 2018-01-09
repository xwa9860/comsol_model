
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input45' ;
HOSTNAME                  (idx, [1: 12])  = 'n0121.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1060.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:56 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00791E+00  9.97383E-01  1.00057E+00  9.93839E-01  9.99005E-01  1.00060E+00  1.00122E+00  1.00320E+00  1.00282E+00  9.97756E-01  1.00242E+00  9.96380E-01  9.96914E-01  1.00003E+00  9.98508E-01  1.00280E+00  9.95831E-01  1.00177E+00  1.00351E+00  9.97526E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.73202E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.22680E-01 2.8E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81071E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85363E-01 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.76252E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84360E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84346E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.61673E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.99649E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002046 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.86500E+02 ;
RUNNING_TIME              (idx, 1)        =  2.96801E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.25583E-01  1.25583E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.33333E-03  1.33333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.95532E+01  2.95532E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.96795E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76071 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98350E+01 0.00017 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86524E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.80 ;
ALLOC_MEMSIZE             (idx, 1)        = 4798.06;
MEMSIZE                   (idx, 1)        = 831.53;
XS_MEMSIZE                (idx, 1)        = 499.25;
MAT_MEMSIZE               (idx, 1)        = 195.38;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.53;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 164768 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34894E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.38382E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.27069E+18 0.00020  9.98351E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20151E+16 0.00748  1.64940E-03 0.00746 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70935E+18 0.00062  2.78876E-01 0.00055 ];
U238_CAPT                 (idx, [1:   4]) = [  2.14063E+18 0.00063  3.49207E-01 0.00047 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002046 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80783E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002046 2.01808E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9007201 9.08798E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10702549 1.07982E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 292296 2.94633E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002046 2.01808E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.19792E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.3E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.12873E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34108E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34894E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.91551E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.98746E+17 0.00216 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36095E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.50865E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.4E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.3E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31591E+00 0.00022  1.30729E+00 0.00021  8.69696E-03 0.00379 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31600E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31593E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31600E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33568E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81264E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81270E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.68604E-07 0.00080 ];
IMP_EALF                  (idx, [1:   2]) = [  2.68325E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.48766E-03 0.00574 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.49924E-03 0.00150 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.06178E-03 0.00285  1.62973E-04 0.01543  8.44370E-04 0.00689  8.26295E-04 0.00701  2.31912E-03 0.00413  6.68478E-04 0.00782  2.40546E-04 0.01273 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.57870E-01 0.00668  1.10479E-02 0.00808  3.18187E-02 2.0E-05  1.09400E-01 2.8E-05  3.17103E-01 2.2E-05  1.35370E+00 1.9E-05  8.27980E+00 0.00468 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.60775E-03 0.00370  2.11018E-04 0.02044  1.09890E-03 0.00944  1.07092E-03 0.00940  3.03617E-03 0.00551  8.71769E-04 0.01035  3.18968E-04 0.01723 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.65947E-01 0.00907  1.24906E-02 2.7E-07  3.18184E-02 2.8E-05  1.09401E-01 3.6E-05  3.17109E-01 3.1E-05  1.35369E+00 2.7E-05  8.64418E+00 0.00019 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.69994E-04 0.00065  3.70087E-04 0.00065  3.56395E-04 0.00758 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.86828E-04 0.00061  4.86950E-04 0.00061  4.68971E-04 0.00758 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.61165E-03 0.00386  2.13520E-04 0.02073  1.10923E-03 0.00948  1.07590E-03 0.00959  3.03719E-03 0.00562  8.65160E-04 0.01061  3.10647E-04 0.01748 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.52656E-01 0.00915  1.24906E-02 2.7E-07  3.18182E-02 2.9E-05  1.09401E-01 4.7E-05  3.17102E-01 3.1E-05  1.35367E+00 3.3E-05  8.64505E+00 0.00024 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.55309E-04 0.00150  3.55495E-04 0.00151  3.32015E-04 0.01770 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.67507E-04 0.00148  4.67751E-04 0.00149  4.36822E-04 0.01769 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.68309E-03 0.01132  2.37842E-04 0.05912  1.15560E-03 0.02703  1.06453E-03 0.02823  3.03168E-03 0.01687  8.90100E-04 0.03118  3.03339E-04 0.05425 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.51423E-01 0.02845  1.24906E-02 6.9E-07  3.18217E-02 4.5E-05  1.09403E-01 9.9E-05  3.17155E-01 0.00012  1.35362E+00 7.2E-05  8.64888E+00 0.00064 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.69048E-03 0.01091  2.42293E-04 0.05720  1.14475E-03 0.02672  1.06796E-03 0.02747  3.03022E-03 0.01625  8.94682E-04 0.03045  3.10580E-04 0.05268 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.57488E-01 0.02751  1.24906E-02 6.8E-07  3.18217E-02 4.6E-05  1.09406E-01 0.00010  3.17143E-01 0.00011  1.35362E+00 7.1E-05  8.64886E+00 0.00064 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.88633E+01 0.01138 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.62897E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.77488E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.60749E-03 0.00221 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.82115E+01 0.00223 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08988E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58350E-05 8.7E-05  3.58342E-05 8.7E-05  3.59632E-05 0.00108 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.46701E-04 0.00040  7.46870E-04 0.00041  7.21399E-04 0.00507 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.11060E-01 0.00015  7.10067E-01 0.00015  9.21310E-01 0.00442 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08890E+01 0.00670 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84346E+02 0.00023  1.76884E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.92255E+04 0.00149  3.79554E+05 0.00085  8.97259E+05 0.00041  1.66377E+06 0.00027  1.87353E+06 0.00019  1.94213E+06 0.00014  1.45869E+06 0.00014  1.14291E+06 0.00018  1.62943E+06 0.00015  1.60407E+06 0.00011  1.75058E+06 0.00011  1.74177E+06 8.9E-05  1.89931E+06 0.00011  1.85576E+06 0.00011  1.86277E+06 0.00011  1.63570E+06 0.00011  1.64700E+06 0.00011  1.63844E+06 0.00011  1.62944E+06 0.00013  3.22889E+06 8.9E-05  3.17396E+06 9.3E-05  2.32670E+06 0.00012  1.51608E+06 0.00013  1.79949E+06 0.00014  1.72554E+06 0.00016  1.46588E+06 0.00015  2.59087E+06 0.00016  5.52722E+05 0.00026  6.93102E+05 0.00026  6.24993E+05 0.00028  3.67773E+05 0.00032  6.42661E+05 0.00032  4.43284E+05 0.00036  3.87613E+05 0.00036  7.60569E+04 0.00066  7.53304E+04 0.00067  7.76838E+04 0.00066  8.02446E+04 0.00067  7.96927E+04 0.00063  7.92036E+04 0.00068  8.19136E+04 0.00073  7.77416E+04 0.00066  1.48349E+05 0.00050  2.43020E+05 0.00047  3.25424E+05 0.00045  1.01295E+06 0.00034  1.51943E+06 0.00039  2.40408E+06 0.00044  1.98783E+06 0.00048  1.58448E+06 0.00053  1.26477E+06 0.00052  1.45422E+06 0.00052  2.59477E+06 0.00054  3.18175E+06 0.00056  5.27969E+06 0.00057  6.54933E+06 0.00056  7.62598E+06 0.00057  3.99941E+06 0.00060  2.54395E+06 0.00060  1.68387E+06 0.00063  1.42809E+06 0.00064  1.35316E+06 0.00061  1.04104E+06 0.00065  6.86965E+05 0.00072  5.83907E+05 0.00068  5.33089E+05 0.00079  4.40903E+05 0.00082  3.02083E+05 0.00086  1.98766E+05 0.00113  6.27158E+04 0.00136 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33560E+00 0.00021 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.52266E+21 0.00020  3.39289E+21 0.00059 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38890E-01 1.7E-05  3.87537E-01 4.2E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.07413E-04 0.00041  9.68052E-04 0.00041 ];
INF_ABS                   (idx, [1:   4]) = [  1.13533E-03 0.00037  2.77411E-03 0.00047 ];
INF_FISS                  (idx, [1:   4]) = [  3.27913E-04 0.00043  1.80606E-03 0.00057 ];
INF_NSF                   (idx, [1:   4]) = [  8.00541E-04 0.00043  4.40083E-03 0.00057 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44132E+00 4.2E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.5E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.15249E-07 0.00011  2.10197E-06 4.2E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37754E-01 1.8E-05  3.84763E-01 4.4E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13544E-02 0.00023  1.13285E-02 0.00038 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48269E-03 0.00140 -4.40592E-03 0.00077 ];
INF_SCATT3                (idx, [1:   4]) = [  4.75590E-04 0.00587 -4.04300E-03 0.00081 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.51346E-04 0.01884 -4.65896E-03 0.00064 ];
INF_SCATT5                (idx, [1:   4]) = [  1.18086E-04 0.01940 -2.71495E-03 0.00108 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.27694E-04 0.00638 -4.44097E-03 0.00053 ];
INF_SCATT7                (idx, [1:   4]) = [  1.30179E-04 0.01596 -6.16902E-04 0.00362 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37788E-01 1.8E-05  3.84763E-01 4.4E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13635E-02 0.00023  1.13285E-02 0.00038 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48433E-03 0.00140 -4.40592E-03 0.00077 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.75796E-04 0.00586 -4.04300E-03 0.00081 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.51358E-04 0.01885 -4.65896E-03 0.00064 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.18076E-04 0.01942 -2.71495E-03 0.00108 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.27702E-04 0.00638 -4.44097E-03 0.00053 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.30146E-04 0.01598 -6.16902E-04 0.00362 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00980E-01 3.5E-05  3.74750E-01 4.3E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10749E+00 3.5E-05  8.89483E-01 4.3E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.10071E-03 0.00038  2.77411E-03 0.00047 ];
INF_REMXS                 (idx, [1:   4]) = [  5.43975E-03 0.00016  4.42787E-03 0.00040 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33450E-01 1.6E-05  4.30384E-03 0.00024  1.65398E-03 0.00044  3.83109E-01 4.4E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23149E-02 0.00022 -9.60515E-04 0.00048 -1.75841E-04 0.00167  1.15043E-02 0.00038 ];
INF_S2                    (idx, [1:   8]) = [  2.65364E-03 0.00130 -1.70951E-04 0.00187 -1.07744E-04 0.00196 -4.29818E-03 0.00079 ];
INF_S3                    (idx, [1:   8]) = [  5.20384E-04 0.00527 -4.47940E-05 0.00699 -3.88016E-05 0.00514 -4.00420E-03 0.00082 ];
INF_S4                    (idx, [1:   8]) = [ -1.15761E-04 0.02423 -3.55850E-05 0.00737 -2.46007E-05 0.00726 -4.63436E-03 0.00064 ];
INF_S5                    (idx, [1:   8]) = [  1.20960E-04 0.01930 -2.87353E-06 0.09164 -6.43308E-06 0.02256 -2.70852E-03 0.00108 ];
INF_S6                    (idx, [1:   8]) = [ -3.03683E-04 0.00692 -2.40107E-05 0.01087 -1.68257E-05 0.00868 -4.42414E-03 0.00053 ];
INF_S7                    (idx, [1:   8]) = [  1.08710E-04 0.01895  2.14692E-05 0.01011  7.38395E-06 0.01801 -6.24286E-04 0.00358 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33484E-01 1.6E-05  4.30384E-03 0.00024  1.65398E-03 0.00044  3.83109E-01 4.4E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23240E-02 0.00022 -9.60515E-04 0.00048 -1.75841E-04 0.00167  1.15043E-02 0.00038 ];
INF_SP2                   (idx, [1:   8]) = [  2.65528E-03 0.00129 -1.70951E-04 0.00187 -1.07744E-04 0.00196 -4.29818E-03 0.00079 ];
INF_SP3                   (idx, [1:   8]) = [  5.20590E-04 0.00526 -4.47940E-05 0.00699 -3.88016E-05 0.00514 -4.00420E-03 0.00082 ];
INF_SP4                   (idx, [1:   8]) = [ -1.15773E-04 0.02425 -3.55850E-05 0.00737 -2.46007E-05 0.00726 -4.63436E-03 0.00064 ];
INF_SP5                   (idx, [1:   8]) = [  1.20950E-04 0.01933 -2.87353E-06 0.09164 -6.43308E-06 0.02256 -2.70852E-03 0.00108 ];
INF_SP6                   (idx, [1:   8]) = [ -3.03691E-04 0.00693 -2.40107E-05 0.01087 -1.68257E-05 0.00868 -4.42414E-03 0.00053 ];
INF_SP7                   (idx, [1:   8]) = [  1.08677E-04 0.01897  2.14692E-05 0.01011  7.38395E-06 0.01801 -6.24286E-04 0.00358 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98732E-01 0.00023  4.26038E-01 0.00061 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99146E-01 0.00039  4.21699E-01 0.00095 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99206E-01 0.00034  4.21225E-01 0.00093 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97854E-01 0.00033  4.35563E-01 0.00096 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11583E+00 0.00023  7.82432E-01 0.00061 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11430E+00 0.00039  7.90523E-01 0.00095 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11407E+00 0.00034  7.91410E-01 0.00093 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11913E+00 0.00033  7.65362E-01 0.00096 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.60775E-03 0.00370  2.11018E-04 0.02044  1.09890E-03 0.00944  1.07092E-03 0.00940  3.03617E-03 0.00551  8.71769E-04 0.01035  3.18968E-04 0.01723 ];
LAMBDA                    (idx, [1:  14]) = [  7.65947E-01 0.00907  1.24906E-02 2.7E-07  3.18184E-02 2.8E-05  1.09401E-01 3.6E-05  3.17109E-01 3.1E-05  1.35369E+00 2.7E-05  8.64418E+00 0.00019 ];

