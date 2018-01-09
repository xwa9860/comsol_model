
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
WORKING_DIRECTORY         (idx, [1: 62])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input5' ;
HOSTNAME                  (idx, [1: 12])  = 'n0117.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1047.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:12 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:45:23 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.96621E-01  1.00515E+00  1.00218E+00  9.99529E-01  1.00241E+00  9.99109E-01  1.00004E+00  1.00095E+00  9.99615E-01  9.94566E-01  9.95297E-01  1.00086E+00  9.99848E-01  1.00171E+00  9.94854E-01  1.00238E+00  9.99500E-01  1.00206E+00  1.00102E+00  1.00230E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.45087E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.25491E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81559E-01 4.7E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85781E-01 4.7E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.58451E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.85609E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.85595E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.63850E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.81710E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001885 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.95738E+02 ;
RUNNING_TIME              (idx, 1)        =  3.01876E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.48250E-01  1.48250E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.13333E-03  1.13333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  3.00382E+01  3.00382E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  3.01871E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.73452 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98217E+01 0.00016 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.85238E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.80 ;
ALLOC_MEMSIZE             (idx, 1)        = 4804.25;
MEMSIZE                   (idx, 1)        = 837.05;
XS_MEMSIZE                (idx, 1)        = 502.83;
MAT_MEMSIZE               (idx, 1)        = 197.32;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3967.21;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 166406 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35734E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.43998E-01 0.00062 ];
U235_FISS                 (idx, [1:   4]) = [  7.27167E+18 0.00021  9.98363E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.19249E+16 0.00754  1.63706E-03 0.00753 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71349E+18 0.00059  2.75964E-01 0.00053 ];
U238_CAPT                 (idx, [1:   4]) = [  2.19233E+18 0.00063  3.53038E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001885 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79051E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001885 2.01791E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9069139 9.14931E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10638024 1.07327E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 294722 2.97070E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001885 2.01791E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -3.65078E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.20998E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34920E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35734E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.00265E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.01640E+17 0.00226 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36937E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.54106E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.30792E+00 0.00022  1.29937E+00 0.00022  8.63523E-03 0.00374 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30792E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.30779E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30792E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32764E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80731E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80743E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.83326E-07 0.00081 ];
IMP_EALF                  (idx, [1:   2]) = [  2.82829E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.53174E-03 0.00581 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.57183E-03 0.00149 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.08617E-03 0.00278  1.63927E-04 0.01534  8.52447E-04 0.00680  8.16601E-04 0.00686  2.33241E-03 0.00411  6.83379E-04 0.00740  2.37408E-04 0.01243 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.54278E-01 0.00642  1.09917E-02 0.00826  3.18188E-02 2.0E-05  1.09399E-01 2.6E-05  3.17095E-01 2.1E-05  1.35372E+00 1.8E-05  8.27821E+00 0.00471 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.59616E-03 0.00369  2.13599E-04 0.02080  1.09871E-03 0.00915  1.05090E-03 0.00926  3.03522E-03 0.00550  8.94369E-04 0.00999  3.03358E-04 0.01697 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.50637E-01 0.00870  1.24906E-02 1.4E-07  3.18188E-02 2.7E-05  1.09400E-01 3.4E-05  3.17091E-01 2.8E-05  1.35367E+00 2.8E-05  8.64554E+00 0.00020 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.74392E-04 0.00065  3.74486E-04 0.00066  3.59341E-04 0.00747 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.89621E-04 0.00061  4.89745E-04 0.00061  4.69888E-04 0.00746 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.59861E-03 0.00378  2.09739E-04 0.02141  1.10475E-03 0.00921  1.04644E-03 0.00941  3.03698E-03 0.00564  8.93534E-04 0.01044  3.07163E-04 0.01733 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.55752E-01 0.00901  1.24906E-02 2.4E-07  3.18182E-02 3.1E-05  1.09401E-01 4.1E-05  3.17095E-01 2.9E-05  1.35369E+00 3.0E-05  8.64863E+00 0.00030 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.58586E-04 0.00144  3.58648E-04 0.00144  3.43993E-04 0.01858 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.68951E-04 0.00142  4.69032E-04 0.00142  4.49782E-04 0.01855 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.62869E-03 0.01163  1.90366E-04 0.06501  1.09557E-03 0.02908  1.05300E-03 0.02926  3.05982E-03 0.01700  9.00920E-04 0.03081  3.29013E-04 0.05103 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.73869E-01 0.02745  1.24906E-02 7.5E-09  3.18201E-02 6.1E-05  1.09407E-01 0.00011  3.17127E-01 9.4E-05  1.35358E+00 7.6E-05  8.65028E+00 0.00066 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.59857E-03 0.01127  1.95814E-04 0.06354  1.09156E-03 0.02812  1.04623E-03 0.02807  3.04801E-03 0.01650  8.96879E-04 0.02989  3.20076E-04 0.05009 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.66139E-01 0.02653  1.24906E-02 7.5E-09  3.18202E-02 5.9E-05  1.09407E-01 0.00011  3.17125E-01 8.8E-05  1.35358E+00 7.5E-05  8.65073E+00 0.00066 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.85912E+01 0.01184 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.66950E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79890E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.58830E-03 0.00212 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.79612E+01 0.00218 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08790E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59109E-05 8.6E-05  3.59105E-05 8.7E-05  3.59918E-05 0.00107 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.53094E-04 0.00040  7.53306E-04 0.00040  7.21194E-04 0.00489 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.08419E-01 0.00015  7.07448E-01 0.00015  9.12798E-01 0.00434 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.09808E+01 0.00682 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.85595E+02 0.00023  1.78463E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.94323E+04 0.00197  3.79547E+05 0.00071  8.96910E+05 0.00042  1.66404E+06 0.00025  1.87355E+06 0.00018  1.94177E+06 0.00015  1.45915E+06 0.00016  1.14290E+06 0.00018  1.62943E+06 0.00014  1.60436E+06 0.00012  1.75072E+06 0.00011  1.74203E+06 9.2E-05  1.89914E+06 1.0E-04  1.85580E+06 0.00011  1.86304E+06 0.00010  1.63548E+06 0.00012  1.64664E+06 0.00012  1.63864E+06 0.00012  1.62925E+06 0.00012  3.22862E+06 9.4E-05  3.17351E+06 0.00010  2.32557E+06 0.00011  1.51511E+06 0.00012  1.79860E+06 0.00013  1.72228E+06 0.00013  1.46385E+06 0.00017  2.58548E+06 0.00015  5.52711E+05 0.00024  6.92694E+05 0.00025  6.25371E+05 0.00024  3.68477E+05 0.00033  6.45018E+05 0.00028  4.46238E+05 0.00034  3.90911E+05 0.00037  7.68158E+04 0.00066  7.62499E+04 0.00069  7.86742E+04 0.00076  8.13875E+04 0.00066  8.09666E+04 0.00067  8.04716E+04 0.00067  8.34143E+04 0.00066  7.91951E+04 0.00065  1.51635E+05 0.00052  2.49747E+05 0.00050  3.36707E+05 0.00043  1.06457E+06 0.00031  1.61428E+06 0.00037  2.54022E+06 0.00044  2.07980E+06 0.00050  1.64631E+06 0.00052  1.30911E+06 0.00058  1.49785E+06 0.00055  2.66250E+06 0.00055  3.24409E+06 0.00059  5.34929E+06 0.00059  6.58551E+06 0.00061  7.61760E+06 0.00062  3.97647E+06 0.00061  2.52429E+06 0.00068  1.67011E+06 0.00066  1.41510E+06 0.00073  1.33910E+06 0.00068  1.03012E+06 0.00075  6.79621E+05 0.00078  5.77094E+05 0.00078  5.26454E+05 0.00076  4.35901E+05 0.00079  2.98058E+05 0.00096  1.95876E+05 0.00095  6.19482E+04 0.00134 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32751E+00 0.00021 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.54986E+21 0.00020  3.45287E+21 0.00066 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38931E-01 1.7E-05  3.87481E-01 4.3E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.17726E-04 0.00036  9.57811E-04 0.00043 ];
INF_ABS                   (idx, [1:   4]) = [  1.14782E-03 0.00032  2.72769E-03 0.00055 ];
INF_FISS                  (idx, [1:   4]) = [  3.30095E-04 0.00043  1.76988E-03 0.00066 ];
INF_NSF                   (idx, [1:   4]) = [  8.05860E-04 0.00043  4.31266E-03 0.00066 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44130E+00 4.1E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.6E-07  2.02270E+02 2.6E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.16438E-07 0.00011  2.08684E-06 5.1E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37784E-01 1.8E-05  3.84753E-01 4.6E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13557E-02 0.00019  1.14200E-02 0.00042 ];
INF_SCATT2                (idx, [1:   4]) = [  2.47754E-03 0.00155 -4.36633E-03 0.00092 ];
INF_SCATT3                (idx, [1:   4]) = [  4.65450E-04 0.00617 -4.00848E-03 0.00085 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.56597E-04 0.01847 -4.65222E-03 0.00066 ];
INF_SCATT5                (idx, [1:   4]) = [  1.14263E-04 0.02117 -2.69947E-03 0.00093 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.34237E-04 0.00609 -4.47484E-03 0.00060 ];
INF_SCATT7                (idx, [1:   4]) = [  1.36585E-04 0.01465 -6.13238E-04 0.00305 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37818E-01 1.8E-05  3.84753E-01 4.6E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13648E-02 0.00019  1.14200E-02 0.00042 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.47925E-03 0.00154 -4.36633E-03 0.00092 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.65688E-04 0.00617 -4.00848E-03 0.00085 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.56581E-04 0.01845 -4.65222E-03 0.00066 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.14256E-04 0.02122 -2.69947E-03 0.00093 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.34220E-04 0.00609 -4.47484E-03 0.00060 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.36577E-04 0.01465 -6.13238E-04 0.00305 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01042E-01 3.3E-05  3.74556E-01 4.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10726E+00 3.3E-05  8.89943E-01 4.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.11359E-03 0.00033  2.72769E-03 0.00055 ];
INF_REMXS                 (idx, [1:   4]) = [  5.64390E-03 0.00014  4.58192E-03 0.00049 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33287E-01 1.7E-05  4.49618E-03 0.00022  1.85392E-03 0.00049  3.82899E-01 4.7E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23420E-02 0.00017 -9.86252E-04 0.00056 -2.08046E-04 0.00145  1.16281E-02 0.00042 ];
INF_S2                    (idx, [1:   8]) = [  2.65963E-03 0.00144 -1.82095E-04 0.00233 -1.18699E-04 0.00198 -4.24763E-03 0.00095 ];
INF_S3                    (idx, [1:   8]) = [  5.13243E-04 0.00558 -4.77933E-05 0.00790 -4.17719E-05 0.00504 -3.96671E-03 0.00087 ];
INF_S4                    (idx, [1:   8]) = [ -1.18239E-04 0.02413 -3.83580E-05 0.00795 -2.69099E-05 0.00693 -4.62531E-03 0.00066 ];
INF_S5                    (idx, [1:   8]) = [  1.17705E-04 0.02035 -3.44148E-06 0.08110 -6.28175E-06 0.02457 -2.69319E-03 0.00094 ];
INF_S6                    (idx, [1:   8]) = [ -3.08686E-04 0.00660 -2.55510E-05 0.00888 -1.84431E-05 0.00882 -4.45639E-03 0.00059 ];
INF_S7                    (idx, [1:   8]) = [  1.14781E-04 0.01758  2.18040E-05 0.01104  7.88854E-06 0.01877 -6.21126E-04 0.00300 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33322E-01 1.7E-05  4.49618E-03 0.00022  1.85392E-03 0.00049  3.82899E-01 4.7E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23511E-02 0.00017 -9.86252E-04 0.00056 -2.08046E-04 0.00145  1.16281E-02 0.00042 ];
INF_SP2                   (idx, [1:   8]) = [  2.66135E-03 0.00144 -1.82095E-04 0.00233 -1.18699E-04 0.00198 -4.24763E-03 0.00095 ];
INF_SP3                   (idx, [1:   8]) = [  5.13481E-04 0.00558 -4.77933E-05 0.00790 -4.17719E-05 0.00504 -3.96671E-03 0.00087 ];
INF_SP4                   (idx, [1:   8]) = [ -1.18223E-04 0.02411 -3.83580E-05 0.00795 -2.69099E-05 0.00693 -4.62531E-03 0.00066 ];
INF_SP5                   (idx, [1:   8]) = [  1.17698E-04 0.02041 -3.44148E-06 0.08110 -6.28175E-06 0.02457 -2.69319E-03 0.00094 ];
INF_SP6                   (idx, [1:   8]) = [ -3.08669E-04 0.00660 -2.55510E-05 0.00888 -1.84431E-05 0.00882 -4.45639E-03 0.00059 ];
INF_SP7                   (idx, [1:   8]) = [  1.14773E-04 0.01758  2.18040E-05 0.01104  7.88854E-06 0.01877 -6.21126E-04 0.00300 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98889E-01 0.00022  4.25388E-01 0.00064 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99371E-01 0.00037  4.20681E-01 0.00097 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99455E-01 0.00036  4.20802E-01 0.00102 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97852E-01 0.00035  4.35061E-01 0.00087 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11525E+00 0.00022  7.83631E-01 0.00064 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11346E+00 0.00037  7.92441E-01 0.00097 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11315E+00 0.00036  7.92219E-01 0.00102 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11914E+00 0.00035  7.66232E-01 0.00086 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.59616E-03 0.00369  2.13599E-04 0.02080  1.09871E-03 0.00915  1.05090E-03 0.00926  3.03522E-03 0.00550  8.94369E-04 0.00999  3.03358E-04 0.01697 ];
LAMBDA                    (idx, [1:  14]) = [  7.50637E-01 0.00870  1.24906E-02 1.4E-07  3.18188E-02 2.7E-05  1.09400E-01 3.4E-05  3.17091E-01 2.8E-05  1.35367E+00 2.8E-05  8.64554E+00 0.00020 ];

