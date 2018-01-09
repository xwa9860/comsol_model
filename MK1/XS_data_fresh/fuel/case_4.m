
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
WORKING_DIRECTORY         (idx, [1: 62])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input3' ;
HOSTNAME                  (idx, [1: 12])  = 'n0115.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1047.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:12 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:48:02 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00046E+00  9.96516E-01  1.00207E+00  9.94257E-01  1.00809E+00  1.00697E+00  1.00249E+00  9.97029E-01  9.94602E-01  1.00266E+00  1.00144E+00  1.00600E+00  9.96198E-01  1.00348E+00  1.00955E+00  1.00079E+00  9.93829E-01  9.89647E-01  9.92702E-01  1.00121E+00  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 71])  = '/global/home/groups/ac_nuclear/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 4.7E-10  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  6.98732E-02 0.00034  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.30127E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.82104E-01 4.9E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.86209E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.42158E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.86326E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.86311E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.64668E+02 0.00030  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.49107E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001807 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00032 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00032 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.92548E+02 ;
RUNNING_TIME              (idx, 1)        =  3.28313E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  3.06947E+00  3.06947E+00 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.43333E-03  1.43333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.97604E+01  2.97604E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  3.28310E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 18.04825 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98011E+01 0.00012 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  8.96517E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.80 ;
ALLOC_MEMSIZE             (idx, 1)        = 4799.86;
MEMSIZE                   (idx, 1)        = 833.54;
XS_MEMSIZE                (idx, 1)        = 500.55;
MAT_MEMSIZE               (idx, 1)        = 196.09;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.32;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 165368 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.36638E+15 0.00022  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.51975E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.26823E+18 0.00021  9.98334E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.21291E+16 0.00739  1.66568E-03 0.00737 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71615E+18 0.00061  2.72352E-01 0.00055 ];
U238_CAPT                 (idx, [1:   4]) = [  2.26379E+18 0.00063  3.59219E-01 0.00046 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001807 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79534E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001807 2.01795E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9142247 9.22357E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10562916 1.06570E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 296644 2.99010E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001807 2.01795E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.23517E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.30320E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.35852E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.36638E+19 0.00022 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.07482E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.04305E+17 0.00222 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.37895E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.56799E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43745E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.29887E+00 0.00022  1.29025E+00 0.00022  8.53707E-03 0.00382 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.29883E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.29914E+00 0.00022 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.29883E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.31854E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80392E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80383E+01 2.5E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.93080E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.93218E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.66859E-03 0.00573 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.64027E-03 0.00150 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.09725E-03 0.00285  1.64943E-04 0.01561  8.48312E-04 0.00685  8.24502E-04 0.00685  2.34332E-03 0.00406  6.77079E-04 0.00783  2.39097E-04 0.01287 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.54377E-01 0.00671  1.10229E-02 0.00816  3.18186E-02 2.1E-05  1.09400E-01 2.6E-05  3.17097E-01 2.2E-05  1.35373E+00 1.8E-05  8.27880E+00 0.00472 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.58077E-03 0.00376  2.12733E-04 0.02075  1.10028E-03 0.00909  1.06361E-03 0.00930  3.02216E-03 0.00552  8.75412E-04 0.01030  3.06578E-04 0.01746 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.53616E-01 0.00911  1.24906E-02 1.9E-07  3.18186E-02 2.9E-05  1.09402E-01 3.7E-05  3.17089E-01 2.7E-05  1.35371E+00 2.7E-05  8.64614E+00 0.00023 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.78912E-04 0.00066  3.78999E-04 0.00066  3.65697E-04 0.00760 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.92103E-04 0.00061  4.92217E-04 0.00062  4.74893E-04 0.00760 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.56765E-03 0.00389  2.14144E-04 0.02123  1.10042E-03 0.00937  1.05498E-03 0.00961  3.02348E-03 0.00564  8.74112E-04 0.01086  3.00512E-04 0.01792 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.46613E-01 0.00934  1.24906E-02 1.5E-07  3.18192E-02 2.7E-05  1.09401E-01 3.8E-05  3.17091E-01 2.9E-05  1.35372E+00 2.8E-05  8.64756E+00 0.00030 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.62492E-04 0.00148  3.62581E-04 0.00148  3.50878E-04 0.01891 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.70790E-04 0.00147  4.70906E-04 0.00147  4.55765E-04 0.01890 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.67157E-03 0.01142  2.20273E-04 0.05901  1.13958E-03 0.02741  1.07291E-03 0.02808  3.09114E-03 0.01665  8.39270E-04 0.03328  3.08396E-04 0.05160 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.42375E-01 0.02750  1.24906E-02 7.2E-07  3.18190E-02 6.9E-05  1.09405E-01 0.00010  3.17070E-01 6.9E-05  1.35375E+00 5.7E-05  8.64657E+00 0.00059 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.64612E-03 0.01111  2.19916E-04 0.05812  1.12059E-03 0.02679  1.07555E-03 0.02728  3.08533E-03 0.01624  8.39121E-04 0.03241  3.05625E-04 0.05011 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.41718E-01 0.02671  1.24906E-02 7.2E-07  3.18190E-02 6.7E-05  1.09408E-01 0.00011  3.17072E-01 7.1E-05  1.35375E+00 5.7E-05  8.64651E+00 0.00058 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.84905E+01 0.01152 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.71340E-04 0.00040 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.82270E-04 0.00032 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.61295E-03 0.00210 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.78116E+01 0.00211 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08663E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59614E-05 8.6E-05  3.59603E-05 8.6E-05  3.61117E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.59169E-04 0.00042  7.59362E-04 0.00042  7.28585E-04 0.00488 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.04669E-01 0.00015  7.03711E-01 0.00016  9.06595E-01 0.00443 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08527E+01 0.00661 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.86311E+02 0.00024  1.79732E+02 0.00027 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.95419E+04 0.00156  3.79743E+05 0.00070  8.96635E+05 0.00038  1.66321E+06 0.00028  1.87298E+06 0.00019  1.94136E+06 0.00015  1.45879E+06 0.00016  1.14311E+06 0.00016  1.62983E+06 0.00014  1.60455E+06 0.00011  1.75038E+06 0.00011  1.74172E+06 9.7E-05  1.89940E+06 9.5E-05  1.85575E+06 0.00011  1.86274E+06 0.00010  1.63588E+06 0.00011  1.64660E+06 0.00010  1.63811E+06 0.00012  1.62893E+06 0.00011  3.22839E+06 8.5E-05  3.17348E+06 9.0E-05  2.32530E+06 0.00010  1.51508E+06 0.00013  1.79596E+06 0.00013  1.71790E+06 0.00013  1.45963E+06 0.00016  2.57563E+06 0.00015  5.50972E+05 0.00025  6.90856E+05 0.00024  6.24123E+05 0.00029  3.67920E+05 0.00036  6.44892E+05 0.00027  4.46701E+05 0.00030  3.92944E+05 0.00035  7.74828E+04 0.00069  7.69108E+04 0.00069  7.94990E+04 0.00068  8.22223E+04 0.00062  8.20376E+04 0.00066  8.14932E+04 0.00063  8.46231E+04 0.00063  8.05521E+04 0.00063  1.54523E+05 0.00061  2.55434E+05 0.00046  3.46633E+05 0.00043  1.10666E+06 0.00032  1.68375E+06 0.00035  2.63057E+06 0.00046  2.13812E+06 0.00050  1.68349E+06 0.00054  1.33262E+06 0.00056  1.52432E+06 0.00060  2.69758E+06 0.00059  3.27709E+06 0.00058  5.38252E+06 0.00060  6.60043E+06 0.00062  7.60856E+06 0.00064  3.96267E+06 0.00065  2.51251E+06 0.00065  1.66051E+06 0.00070  1.40634E+06 0.00069  1.33014E+06 0.00071  1.02357E+06 0.00072  6.74441E+05 0.00083  5.72985E+05 0.00077  5.22601E+05 0.00085  4.33109E+05 0.00088  2.96262E+05 0.00086  1.94435E+05 0.00108  6.11963E+04 0.00139 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.31886E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.57630E+21 0.00021  3.49861E+21 0.00063 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38984E-01 1.7E-05  3.87499E-01 4.4E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.33089E-04 0.00035  9.50051E-04 0.00045 ];
INF_ABS                   (idx, [1:   4]) = [  1.16505E-03 0.00032  2.69238E-03 0.00052 ];
INF_FISS                  (idx, [1:   4]) = [  3.31962E-04 0.00047  1.74233E-03 0.00062 ];
INF_NSF                   (idx, [1:   4]) = [  8.10412E-04 0.00047  4.24554E-03 0.00062 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44128E+00 3.9E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02318E+02 3.2E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.17322E-07 0.00011  2.07766E-06 4.8E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37819E-01 1.7E-05  3.84807E-01 4.7E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13541E-02 0.00023  1.14689E-02 0.00042 ];
INF_SCATT2                (idx, [1:   4]) = [  2.47683E-03 0.00153 -4.33498E-03 0.00088 ];
INF_SCATT3                (idx, [1:   4]) = [  4.68605E-04 0.00647 -3.99008E-03 0.00085 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.57738E-04 0.01786 -4.65074E-03 0.00059 ];
INF_SCATT5                (idx, [1:   4]) = [  1.14953E-04 0.02246 -2.68573E-03 0.00097 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.39163E-04 0.00641 -4.48818E-03 0.00052 ];
INF_SCATT7                (idx, [1:   4]) = [  1.36057E-04 0.01410 -6.09434E-04 0.00366 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37853E-01 1.7E-05  3.84807E-01 4.7E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13632E-02 0.00023  1.14689E-02 0.00042 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.47845E-03 0.00153 -4.33498E-03 0.00088 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.68844E-04 0.00648 -3.99008E-03 0.00085 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.57686E-04 0.01785 -4.65074E-03 0.00059 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.14911E-04 0.02247 -2.68573E-03 0.00097 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.39202E-04 0.00641 -4.48818E-03 0.00052 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.36020E-04 0.01409 -6.09434E-04 0.00366 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01097E-01 3.4E-05  3.74495E-01 4.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10706E+00 3.4E-05  8.90087E-01 4.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.13076E-03 0.00033  2.69238E-03 0.00052 ];
INF_REMXS                 (idx, [1:   4]) = [  5.81571E-03 0.00015  4.71375E-03 0.00049 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33168E-01 1.6E-05  4.65112E-03 0.00022  2.02194E-03 0.00048  3.82785E-01 4.8E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23627E-02 0.00022 -1.00865E-03 0.00052 -2.38546E-04 0.00149  1.17075E-02 0.00041 ];
INF_S2                    (idx, [1:   8]) = [  2.66761E-03 0.00140 -1.90783E-04 0.00222 -1.25710E-04 0.00228 -4.20927E-03 0.00091 ];
INF_S3                    (idx, [1:   8]) = [  5.19112E-04 0.00598 -5.05073E-05 0.00698 -4.44106E-05 0.00568 -3.94567E-03 0.00085 ];
INF_S4                    (idx, [1:   8]) = [ -1.17709E-04 0.02358 -4.00293E-05 0.00809 -2.90334E-05 0.00655 -4.62171E-03 0.00059 ];
INF_S5                    (idx, [1:   8]) = [  1.18904E-04 0.02171 -3.95128E-06 0.06776 -6.63058E-06 0.02668 -2.67910E-03 0.00097 ];
INF_S6                    (idx, [1:   8]) = [ -3.12614E-04 0.00696 -2.65497E-05 0.00887 -1.93518E-05 0.00862 -4.46883E-03 0.00052 ];
INF_S7                    (idx, [1:   8]) = [  1.13821E-04 0.01713  2.22352E-05 0.01070  9.06436E-06 0.01538 -6.18499E-04 0.00361 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33202E-01 1.6E-05  4.65112E-03 0.00022  2.02194E-03 0.00048  3.82785E-01 4.8E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23718E-02 0.00022 -1.00865E-03 0.00052 -2.38546E-04 0.00149  1.17075E-02 0.00041 ];
INF_SP2                   (idx, [1:   8]) = [  2.66923E-03 0.00140 -1.90783E-04 0.00222 -1.25710E-04 0.00228 -4.20927E-03 0.00091 ];
INF_SP3                   (idx, [1:   8]) = [  5.19351E-04 0.00599 -5.05073E-05 0.00698 -4.44106E-05 0.00568 -3.94567E-03 0.00085 ];
INF_SP4                   (idx, [1:   8]) = [ -1.17657E-04 0.02358 -4.00293E-05 0.00809 -2.90334E-05 0.00655 -4.62171E-03 0.00059 ];
INF_SP5                   (idx, [1:   8]) = [  1.18862E-04 0.02172 -3.95128E-06 0.06776 -6.63058E-06 0.02668 -2.67910E-03 0.00097 ];
INF_SP6                   (idx, [1:   8]) = [ -3.12652E-04 0.00697 -2.65497E-05 0.00887 -1.93518E-05 0.00862 -4.46883E-03 0.00052 ];
INF_SP7                   (idx, [1:   8]) = [  1.13785E-04 0.01712  2.22352E-05 0.01070  9.06436E-06 0.01538 -6.18499E-04 0.00361 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98888E-01 0.00025  4.25594E-01 0.00059 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99399E-01 0.00040  4.21055E-01 0.00089 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99293E-01 0.00037  4.20687E-01 0.00094 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97982E-01 0.00039  4.35441E-01 0.00102 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11525E+00 0.00025  7.83246E-01 0.00059 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11336E+00 0.00040  7.91725E-01 0.00089 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11375E+00 0.00037  7.92425E-01 0.00094 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11865E+00 0.00039  7.65587E-01 0.00102 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.58077E-03 0.00376  2.12733E-04 0.02075  1.10028E-03 0.00909  1.06361E-03 0.00930  3.02216E-03 0.00552  8.75412E-04 0.01030  3.06578E-04 0.01746 ];
LAMBDA                    (idx, [1:  14]) = [  7.53616E-01 0.00911  1.24906E-02 1.9E-07  3.18186E-02 2.9E-05  1.09402E-01 3.7E-05  3.17089E-01 2.7E-05  1.35371E+00 2.7E-05  8.64614E+00 0.00023 ];

