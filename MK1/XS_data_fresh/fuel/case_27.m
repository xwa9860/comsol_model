
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input26' ;
HOSTNAME                  (idx, [1: 12])  = 'n0054.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:31 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00461E+00  9.94688E-01  9.98080E-01  9.99657E-01  9.98836E-01  1.00471E+00  9.96880E-01  1.00177E+00  1.00334E+00  1.00638E+00  1.00234E+00  9.92569E-01  9.99426E-01  9.95586E-01  9.96044E-01  9.99745E-01  1.00453E+00  9.96973E-01  1.00557E+00  9.98264E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.20899E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.27910E-01 2.5E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.83348E-01 4.9E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.87459E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.50623E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.84952E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.84937E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.58431E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.60168E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002071 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00032 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00032 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.78894E+02 ;
RUNNING_TIME              (idx, 1)        =  2.92690E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.17350E-01  1.17350E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.20000E-03  1.20000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.91504E+01  2.91504E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.92686E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77841 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98480E+01 0.00014 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87254E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4754.48;
MEMSIZE                   (idx, 1)        = 788.10;
XS_MEMSIZE                (idx, 1)        = 471.02;
MAT_MEMSIZE               (idx, 1)        = 180.18;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.38;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 151910 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34861E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.37283E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.27033E+18 0.00020  9.98373E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.18470E+16 0.00757  1.62680E-03 0.00756 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71084E+18 0.00061  2.79314E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.13105E+18 0.00063  3.47885E-01 0.00046 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002071 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79689E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002071 2.01797E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9004019 9.08387E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10704530 1.08001E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 293522 2.95733E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002071 2.01797E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -1.41561E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.3E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.12261E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34047E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34861E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.93474E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.99445E+17 0.00223 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36041E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.51589E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.3E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31616E+00 0.00022  1.30756E+00 0.00021  8.65958E-03 0.00388 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31653E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31625E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31653E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33629E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81099E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81102E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.73084E-07 0.00080 ];
IMP_EALF                  (idx, [1:   2]) = [  2.72879E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.49012E-03 0.00594 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.52304E-03 0.00150 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.04432E-03 0.00288  1.60732E-04 0.01561  8.49356E-04 0.00693  8.08444E-04 0.00717  2.32716E-03 0.00406  6.65774E-04 0.00762  2.32859E-04 0.01276 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.47688E-01 0.00661  1.09043E-02 0.00853  3.18196E-02 1.8E-05  1.09399E-01 2.6E-05  3.17090E-01 2.1E-05  1.35371E+00 1.8E-05  8.22805E+00 0.00502 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.60486E-03 0.00383  2.10381E-04 0.02111  1.11349E-03 0.00922  1.05656E-03 0.00941  3.04385E-03 0.00557  8.79576E-04 0.01035  3.01010E-04 0.01736 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.44117E-01 0.00883  1.24906E-02 1.9E-07  3.18201E-02 2.1E-05  1.09401E-01 3.4E-05  3.17095E-01 2.9E-05  1.35374E+00 2.3E-05  8.64199E+00 0.00016 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.70182E-04 0.00066  3.70312E-04 0.00066  3.51629E-04 0.00729 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.87170E-04 0.00061  4.87341E-04 0.00062  4.62714E-04 0.00728 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.57745E-03 0.00392  2.08324E-04 0.02202  1.09982E-03 0.00952  1.05773E-03 0.00973  3.03990E-03 0.00569  8.71432E-04 0.01073  3.00248E-04 0.01784 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.44110E-01 0.00933  1.24906E-02 3.3E-07  3.18205E-02 2.2E-05  1.09404E-01 4.5E-05  3.17095E-01 3.0E-05  1.35372E+00 2.5E-05  8.64156E+00 0.00017 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.54386E-04 0.00147  3.54529E-04 0.00148  3.33538E-04 0.01738 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.66385E-04 0.00146  4.66573E-04 0.00146  4.38966E-04 0.01740 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.61796E-03 0.01125  2.12066E-04 0.06381  1.11069E-03 0.02806  1.03939E-03 0.02855  3.03272E-03 0.01648  8.90952E-04 0.03121  3.32142E-04 0.05174 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.69817E-01 0.02794  1.24906E-02 7.5E-07  3.18192E-02 6.4E-05  1.09408E-01 0.00011  3.17107E-01 9.1E-05  1.35376E+00 5.3E-05  8.65182E+00 0.00069 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.63110E-03 0.01095  2.07875E-04 0.06154  1.11041E-03 0.02750  1.03343E-03 0.02783  3.04600E-03 0.01596  8.94507E-04 0.03051  3.38873E-04 0.05051 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.75015E-01 0.02730  1.24906E-02 7.4E-07  3.18194E-02 6.3E-05  1.09405E-01 0.00011  3.17109E-01 9.2E-05  1.35375E+00 5.4E-05  8.65156E+00 0.00069 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.87634E+01 0.01139 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.62681E-04 0.00039 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.77302E-04 0.00032 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.62025E-03 0.00212 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.82615E+01 0.00219 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08982E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58626E-05 8.3E-05  3.58620E-05 8.4E-05  3.59414E-05 0.00105 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.48366E-04 0.00040  7.48597E-04 0.00040  7.12925E-04 0.00498 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.11686E-01 0.00015  7.10674E-01 0.00015  9.26418E-01 0.00444 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08370E+01 0.00657 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.84937E+02 0.00023  1.77385E+02 0.00027 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.93470E+04 0.00164  3.79544E+05 0.00075  8.96850E+05 0.00040  1.66418E+06 0.00026  1.87341E+06 0.00017  1.94134E+06 0.00014  1.45893E+06 0.00015  1.14286E+06 0.00019  1.62990E+06 0.00012  1.60407E+06 0.00011  1.75020E+06 9.8E-05  1.74154E+06 0.00012  1.89939E+06 0.00011  1.85564E+06 0.00010  1.86310E+06 9.6E-05  1.63572E+06 0.00011  1.64689E+06 0.00011  1.63837E+06 0.00010  1.62952E+06 0.00011  3.22902E+06 8.0E-05  3.17375E+06 9.1E-05  2.32623E+06 0.00011  1.51616E+06 0.00014  1.79994E+06 0.00013  1.72557E+06 0.00013  1.46711E+06 0.00017  2.59417E+06 0.00016  5.53693E+05 0.00028  6.94478E+05 0.00024  6.26538E+05 0.00025  3.68848E+05 0.00034  6.44560E+05 0.00027  4.45251E+05 0.00032  3.89425E+05 0.00037  7.64426E+04 0.00072  7.57614E+04 0.00069  7.82541E+04 0.00070  8.08401E+04 0.00074  8.03122E+04 0.00067  7.97054E+04 0.00067  8.25698E+04 0.00067  7.82356E+04 0.00071  1.49566E+05 0.00057  2.45559E+05 0.00046  3.29200E+05 0.00038  1.03051E+06 0.00031  1.55191E+06 0.00038  2.45158E+06 0.00044  2.02204E+06 0.00051  1.60841E+06 0.00050  1.28090E+06 0.00055  1.47169E+06 0.00055  2.62232E+06 0.00056  3.20815E+06 0.00055  5.31276E+06 0.00055  6.57161E+06 0.00057  7.63579E+06 0.00059  3.99662E+06 0.00063  2.54049E+06 0.00062  1.68211E+06 0.00063  1.42505E+06 0.00065  1.34959E+06 0.00068  1.03947E+06 0.00069  6.85247E+05 0.00069  5.82257E+05 0.00077  5.32169E+05 0.00080  4.39826E+05 0.00080  3.01091E+05 0.00093  1.98080E+05 0.00092  6.25565E+04 0.00138 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33601E+00 0.00020 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.52475E+21 0.00019  3.41006E+21 0.00057 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38899E-01 1.5E-05  3.87494E-01 4.3E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.04305E-04 0.00040  9.64102E-04 0.00045 ];
INF_ABS                   (idx, [1:   4]) = [  1.13316E-03 0.00035  2.75988E-03 0.00047 ];
INF_FISS                  (idx, [1:   4]) = [  3.28856E-04 0.00045  1.79578E-03 0.00055 ];
INF_NSF                   (idx, [1:   4]) = [  8.02844E-04 0.00045  4.37577E-03 0.00055 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44132E+00 4.2E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.4E-07  2.02270E+02 2.6E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.15749E-07 0.00010  2.09683E-06 4.5E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37766E-01 1.5E-05  3.84734E-01 4.5E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13579E-02 0.00021  1.13599E-02 0.00039 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48010E-03 0.00146 -4.38942E-03 0.00090 ];
INF_SCATT3                (idx, [1:   4]) = [  4.70625E-04 0.00634 -4.02385E-03 0.00083 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.53386E-04 0.01799 -4.65050E-03 0.00060 ];
INF_SCATT5                (idx, [1:   4]) = [  1.15770E-04 0.02089 -2.70718E-03 0.00101 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.31810E-04 0.00702 -4.45427E-03 0.00062 ];
INF_SCATT7                (idx, [1:   4]) = [  1.35501E-04 0.01656 -6.18310E-04 0.00338 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37800E-01 1.5E-05  3.84734E-01 4.5E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13669E-02 0.00021  1.13599E-02 0.00039 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48175E-03 0.00145 -4.38942E-03 0.00090 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.70887E-04 0.00633 -4.02385E-03 0.00083 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.53332E-04 0.01800 -4.65050E-03 0.00060 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.15752E-04 0.02090 -2.70718E-03 0.00101 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.31836E-04 0.00702 -4.45427E-03 0.00062 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.35481E-04 0.01656 -6.18310E-04 0.00338 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00998E-01 3.1E-05  3.74659E-01 4.6E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10743E+00 3.1E-05  8.89698E-01 4.6E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.09879E-03 0.00037  2.75988E-03 0.00047 ];
INF_REMXS                 (idx, [1:   4]) = [  5.50161E-03 0.00015  4.47439E-03 0.00043 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33398E-01 1.5E-05  4.36813E-03 0.00023  1.71408E-03 0.00050  3.83019E-01 4.6E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23270E-02 0.00020 -9.69074E-04 0.00048 -1.85381E-04 0.00180  1.15452E-02 0.00039 ];
INF_S2                    (idx, [1:   8]) = [  2.65460E-03 0.00138 -1.74502E-04 0.00239 -1.10966E-04 0.00233 -4.27846E-03 0.00090 ];
INF_S3                    (idx, [1:   8]) = [  5.16254E-04 0.00577 -4.56289E-05 0.00756 -3.99224E-05 0.00513 -3.98392E-03 0.00084 ];
INF_S4                    (idx, [1:   8]) = [ -1.16688E-04 0.02350 -3.66985E-05 0.00803 -2.49546E-05 0.00681 -4.62554E-03 0.00061 ];
INF_S5                    (idx, [1:   8]) = [  1.18872E-04 0.02037 -3.10184E-06 0.07598 -6.26763E-06 0.02607 -2.70091E-03 0.00101 ];
INF_S6                    (idx, [1:   8]) = [ -3.07414E-04 0.00746 -2.43955E-05 0.01015 -1.73805E-05 0.00757 -4.43689E-03 0.00062 ];
INF_S7                    (idx, [1:   8]) = [  1.14130E-04 0.01950  2.13707E-05 0.00968  7.41204E-06 0.01870 -6.25722E-04 0.00331 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33432E-01 1.5E-05  4.36813E-03 0.00023  1.71408E-03 0.00050  3.83019E-01 4.6E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23359E-02 0.00020 -9.69074E-04 0.00048 -1.85381E-04 0.00180  1.15452E-02 0.00039 ];
INF_SP2                   (idx, [1:   8]) = [  2.65625E-03 0.00137 -1.74502E-04 0.00239 -1.10966E-04 0.00233 -4.27846E-03 0.00090 ];
INF_SP3                   (idx, [1:   8]) = [  5.16516E-04 0.00577 -4.56289E-05 0.00756 -3.99224E-05 0.00513 -3.98392E-03 0.00084 ];
INF_SP4                   (idx, [1:   8]) = [ -1.16634E-04 0.02353 -3.66985E-05 0.00803 -2.49546E-05 0.00681 -4.62554E-03 0.00061 ];
INF_SP5                   (idx, [1:   8]) = [  1.18854E-04 0.02038 -3.10184E-06 0.07598 -6.26763E-06 0.02607 -2.70091E-03 0.00101 ];
INF_SP6                   (idx, [1:   8]) = [ -3.07440E-04 0.00746 -2.43955E-05 0.01015 -1.73805E-05 0.00757 -4.43689E-03 0.00062 ];
INF_SP7                   (idx, [1:   8]) = [  1.14110E-04 0.01950  2.13707E-05 0.00968  7.41204E-06 0.01870 -6.25722E-04 0.00331 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98677E-01 0.00024  4.26090E-01 0.00065 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99091E-01 0.00039  4.21221E-01 0.00095 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99112E-01 0.00038  4.21831E-01 0.00098 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97841E-01 0.00037  4.35595E-01 0.00105 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11604E+00 0.00024  7.82341E-01 0.00065 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11451E+00 0.00039  7.91420E-01 0.00095 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11443E+00 0.00038  7.90280E-01 0.00097 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11918E+00 0.00037  7.65322E-01 0.00106 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.60486E-03 0.00383  2.10381E-04 0.02111  1.11349E-03 0.00922  1.05656E-03 0.00941  3.04385E-03 0.00557  8.79576E-04 0.01035  3.01010E-04 0.01736 ];
LAMBDA                    (idx, [1:  14]) = [  7.44117E-01 0.00883  1.24906E-02 1.9E-07  3.18201E-02 2.1E-05  1.09401E-01 3.4E-05  3.17095E-01 2.9E-05  1.35374E+00 2.3E-05  8.64199E+00 0.00016 ];

