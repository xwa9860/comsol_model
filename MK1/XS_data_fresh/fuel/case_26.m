
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input25' ;
HOSTNAME                  (idx, [1: 12])  = 'n0053.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:42 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00339E+00  9.95476E-01  1.00465E+00  1.00495E+00  1.00173E+00  9.96803E-01  1.00554E+00  9.98145E-01  9.97818E-01  9.91442E-01  1.00863E+00  9.90387E-01  1.00216E+00  1.00001E+00  1.00081E+00  9.99692E-01  1.00376E+00  9.91472E-01  1.00118E+00  1.00196E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.96447E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.20355E-01 2.8E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.80843E-01 4.6E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85240E-01 4.6E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.96223E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.83079E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.83065E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.58741E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  5.12861E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001885 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.82010E+02 ;
RUNNING_TIME              (idx, 1)        =  2.94469E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.22683E-01  1.22683E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.28333E-03  1.28333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.93229E+01  2.93229E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.94465E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76472 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98344E+01 0.00016 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86651E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35866E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.49676E-01 0.00061 ];
U235_FISS                 (idx, [1:   4]) = [  7.27014E+18 0.00020  9.98347E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20430E+16 0.00773  1.65342E-03 0.00771 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70517E+18 0.00061  2.73954E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.24086E+18 0.00061  3.59988E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001885 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80359E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001885 2.01804E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9081699 9.16257E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10624884 1.07202E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 295302 2.97632E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001885 2.01804E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -3.12924E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.22219E+18 0.00030 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.35042E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35866E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.91659E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.02217E+17 0.00224 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.37064E+19 0.00014 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.50900E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.6E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.30648E+00 0.00022  1.29794E+00 0.00021  8.54568E-03 0.00366 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30670E+00 0.00014 ];
COL_KEFF                  (idx, [1:   2]) = [  1.30651E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30670E+00 0.00014 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32644E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81471E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81481E+01 2.3E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.63104E-07 0.00080 ];
IMP_EALF                  (idx, [1:   2]) = [  2.62710E-07 0.00042 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.58720E-03 0.00578 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.59452E-03 0.00151 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.04931E-03 0.00280  1.58908E-04 0.01573  8.33306E-04 0.00690  8.15020E-04 0.00711  2.32772E-03 0.00412  6.72939E-04 0.00776  2.41416E-04 0.01274 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.63054E-01 0.00672  1.10167E-02 0.00818  3.18199E-02 1.8E-05  1.09398E-01 2.5E-05  3.17104E-01 2.2E-05  1.35303E+00 0.00050  8.29738E+00 0.00457 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.53922E-03 0.00374  2.09018E-04 0.02075  1.07418E-03 0.00924  1.05647E-03 0.00938  3.01822E-03 0.00557  8.70050E-04 0.01040  3.11277E-04 0.01719 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.61534E-01 0.00901  1.24906E-02 1.8E-07  3.18193E-02 2.7E-05  1.09398E-01 3.1E-05  3.17101E-01 2.9E-05  1.35370E+00 2.6E-05  8.64339E+00 0.00020 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.72735E-04 0.00066  3.72817E-04 0.00066  3.60677E-04 0.00745 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.86919E-04 0.00061  4.87026E-04 0.00061  4.71160E-04 0.00744 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.54368E-03 0.00373  2.12744E-04 0.02100  1.07765E-03 0.00942  1.05372E-03 0.00951  3.01699E-03 0.00563  8.66509E-04 0.01052  3.16074E-04 0.01737 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.65673E-01 0.00920  1.24906E-02 2.7E-07  3.18192E-02 2.9E-05  1.09396E-01 3.3E-05  3.17112E-01 3.3E-05  1.35371E+00 2.5E-05  8.64247E+00 0.00022 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.57109E-04 0.00145  3.57195E-04 0.00145  3.41890E-04 0.01789 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.66514E-04 0.00144  4.66627E-04 0.00144  4.46720E-04 0.01791 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.42737E-03 0.01157  2.13839E-04 0.06475  1.08015E-03 0.02832  1.04402E-03 0.02821  2.95166E-03 0.01718  8.35593E-04 0.03186  3.02112E-04 0.05240 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.64484E-01 0.02923  1.24906E-02 7.4E-09  3.18176E-02 7.6E-05  1.09395E-01 7.5E-05  3.17116E-01 9.5E-05  1.35380E+00 4.6E-05  8.63884E+00 0.00029 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.44083E-03 0.01127  2.14749E-04 0.06179  1.08377E-03 0.02727  1.05682E-03 0.02733  2.95023E-03 0.01679  8.33057E-04 0.03054  3.02205E-04 0.05046 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.66412E-01 0.02846  1.24906E-02 7.4E-09  3.18177E-02 7.6E-05  1.09394E-01 7.2E-05  3.17119E-01 9.4E-05  1.35380E+00 4.6E-05  8.63883E+00 0.00028 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.80656E+01 0.01168 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.65355E-04 0.00037 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.77281E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.50720E-03 0.00204 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.78141E+01 0.00205 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08882E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.57761E-05 8.4E-05  3.57752E-05 8.4E-05  3.59199E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.46514E-04 0.00040  7.46735E-04 0.00040  7.12721E-04 0.00480 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.05583E-01 0.00015  7.04638E-01 0.00015  9.06247E-01 0.00439 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.06948E+01 0.00678 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.83065E+02 0.00023  1.76344E+02 0.00027 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.94809E+04 0.00176  3.80165E+05 0.00067  8.96874E+05 0.00038  1.66357E+06 0.00028  1.87331E+06 0.00018  1.94103E+06 0.00015  1.45892E+06 0.00014  1.14292E+06 0.00018  1.62961E+06 0.00014  1.60426E+06 0.00012  1.75029E+06 0.00011  1.74178E+06 0.00010  1.89940E+06 9.0E-05  1.85578E+06 0.00011  1.86284E+06 9.1E-05  1.63549E+06 0.00012  1.64653E+06 0.00011  1.63828E+06 0.00011  1.62923E+06 0.00012  3.22776E+06 9.1E-05  3.17280E+06 9.9E-05  2.32468E+06 9.5E-05  1.51415E+06 0.00013  1.79382E+06 0.00014  1.71602E+06 0.00013  1.45807E+06 0.00017  2.56870E+06 0.00014  5.48125E+05 0.00027  6.87145E+05 0.00025  6.18386E+05 0.00026  3.63960E+05 0.00032  6.35412E+05 0.00034  4.38022E+05 0.00032  3.82556E+05 0.00039  7.50179E+04 0.00062  7.43842E+04 0.00064  7.65717E+04 0.00069  7.89552E+04 0.00068  7.85721E+04 0.00067  7.79194E+04 0.00058  8.06588E+04 0.00070  7.64301E+04 0.00077  1.45749E+05 0.00058  2.38716E+05 0.00040  3.18449E+05 0.00041  9.85754E+05 0.00034  1.47016E+06 0.00038  2.32725E+06 0.00042  1.93178E+06 0.00045  1.54408E+06 0.00046  1.23495E+06 0.00047  1.42227E+06 0.00047  2.54341E+06 0.00046  3.12762E+06 0.00046  5.20940E+06 0.00047  6.48814E+06 0.00048  7.58539E+06 0.00048  3.98777E+06 0.00050  2.54071E+06 0.00051  1.68336E+06 0.00057  1.42792E+06 0.00059  1.35276E+06 0.00054  1.04194E+06 0.00056  6.87334E+05 0.00067  5.84322E+05 0.00067  5.33229E+05 0.00075  4.41196E+05 0.00073  3.03470E+05 0.00076  1.98442E+05 0.00093  6.26677E+04 0.00136 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32625E+00 0.00023 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.53840E+21 0.00022  3.37828E+21 0.00052 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38931E-01 1.5E-05  3.87699E-01 3.6E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.31958E-04 0.00041  9.70443E-04 0.00036 ];
INF_ABS                   (idx, [1:   4]) = [  1.15786E-03 0.00035  2.78487E-03 0.00042 ];
INF_FISS                  (idx, [1:   4]) = [  3.25897E-04 0.00042  1.81443E-03 0.00051 ];
INF_NSF                   (idx, [1:   4]) = [  7.95643E-04 0.00042  4.42121E-03 0.00051 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44139E+00 4.3E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02320E+02 3.6E-07  2.02270E+02 1.9E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.14182E-07 0.00011  2.10985E-06 4.4E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37772E-01 1.5E-05  3.84914E-01 3.7E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13692E-02 0.00020  1.12825E-02 0.00046 ];
INF_SCATT2                (idx, [1:   4]) = [  2.49293E-03 0.00156 -4.43489E-03 0.00099 ];
INF_SCATT3                (idx, [1:   4]) = [  4.70129E-04 0.00652 -4.06843E-03 0.00076 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.47185E-04 0.01975 -4.65282E-03 0.00064 ];
INF_SCATT5                (idx, [1:   4]) = [  1.15006E-04 0.02616 -2.72076E-03 0.00101 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.19203E-04 0.00654 -4.42665E-03 0.00050 ];
INF_SCATT7                (idx, [1:   4]) = [  1.28649E-04 0.01948 -6.24628E-04 0.00344 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37807E-01 1.5E-05  3.84914E-01 3.7E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13783E-02 0.00020  1.12825E-02 0.00046 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.49461E-03 0.00157 -4.43489E-03 0.00099 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.70401E-04 0.00652 -4.06843E-03 0.00076 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.47139E-04 0.01978 -4.65282E-03 0.00064 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.14933E-04 0.02617 -2.72076E-03 0.00101 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.19240E-04 0.00655 -4.42665E-03 0.00050 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.28586E-04 0.01948 -6.24628E-04 0.00344 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00950E-01 3.2E-05  3.74981E-01 4.1E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10760E+00 3.2E-05  8.88934E-01 4.1E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.12323E-03 0.00037  2.78487E-03 0.00042 ];
INF_REMXS                 (idx, [1:   4]) = [  5.36341E-03 0.00014  4.36323E-03 0.00037 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33567E-01 1.4E-05  4.20522E-03 0.00023  1.57810E-03 0.00044  3.83335E-01 3.8E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23154E-02 0.00020 -9.46146E-04 0.00055 -1.66602E-04 0.00187  1.14491E-02 0.00046 ];
INF_S2                    (idx, [1:   8]) = [  2.65865E-03 0.00146 -1.65717E-04 0.00250 -1.03218E-04 0.00222 -4.33167E-03 0.00101 ];
INF_S3                    (idx, [1:   8]) = [  5.12756E-04 0.00604 -4.26265E-05 0.00850 -3.69537E-05 0.00446 -4.03147E-03 0.00077 ];
INF_S4                    (idx, [1:   8]) = [ -1.12954E-04 0.02591 -3.42315E-05 0.00869 -2.32282E-05 0.00741 -4.62960E-03 0.00064 ];
INF_S5                    (idx, [1:   8]) = [  1.17921E-04 0.02522 -2.91490E-06 0.08369 -5.76653E-06 0.02463 -2.71499E-03 0.00102 ];
INF_S6                    (idx, [1:   8]) = [ -2.95465E-04 0.00705 -2.37387E-05 0.00934 -1.60579E-05 0.00875 -4.41060E-03 0.00050 ];
INF_S7                    (idx, [1:   8]) = [  1.07300E-04 0.02286  2.13487E-05 0.01167  6.52667E-06 0.02139 -6.31155E-04 0.00339 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33602E-01 1.4E-05  4.20522E-03 0.00023  1.57810E-03 0.00044  3.83335E-01 3.8E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23245E-02 0.00020 -9.46146E-04 0.00055 -1.66602E-04 0.00187  1.14491E-02 0.00046 ];
INF_SP2                   (idx, [1:   8]) = [  2.66033E-03 0.00146 -1.65717E-04 0.00250 -1.03218E-04 0.00222 -4.33167E-03 0.00101 ];
INF_SP3                   (idx, [1:   8]) = [  5.13028E-04 0.00604 -4.26265E-05 0.00850 -3.69537E-05 0.00446 -4.03147E-03 0.00077 ];
INF_SP4                   (idx, [1:   8]) = [ -1.12907E-04 0.02596 -3.42315E-05 0.00869 -2.32282E-05 0.00741 -4.62960E-03 0.00064 ];
INF_SP5                   (idx, [1:   8]) = [  1.17847E-04 0.02523 -2.91490E-06 0.08369 -5.76653E-06 0.02463 -2.71499E-03 0.00102 ];
INF_SP6                   (idx, [1:   8]) = [ -2.95501E-04 0.00706 -2.37387E-05 0.00934 -1.60579E-05 0.00875 -4.41060E-03 0.00050 ];
INF_SP7                   (idx, [1:   8]) = [  1.07237E-04 0.02286  2.13487E-05 0.01167  6.52667E-06 0.02139 -6.31155E-04 0.00339 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98856E-01 0.00024  4.26688E-01 0.00067 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99363E-01 0.00037  4.22378E-01 0.00091 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99371E-01 0.00035  4.22054E-01 0.00101 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97844E-01 0.00037  4.35995E-01 0.00106 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11537E+00 0.00024  7.81245E-01 0.00067 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11349E+00 0.00037  7.89247E-01 0.00092 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11346E+00 0.00035  7.89868E-01 0.00101 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11917E+00 0.00037  7.64621E-01 0.00107 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.53922E-03 0.00374  2.09018E-04 0.02075  1.07418E-03 0.00924  1.05647E-03 0.00938  3.01822E-03 0.00557  8.70050E-04 0.01040  3.11277E-04 0.01719 ];
LAMBDA                    (idx, [1:  14]) = [  7.61534E-01 0.00901  1.24906E-02 1.8E-07  3.18193E-02 2.7E-05  1.09398E-01 3.1E-05  3.17101E-01 2.9E-05  1.35370E+00 2.6E-05  8.64339E+00 0.00020 ];

