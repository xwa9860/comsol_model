
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
WORKING_DIRECTORY         (idx, [1: 62])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input0' ;
HOSTNAME                  (idx, [1: 12])  = 'n0117.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1047.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 16:59:43 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 17:29:04 2018' ;

% Run parameters:

POP                       (idx, 1)        = 10000 ;
CYCLES                    (idx, 1)        = 2000 ;
SKIP                      (idx, 1)        = 500 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1515459583 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00041E+00  1.00062E+00  9.98110E-01  1.00124E+00  9.96739E-01  1.00153E+00  9.99846E-01  1.00356E+00  9.97582E-01  1.00169E+00  1.00122E+00  9.99025E-01  1.00095E+00  1.00144E+00  9.99593E-01  1.00009E+00  1.00095E+00  9.95769E-01  9.98080E-01  1.00154E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.05704E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.29430E-01 2.5E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83686E-01 4.8E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87808E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.50195E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.85985E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.85970E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.60206E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.50733E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001779 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.78591E+02 ;
RUNNING_TIME              (idx, 1)        =  2.93442E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.79550E-01  1.79550E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  9.16667E-04  9.16667E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.91637E+01  2.91637E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.93438E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.71741 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98263E+01 0.00014 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.84022E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.80 ;
ALLOC_MEMSIZE             (idx, 1)        = 4755.21;
MEMSIZE                   (idx, 1)        = 788.93;
XS_MEMSIZE                (idx, 1)        = 471.55;
MAT_MEMSIZE               (idx, 1)        = 180.48;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.28;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 152169 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.37465E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.59668E-01 0.00061 ];
U235_FISS                 (idx, [1:   4]) = [  7.26909E+18 0.00020  9.98336E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.21167E+16 0.00740  1.66393E-03 0.00739 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71829E+18 0.00060  2.69260E-01 0.00052 ];
U238_CAPT                 (idx, [1:   4]) = [  2.33369E+18 0.00061  3.65662E-01 0.00044 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001779 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80074E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001779 2.01801E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9202719 9.28472E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10500024 1.05940E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 299036 3.01329E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001779 2.01801E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -1.37836E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.3E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.6E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.38053E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.36626E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.37465E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.10373E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.07134E+17 0.00217 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.38697E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.57870E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43745E+00 6.8E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.6E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.29106E+00 0.00022  1.28264E+00 0.00021  8.47507E-03 0.00375 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.29131E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.29132E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.29131E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.31106E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80346E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80343E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.94433E-07 0.00080 ];
IMP_EALF                  (idx, [1:   2]) = [  2.94396E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.65278E-03 0.00565 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.67112E-03 0.00154 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.15311E-03 0.00283  1.69012E-04 0.01522  8.48464E-04 0.00695  8.29862E-04 0.00700  2.36797E-03 0.00409  6.91091E-04 0.00765  2.46708E-04 0.01275 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.63034E-01 0.00661  1.10417E-02 0.00810  3.18195E-02 1.9E-05  1.09399E-01 2.6E-05  3.17093E-01 2.1E-05  1.35369E+00 1.9E-05  8.28917E+00 0.00463 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.55838E-03 0.00373  2.13340E-04 0.02043  1.08333E-03 0.00948  1.05696E-03 0.00917  3.00639E-03 0.00560  8.84083E-04 0.01063  3.14291E-04 0.01721 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.64591E-01 0.00900  1.24906E-02 1.1E-07  3.18182E-02 3.2E-05  1.09401E-01 3.7E-05  3.17104E-01 3.0E-05  1.35365E+00 2.9E-05  8.64456E+00 0.00021 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.81548E-04 0.00063  3.81654E-04 0.00063  3.65145E-04 0.00758 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.92555E-04 0.00060  4.92692E-04 0.00060  4.71434E-04 0.00758 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.56341E-03 0.00376  2.13894E-04 0.02076  1.08132E-03 0.00960  1.06213E-03 0.00944  3.00861E-03 0.00563  8.82577E-04 0.01079  3.14880E-04 0.01776 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.63480E-01 0.00924  1.24906E-02 1.6E-07  3.18174E-02 4.6E-05  1.09397E-01 3.6E-05  3.17097E-01 3.0E-05  1.35363E+00 3.4E-05  8.64552E+00 0.00024 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.66785E-04 0.00147  3.66811E-04 0.00147  3.62590E-04 0.01984 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.73498E-04 0.00145  4.73532E-04 0.00145  4.68042E-04 0.01981 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.60078E-03 0.01123  2.27607E-04 0.06254  1.11390E-03 0.02829  1.09310E-03 0.02855  2.99350E-03 0.01638  8.27688E-04 0.03087  3.44987E-04 0.05169 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.47372E-01 0.02671  1.24906E-02 7.4E-09  3.18218E-02 3.2E-05  1.09404E-01 0.00010  3.17137E-01 0.00010  1.35372E+00 6.5E-05  8.64587E+00 0.00052 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.55610E-03 0.01093  2.25094E-04 0.06050  1.11091E-03 0.02768  1.08261E-03 0.02770  2.96936E-03 0.01591  8.21016E-04 0.02986  3.47111E-04 0.05041 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.56524E-01 0.02617  1.24906E-02 7.4E-09  3.18213E-02 3.8E-05  1.09402E-01 9.7E-05  3.17143E-01 0.00010  1.35372E+00 6.5E-05  8.64570E+00 0.00051 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.80780E+01 0.01138 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.74394E-04 0.00036 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.83317E-04 0.00029 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.57773E-03 0.00213 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.75743E+01 0.00217 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08573E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59461E-05 9.0E-05  3.59453E-05 9.0E-05  3.60611E-05 0.00108 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.61266E-04 0.00039  7.61471E-04 0.00039  7.29124E-04 0.00492 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.00844E-01 0.00015  6.99935E-01 0.00015  8.90829E-01 0.00442 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07415E+01 0.00676 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.85970E+02 0.00023  1.79810E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.92300E+04 0.00157  3.79603E+05 0.00070  8.96495E+05 0.00041  1.66392E+06 0.00028  1.87358E+06 0.00022  1.94161E+06 0.00015  1.45902E+06 0.00015  1.14325E+06 0.00019  1.62990E+06 0.00014  1.60447E+06 0.00011  1.75045E+06 0.00012  1.74161E+06 0.00011  1.89933E+06 0.00012  1.85541E+06 0.00011  1.86279E+06 0.00011  1.63569E+06 0.00012  1.64665E+06 0.00010  1.63820E+06 0.00011  1.62919E+06 0.00011  3.22841E+06 9.2E-05  3.17275E+06 8.9E-05  2.32385E+06 0.00011  1.51386E+06 0.00013  1.79253E+06 0.00013  1.71326E+06 0.00014  1.45464E+06 0.00016  2.56275E+06 0.00018  5.47546E+05 0.00028  6.86536E+05 0.00028  6.20310E+05 0.00024  3.65754E+05 0.00035  6.41014E+05 0.00029  4.44291E+05 0.00031  3.90664E+05 0.00031  7.69910E+04 0.00073  7.65459E+04 0.00067  7.91213E+04 0.00067  8.18244E+04 0.00070  8.15023E+04 0.00061  8.10969E+04 0.00071  8.41381E+04 0.00066  8.00254E+04 0.00069  1.53749E+05 0.00050  2.54449E+05 0.00043  3.44752E+05 0.00035  1.10247E+06 0.00030  1.67766E+06 0.00036  2.62253E+06 0.00042  2.13171E+06 0.00047  1.67942E+06 0.00051  1.32953E+06 0.00046  1.52040E+06 0.00053  2.69072E+06 0.00049  3.26758E+06 0.00050  5.36787E+06 0.00053  6.58239E+06 0.00055  7.58860E+06 0.00057  3.95186E+06 0.00061  2.50507E+06 0.00058  1.65597E+06 0.00055  1.40206E+06 0.00063  1.32690E+06 0.00065  1.02028E+06 0.00065  6.72605E+05 0.00072  5.71637E+05 0.00073  5.21685E+05 0.00072  4.31649E+05 0.00080  2.95531E+05 0.00095  1.94143E+05 0.00100  6.11643E+04 0.00135 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.31107E+00 0.00019 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.59371E+21 0.00019  3.51011E+21 0.00055 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.39014E-01 1.5E-05  3.87568E-01 4.4E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.49241E-04 0.00036  9.48298E-04 0.00043 ];
INF_ABS                   (idx, [1:   4]) = [  1.18041E-03 0.00032  2.68406E-03 0.00046 ];
INF_FISS                  (idx, [1:   4]) = [  3.31167E-04 0.00042  1.73577E-03 0.00054 ];
INF_NSF                   (idx, [1:   4]) = [  8.08472E-04 0.00042  4.22954E-03 0.00054 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44128E+00 4.6E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02318E+02 3.8E-07  2.02270E+02 1.3E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.16955E-07 9.6E-05  2.07776E-06 4.9E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37833E-01 1.5E-05  3.84884E-01 4.6E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13609E-02 0.00022  1.14672E-02 0.00045 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48315E-03 0.00130 -4.33572E-03 0.00099 ];
INF_SCATT3                (idx, [1:   4]) = [  4.64284E-04 0.00663 -3.98866E-03 0.00092 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.52678E-04 0.01907 -4.65339E-03 0.00065 ];
INF_SCATT5                (idx, [1:   4]) = [  1.19340E-04 0.02054 -2.68418E-03 0.00097 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.38569E-04 0.00684 -4.49361E-03 0.00061 ];
INF_SCATT7                (idx, [1:   4]) = [  1.43751E-04 0.01523 -6.11129E-04 0.00343 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37868E-01 1.5E-05  3.84884E-01 4.6E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13700E-02 0.00022  1.14672E-02 0.00045 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48483E-03 0.00130 -4.33572E-03 0.00099 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.64596E-04 0.00662 -3.98866E-03 0.00092 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.52627E-04 0.01911 -4.65339E-03 0.00065 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.19321E-04 0.02057 -2.68418E-03 0.00097 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.38587E-04 0.00683 -4.49361E-03 0.00061 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.43780E-04 0.01525 -6.11129E-04 0.00343 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01094E-01 2.9E-05  3.74566E-01 5.1E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10708E+00 2.9E-05  8.89920E-01 5.1E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.14597E-03 0.00035  2.68406E-03 0.00046 ];
INF_REMXS                 (idx, [1:   4]) = [  5.81907E-03 0.00015  4.70776E-03 0.00040 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33195E-01 1.4E-05  4.63844E-03 0.00021  2.02392E-03 0.00040  3.82860E-01 4.8E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23662E-02 0.00021 -1.00532E-03 0.00046 -2.38563E-04 0.00136  1.17058E-02 0.00045 ];
INF_S2                    (idx, [1:   8]) = [  2.67361E-03 0.00119 -1.90461E-04 0.00195 -1.25533E-04 0.00180 -4.21019E-03 0.00101 ];
INF_S3                    (idx, [1:   8]) = [  5.15014E-04 0.00582 -5.07293E-05 0.00771 -4.45283E-05 0.00503 -3.94413E-03 0.00093 ];
INF_S4                    (idx, [1:   8]) = [ -1.12761E-04 0.02572 -3.99170E-05 0.00755 -2.90464E-05 0.00676 -4.62434E-03 0.00066 ];
INF_S5                    (idx, [1:   8]) = [  1.23075E-04 0.01935 -3.73517E-06 0.07269 -6.72992E-06 0.02767 -2.67745E-03 0.00096 ];
INF_S6                    (idx, [1:   8]) = [ -3.12134E-04 0.00732 -2.64350E-05 0.00909 -1.95599E-05 0.00851 -4.47405E-03 0.00061 ];
INF_S7                    (idx, [1:   8]) = [  1.21074E-04 0.01809  2.26775E-05 0.01010  9.06821E-06 0.01656 -6.20198E-04 0.00339 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33229E-01 1.5E-05  4.63844E-03 0.00021  2.02392E-03 0.00040  3.82860E-01 4.8E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23753E-02 0.00021 -1.00532E-03 0.00046 -2.38563E-04 0.00136  1.17058E-02 0.00045 ];
INF_SP2                   (idx, [1:   8]) = [  2.67529E-03 0.00119 -1.90461E-04 0.00195 -1.25533E-04 0.00180 -4.21019E-03 0.00101 ];
INF_SP3                   (idx, [1:   8]) = [  5.15325E-04 0.00581 -5.07293E-05 0.00771 -4.45283E-05 0.00503 -3.94413E-03 0.00093 ];
INF_SP4                   (idx, [1:   8]) = [ -1.12710E-04 0.02577 -3.99170E-05 0.00755 -2.90464E-05 0.00676 -4.62434E-03 0.00066 ];
INF_SP5                   (idx, [1:   8]) = [  1.23056E-04 0.01938 -3.73517E-06 0.07269 -6.72992E-06 0.02767 -2.67745E-03 0.00096 ];
INF_SP6                   (idx, [1:   8]) = [ -3.12152E-04 0.00731 -2.64350E-05 0.00909 -1.95599E-05 0.00851 -4.47405E-03 0.00061 ];
INF_SP7                   (idx, [1:   8]) = [  1.21102E-04 0.01811  2.26775E-05 0.01010  9.06821E-06 0.01656 -6.20198E-04 0.00339 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98975E-01 0.00020  4.25715E-01 0.00062 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99534E-01 0.00035  4.20974E-01 0.00092 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99409E-01 0.00030  4.20896E-01 0.00097 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97994E-01 0.00036  4.35673E-01 0.00090 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11492E+00 0.00020  7.83026E-01 0.00062 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11285E+00 0.00035  7.91882E-01 0.00092 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11331E+00 0.00030  7.92035E-01 0.00097 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11861E+00 0.00036  7.65161E-01 0.00090 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.55838E-03 0.00373  2.13340E-04 0.02043  1.08333E-03 0.00948  1.05696E-03 0.00917  3.00639E-03 0.00560  8.84083E-04 0.01063  3.14291E-04 0.01721 ];
LAMBDA                    (idx, [1:  14]) = [  7.64591E-01 0.00900  1.24906E-02 1.1E-07  3.18182E-02 3.2E-05  1.09401E-01 3.7E-05  3.17104E-01 3.0E-05  1.35365E+00 2.9E-05  8.64456E+00 0.00021 ];

