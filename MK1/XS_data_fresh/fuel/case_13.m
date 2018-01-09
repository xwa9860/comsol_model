
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input12' ;
HOSTNAME                  (idx, [1: 12])  = 'n0086.savio1' ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00294E+00  1.00015E+00  9.97210E-01  9.98018E-01  9.95695E-01  9.95527E-01  9.95755E-01  1.00363E+00  1.00033E+00  1.00329E+00  9.99215E-01  1.00162E+00  1.00064E+00  9.97696E-01  1.00176E+00  1.00042E+00  9.99604E-01  9.98689E-01  1.00374E+00  1.00407E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 1.3E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  7.31551E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.26845E-01 2.5E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83350E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87462E-01 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.68796E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84089E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84074E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.56283E+02 0.00028  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.65887E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002060 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00030 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00030 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.82288E+02 ;
RUNNING_TIME              (idx, 1)        =  2.94388E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.16067E-01  1.16067E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.15000E-03  1.15000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.93216E+01  2.93216E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.94385E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77962 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98485E+01 0.00014 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87514E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4754.47;
MEMSIZE                   (idx, 1)        = 788.09;
XS_MEMSIZE                (idx, 1)        = 471.02;
MAT_MEMSIZE               (idx, 1)        = 180.17;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.38;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 151908 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35537E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.45257E-01 0.00061 ];
U235_FISS                 (idx, [1:   4]) = [  7.26920E+18 0.00020  9.98351E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20090E+16 0.00762  1.64895E-03 0.00760 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70812E+18 0.00060  2.75772E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.20169E+18 0.00060  3.55428E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002060 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79886E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002060 2.01799E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9059799 9.14013E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10649488 1.07447E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 292773 2.95070E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002060 2.01799E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.75671E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.3E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.19430E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34763E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35537E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.93720E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.99994E+17 0.00223 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36763E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.51677E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.3E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.30944E+00 0.00022  1.30087E+00 0.00021  8.61090E-03 0.00382 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30957E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.30968E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30957E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32918E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81243E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81234E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.69170E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.69296E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.63919E-03 0.00575 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.57670E-03 0.00148 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.07138E-03 0.00283  1.57652E-04 0.01617  8.33450E-04 0.00675  8.23972E-04 0.00685  2.33236E-03 0.00421  6.81692E-04 0.00758  2.42248E-04 0.01269 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.65173E-01 0.00665  1.08855E-02 0.00859  3.18195E-02 1.8E-05  1.09401E-01 2.7E-05  3.17097E-01 2.1E-05  1.35375E+00 1.7E-05  8.27272E+00 0.00474 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.56217E-03 0.00383  2.08429E-04 0.02168  1.07294E-03 0.00934  1.07803E-03 0.00937  3.01039E-03 0.00574  8.79218E-04 0.01031  3.13161E-04 0.01692 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.65219E-01 0.00888  1.24906E-02 2.7E-07  3.18200E-02 2.2E-05  1.09404E-01 3.9E-05  3.17103E-01 2.9E-05  1.35376E+00 2.3E-05  8.64305E+00 0.00019 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.72198E-04 0.00064  3.72299E-04 0.00064  3.56644E-04 0.00759 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.87325E-04 0.00060  4.87456E-04 0.00060  4.67010E-04 0.00761 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.57930E-03 0.00388  2.07492E-04 0.02236  1.08128E-03 0.00945  1.07157E-03 0.00943  3.01650E-03 0.00582  8.86317E-04 0.01050  3.16125E-04 0.01725 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.67678E-01 0.00913  1.24906E-02 1.3E-07  3.18197E-02 3.3E-05  1.09406E-01 5.0E-05  3.17105E-01 3.1E-05  1.35376E+00 2.6E-05  8.64358E+00 0.00023 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.56598E-04 0.00145  3.56754E-04 0.00146  3.33421E-04 0.01793 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.66900E-04 0.00143  4.67104E-04 0.00144  4.36610E-04 0.01795 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.55955E-03 0.01092  1.89808E-04 0.06819  1.07446E-03 0.02730  1.10055E-03 0.02700  2.99369E-03 0.01669  8.77052E-04 0.03145  3.23986E-04 0.05302 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.88612E-01 0.02922  1.24906E-02 7.3E-07  3.18183E-02 6.5E-05  1.09411E-01 0.00011  3.17093E-01 7.6E-05  1.35381E+00 5.0E-05  8.64077E+00 0.00036 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.57416E-03 0.01058  1.92215E-04 0.06701  1.07790E-03 0.02640  1.08992E-03 0.02618  3.01516E-03 0.01624  8.78998E-04 0.03051  3.19977E-04 0.05135 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.80064E-01 0.02813  1.24906E-02 7.7E-07  3.18184E-02 6.5E-05  1.09411E-01 0.00011  3.17095E-01 7.7E-05  1.35382E+00 4.7E-05  8.64086E+00 0.00037 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.84458E+01 0.01097 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.65114E-04 0.00037 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.78048E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.58327E-03 0.00227 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.80348E+01 0.00229 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08907E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58310E-05 8.8E-05  3.58300E-05 8.9E-05  3.59956E-05 0.00105 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.48492E-04 0.00040  7.48685E-04 0.00040  7.19032E-04 0.00489 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.07774E-01 0.00015  7.06796E-01 0.00015  9.14822E-01 0.00445 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.06931E+01 0.00652 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84074E+02 0.00023  1.77022E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.97058E+04 0.00178  3.79548E+05 0.00075  8.96823E+05 0.00039  1.66323E+06 0.00024  1.87330E+06 0.00021  1.94216E+06 0.00015  1.45869E+06 0.00014  1.14271E+06 0.00017  1.62983E+06 0.00015  1.60423E+06 9.9E-05  1.75019E+06 0.00010  1.74154E+06 9.8E-05  1.89926E+06 0.00012  1.85576E+06 0.00011  1.86279E+06 0.00012  1.63566E+06 0.00011  1.64686E+06 0.00011  1.63832E+06 0.00011  1.62917E+06 0.00011  3.22876E+06 9.0E-05  3.17390E+06 9.6E-05  2.32569E+06 0.00010  1.51482E+06 0.00012  1.79704E+06 0.00012  1.72094E+06 0.00013  1.46207E+06 0.00014  2.58065E+06 0.00015  5.49941E+05 0.00028  6.89445E+05 0.00026  6.22161E+05 0.00029  3.65951E+05 0.00032  6.39615E+05 0.00025  4.41319E+05 0.00038  3.85998E+05 0.00037  7.55909E+04 0.00065  7.49964E+04 0.00074  7.73871E+04 0.00074  7.99750E+04 0.00076  7.94187E+04 0.00072  7.87943E+04 0.00066  8.15985E+04 0.00070  7.73423E+04 0.00067  1.47635E+05 0.00055  2.41988E+05 0.00041  3.23819E+05 0.00047  1.00964E+06 0.00033  1.51507E+06 0.00033  2.39725E+06 0.00043  1.98355E+06 0.00044  1.58134E+06 0.00046  1.26228E+06 0.00050  1.45109E+06 0.00049  2.58932E+06 0.00049  3.17495E+06 0.00051  5.26803E+06 0.00051  6.53453E+06 0.00053  7.60996E+06 0.00056  3.98921E+06 0.00057  2.53783E+06 0.00056  1.68032E+06 0.00059  1.42505E+06 0.00063  1.34972E+06 0.00064  1.03911E+06 0.00064  6.85687E+05 0.00071  5.82316E+05 0.00076  5.31611E+05 0.00071  4.39810E+05 0.00076  3.01186E+05 0.00083  1.98206E+05 0.00108  6.24974E+04 0.00130 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32929E+00 0.00023 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.53592E+21 0.00023  3.40131E+21 0.00058 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38923E-01 1.5E-05  3.87605E-01 4.5E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.22031E-04 0.00041  9.66595E-04 0.00045 ];
INF_ABS                   (idx, [1:   4]) = [  1.14949E-03 0.00034  2.76736E-03 0.00048 ];
INF_FISS                  (idx, [1:   4]) = [  3.27457E-04 0.00046  1.80077E-03 0.00058 ];
INF_NSF                   (idx, [1:   4]) = [  7.99440E-04 0.00046  4.38793E-03 0.00058 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44136E+00 4.1E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.1E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.14955E-07 0.00010  2.10191E-06 4.3E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37774E-01 1.6E-05  3.84838E-01 4.8E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13610E-02 0.00020  1.13329E-02 0.00041 ];
INF_SCATT2                (idx, [1:   4]) = [  2.49167E-03 0.00137 -4.41078E-03 0.00088 ];
INF_SCATT3                (idx, [1:   4]) = [  4.76524E-04 0.00701 -4.04038E-03 0.00085 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.48880E-04 0.02027 -4.65073E-03 0.00056 ];
INF_SCATT5                (idx, [1:   4]) = [  1.10886E-04 0.02426 -2.71462E-03 0.00080 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.28898E-04 0.00677 -4.44520E-03 0.00050 ];
INF_SCATT7                (idx, [1:   4]) = [  1.32006E-04 0.01502 -6.24068E-04 0.00345 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37808E-01 1.6E-05  3.84838E-01 4.8E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13701E-02 0.00020  1.13329E-02 0.00041 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.49337E-03 0.00137 -4.41078E-03 0.00088 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.76787E-04 0.00701 -4.04038E-03 0.00085 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.48837E-04 0.02029 -4.65073E-03 0.00056 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.10932E-04 0.02422 -2.71462E-03 0.00080 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.28927E-04 0.00678 -4.44520E-03 0.00050 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.31965E-04 0.01502 -6.24068E-04 0.00345 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00982E-01 3.2E-05  3.74812E-01 4.9E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10748E+00 3.2E-05  8.89335E-01 4.9E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.11501E-03 0.00036  2.76736E-03 0.00048 ];
INF_REMXS                 (idx, [1:   4]) = [  5.44276E-03 0.00014  4.42245E-03 0.00040 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33480E-01 1.5E-05  4.29331E-03 0.00021  1.65542E-03 0.00044  3.83183E-01 4.8E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23185E-02 0.00019 -9.57439E-04 0.00053 -1.76296E-04 0.00183  1.15092E-02 0.00040 ];
INF_S2                    (idx, [1:   8]) = [  2.66261E-03 0.00125 -1.70934E-04 0.00210 -1.07980E-04 0.00257 -4.30280E-03 0.00089 ];
INF_S3                    (idx, [1:   8]) = [  5.21096E-04 0.00637 -4.45719E-05 0.00779 -3.87575E-05 0.00547 -4.00162E-03 0.00085 ];
INF_S4                    (idx, [1:   8]) = [ -1.13305E-04 0.02656 -3.55744E-05 0.01014 -2.44529E-05 0.00839 -4.62628E-03 0.00056 ];
INF_S5                    (idx, [1:   8]) = [  1.13742E-04 0.02375 -2.85607E-06 0.09588 -6.12860E-06 0.02857 -2.70849E-03 0.00081 ];
INF_S6                    (idx, [1:   8]) = [ -3.05296E-04 0.00731 -2.36020E-05 0.01005 -1.67125E-05 0.00882 -4.42849E-03 0.00050 ];
INF_S7                    (idx, [1:   8]) = [  1.10850E-04 0.01804  2.11562E-05 0.01057  6.64342E-06 0.02077 -6.30711E-04 0.00338 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33515E-01 1.5E-05  4.29331E-03 0.00021  1.65542E-03 0.00044  3.83183E-01 4.8E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23275E-02 0.00019 -9.57439E-04 0.00053 -1.76296E-04 0.00183  1.15092E-02 0.00040 ];
INF_SP2                   (idx, [1:   8]) = [  2.66430E-03 0.00125 -1.70934E-04 0.00210 -1.07980E-04 0.00257 -4.30280E-03 0.00089 ];
INF_SP3                   (idx, [1:   8]) = [  5.21359E-04 0.00637 -4.45719E-05 0.00779 -3.87575E-05 0.00547 -4.00162E-03 0.00085 ];
INF_SP4                   (idx, [1:   8]) = [ -1.13262E-04 0.02659 -3.55744E-05 0.01014 -2.44529E-05 0.00839 -4.62628E-03 0.00056 ];
INF_SP5                   (idx, [1:   8]) = [  1.13788E-04 0.02371 -2.85607E-06 0.09588 -6.12860E-06 0.02857 -2.70849E-03 0.00081 ];
INF_SP6                   (idx, [1:   8]) = [ -3.05325E-04 0.00733 -2.36020E-05 0.01005 -1.67125E-05 0.00882 -4.42849E-03 0.00050 ];
INF_SP7                   (idx, [1:   8]) = [  1.10809E-04 0.01805  2.11562E-05 0.01057  6.64342E-06 0.02077 -6.30711E-04 0.00338 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98769E-01 0.00017  4.26110E-01 0.00072 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99200E-01 0.00031  4.21404E-01 0.00095 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99256E-01 0.00031  4.21663E-01 0.00103 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97862E-01 0.00034  4.35637E-01 0.00109 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11569E+00 0.00017  7.82311E-01 0.00072 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11409E+00 0.00031  7.91077E-01 0.00095 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11388E+00 0.00031  7.90603E-01 0.00103 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11910E+00 0.00034  7.65253E-01 0.00109 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.56217E-03 0.00383  2.08429E-04 0.02168  1.07294E-03 0.00934  1.07803E-03 0.00937  3.01039E-03 0.00574  8.79218E-04 0.01031  3.13161E-04 0.01692 ];
LAMBDA                    (idx, [1:  14]) = [  7.65219E-01 0.00888  1.24906E-02 2.7E-07  3.18200E-02 2.2E-05  1.09404E-01 3.9E-05  3.17103E-01 2.9E-05  1.35376E+00 2.3E-05  8.64305E+00 0.00019 ];

