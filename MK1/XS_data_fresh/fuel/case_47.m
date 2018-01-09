
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input46' ;
HOSTNAME                  (idx, [1: 12])  = 'n0122.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1060.0 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00163E+00  9.99579E-01  1.00104E+00  9.86850E-01  9.99140E-01  1.00062E+00  1.00125E+00  9.99830E-01  9.97176E-01  1.00085E+00  1.00593E+00  9.95874E-01  1.00488E+00  9.98280E-01  1.00179E+00  9.95072E-01  1.00370E+00  1.00251E+00  1.00446E+00  9.99539E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.81048E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.21895E-01 2.8E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.80990E-01 4.6E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85325E-01 4.6E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.94499E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.83257E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.83242E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.58995E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  5.02211E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001846 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.86994E+02 ;
RUNNING_TIME              (idx, 1)        =  2.96673E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.11667E-01  1.11667E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.31667E-03  1.31667E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.95543E+01  2.95543E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.96670E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.78589 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98500E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87731E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.80 ;
ALLOC_MEMSIZE             (idx, 1)        = 4798.16;
MEMSIZE                   (idx, 1)        = 831.64;
XS_MEMSIZE                (idx, 1)        = 499.33;
MAT_MEMSIZE               (idx, 1)        = 195.41;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.52;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 164792 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.36411E+15 0.00022  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.54123E-01 0.00062 ];
U235_FISS                 (idx, [1:   4]) = [  7.27117E+18 0.00020  9.98348E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.20337E+16 0.00774  1.65206E-03 0.00773 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70671E+18 0.00060  2.71893E-01 0.00055 ];
U238_CAPT                 (idx, [1:   4]) = [  2.28145E+18 0.00062  3.63409E-01 0.00044 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001846 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80098E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001846 2.01801E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9122737 9.20364E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10583821 1.06789E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 295288 2.97604E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001846 2.01801E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -1.78814E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.5E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.27568E+18 0.00033 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.35577E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.36411E+19 0.00022 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.95013E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.03005E+17 0.00216 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.37607E+19 0.00016 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.52151E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.6E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.5E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.30146E+00 0.00022  1.29293E+00 0.00022  8.52736E-03 0.00378 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.30153E+00 0.00016 ];
COL_KEFF                  (idx, [1:   2]) = [  1.30130E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.30153E+00 0.00016 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32120E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81350E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81358E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.66304E-07 0.00081 ];
IMP_EALF                  (idx, [1:   2]) = [  2.65966E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.64322E-03 0.00589 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.61245E-03 0.00151 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.10173E-03 0.00282  1.63719E-04 0.01552  8.48025E-04 0.00683  8.20632E-04 0.00697  2.34943E-03 0.00422  6.77411E-04 0.00755  2.42517E-04 0.01287 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.59660E-01 0.00666  1.09417E-02 0.00841  3.18200E-02 1.6E-05  1.09399E-01 2.6E-05  3.17101E-01 2.1E-05  1.35304E+00 0.00050  8.30162E+00 0.00454 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.58819E-03 0.00371  2.12711E-04 0.02109  1.09258E-03 0.00932  1.06796E-03 0.00942  3.03381E-03 0.00555  8.67776E-04 0.01012  3.13347E-04 0.01760 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.58067E-01 0.00910  1.24906E-02 1.4E-07  3.18198E-02 2.3E-05  1.09399E-01 3.7E-05  3.17119E-01 3.3E-05  1.35374E+00 2.3E-05  8.64330E+00 0.00019 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.75365E-04 0.00066  3.75453E-04 0.00066  3.61802E-04 0.00742 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.88470E-04 0.00061  4.88585E-04 0.00061  4.70840E-04 0.00742 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.55125E-03 0.00384  2.11021E-04 0.02175  1.08389E-03 0.00943  1.05596E-03 0.00959  3.03194E-03 0.00567  8.61100E-04 0.01039  3.07351E-04 0.01792 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.53945E-01 0.00937  1.24906E-02 2.2E-07  3.18194E-02 2.4E-05  1.09396E-01 3.5E-05  3.17109E-01 3.2E-05  1.35376E+00 2.3E-05  8.64201E+00 0.00019 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.60208E-04 0.00148  3.60340E-04 0.00149  3.46759E-04 0.01848 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.68744E-04 0.00146  4.68916E-04 0.00146  4.51253E-04 0.01848 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.43188E-03 0.01108  2.04160E-04 0.06206  1.04866E-03 0.02805  1.02433E-03 0.02850  2.95610E-03 0.01659  9.01569E-04 0.03069  2.97069E-04 0.05363 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.65109E-01 0.02848  1.24906E-02 7.4E-09  3.18200E-02 6.6E-05  1.09415E-01 0.00012  3.17111E-01 8.9E-05  1.35383E+00 3.9E-05  8.64245E+00 0.00043 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.41065E-03 0.01086  2.05415E-04 0.06028  1.05161E-03 0.02711  1.01366E-03 0.02798  2.95479E-03 0.01614  8.91364E-04 0.03001  2.93805E-04 0.05181 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.61347E-01 0.02740  1.24906E-02 7.4E-09  3.18200E-02 6.6E-05  1.09416E-01 0.00012  3.17112E-01 8.9E-05  1.35383E+00 3.9E-05  8.64264E+00 0.00043 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.79221E+01 0.01118 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.68358E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.79354E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.52933E-03 0.00221 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.77308E+01 0.00224 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08866E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.57874E-05 8.7E-05  3.57865E-05 8.7E-05  3.59324E-05 0.00106 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.49414E-04 0.00040  7.49639E-04 0.00040  7.14336E-04 0.00501 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.03434E-01 0.00015  7.02491E-01 0.00015  9.01654E-01 0.00438 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07757E+01 0.00671 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.83242E+02 0.00023  1.76776E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.93819E+04 0.00187  3.78989E+05 0.00073  8.96503E+05 0.00043  1.66352E+06 0.00027  1.87344E+06 0.00020  1.94204E+06 0.00015  1.45914E+06 0.00015  1.14357E+06 0.00017  1.62990E+06 0.00014  1.60446E+06 0.00011  1.75033E+06 0.00010  1.74171E+06 9.5E-05  1.89928E+06 0.00011  1.85563E+06 0.00010  1.86294E+06 9.8E-05  1.63580E+06 0.00011  1.64667E+06 0.00011  1.63850E+06 0.00011  1.62928E+06 0.00011  3.22810E+06 0.00010  3.17308E+06 9.3E-05  2.32430E+06 9.7E-05  1.51353E+06 0.00012  1.79223E+06 0.00012  1.71470E+06 0.00013  1.45527E+06 0.00016  2.56331E+06 0.00015  5.45880E+05 0.00026  6.84656E+05 0.00024  6.17065E+05 0.00028  3.63111E+05 0.00033  6.33856E+05 0.00028  4.37570E+05 0.00036  3.82025E+05 0.00035  7.48804E+04 0.00074  7.41558E+04 0.00067  7.65275E+04 0.00060  7.90272E+04 0.00067  7.85013E+04 0.00065  7.79004E+04 0.00070  8.05153E+04 0.00069  7.64081E+04 0.00070  1.45700E+05 0.00060  2.38829E+05 0.00043  3.19046E+05 0.00042  9.90223E+05 0.00035  1.48143E+06 0.00039  2.34791E+06 0.00048  1.94652E+06 0.00055  1.55465E+06 0.00057  1.24293E+06 0.00057  1.43062E+06 0.00057  2.55728E+06 0.00060  3.14087E+06 0.00059  5.22500E+06 0.00058  6.49721E+06 0.00056  7.58508E+06 0.00057  3.98357E+06 0.00059  2.53632E+06 0.00062  1.68019E+06 0.00061  1.42546E+06 0.00059  1.35026E+06 0.00062  1.03977E+06 0.00066  6.85504E+05 0.00073  5.83395E+05 0.00074  5.32175E+05 0.00068  4.39932E+05 0.00085  3.02340E+05 0.00074  1.98335E+05 0.00090  6.26007E+04 0.00125 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32096E+00 0.00024 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.55156E+21 0.00023  3.39864E+21 0.00062 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38960E-01 1.6E-05  3.87712E-01 4.3E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.41085E-04 0.00038  9.67598E-04 0.00045 ];
INF_ABS                   (idx, [1:   4]) = [  1.16690E-03 0.00034  2.77001E-03 0.00051 ];
INF_FISS                  (idx, [1:   4]) = [  3.25812E-04 0.00046  1.80241E-03 0.00060 ];
INF_NSF                   (idx, [1:   4]) = [  7.95431E-04 0.00046  4.39194E-03 0.00060 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44138E+00 4.2E-06  2.43670E+00 1.9E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.5E-07  2.02270E+02 1.9E-09 ];
INF_INVV                  (idx, [1:   4]) = [  1.14156E-07 0.00011  2.10719E-06 4.2E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37793E-01 1.6E-05  3.84941E-01 4.5E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13719E-02 0.00022  1.12890E-02 0.00044 ];
INF_SCATT2                (idx, [1:   4]) = [  2.49304E-03 0.00135 -4.43415E-03 0.00087 ];
INF_SCATT3                (idx, [1:   4]) = [  4.70225E-04 0.00685 -4.06321E-03 0.00093 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.49980E-04 0.02001 -4.65333E-03 0.00062 ];
INF_SCATT5                (idx, [1:   4]) = [  1.13659E-04 0.02081 -2.72199E-03 0.00093 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.23147E-04 0.00716 -4.43185E-03 0.00054 ];
INF_SCATT7                (idx, [1:   4]) = [  1.27449E-04 0.01741 -6.27901E-04 0.00368 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37827E-01 1.6E-05  3.84941E-01 4.5E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13810E-02 0.00022  1.12890E-02 0.00044 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.49474E-03 0.00135 -4.43415E-03 0.00087 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.70459E-04 0.00685 -4.06321E-03 0.00093 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.49965E-04 0.02000 -4.65333E-03 0.00062 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.13634E-04 0.02079 -2.72199E-03 0.00093 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.23180E-04 0.00717 -4.43185E-03 0.00054 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.27403E-04 0.01746 -6.27901E-04 0.00368 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00980E-01 3.4E-05  3.74978E-01 4.4E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10749E+00 3.4E-05  8.88940E-01 4.4E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.13231E-03 0.00036  2.77001E-03 0.00051 ];
INF_REMXS                 (idx, [1:   4]) = [  5.39165E-03 0.00015  4.37323E-03 0.00045 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33568E-01 1.5E-05  4.22446E-03 0.00024  1.60274E-03 0.00053  3.83339E-01 4.6E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23190E-02 0.00022 -9.47127E-04 0.00053 -1.70286E-04 0.00195  1.14593E-02 0.00043 ];
INF_S2                    (idx, [1:   8]) = [  2.65959E-03 0.00126 -1.66550E-04 0.00255 -1.04916E-04 0.00226 -4.32924E-03 0.00089 ];
INF_S3                    (idx, [1:   8]) = [  5.13483E-04 0.00634 -4.32574E-05 0.00671 -3.75138E-05 0.00528 -4.02570E-03 0.00094 ];
INF_S4                    (idx, [1:   8]) = [ -1.14605E-04 0.02624 -3.53752E-05 0.00835 -2.35258E-05 0.00822 -4.62980E-03 0.00062 ];
INF_S5                    (idx, [1:   8]) = [  1.16130E-04 0.02034 -2.47164E-06 0.11420 -6.11393E-06 0.02769 -2.71588E-03 0.00093 ];
INF_S6                    (idx, [1:   8]) = [ -2.99536E-04 0.00764 -2.36111E-05 0.00832 -1.62410E-05 0.00767 -4.41561E-03 0.00054 ];
INF_S7                    (idx, [1:   8]) = [  1.06543E-04 0.02091  2.09061E-05 0.01094  7.06201E-06 0.01805 -6.34963E-04 0.00365 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33603E-01 1.5E-05  4.22446E-03 0.00024  1.60274E-03 0.00053  3.83339E-01 4.6E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23281E-02 0.00022 -9.47127E-04 0.00053 -1.70286E-04 0.00195  1.14593E-02 0.00043 ];
INF_SP2                   (idx, [1:   8]) = [  2.66129E-03 0.00125 -1.66550E-04 0.00255 -1.04916E-04 0.00226 -4.32924E-03 0.00089 ];
INF_SP3                   (idx, [1:   8]) = [  5.13716E-04 0.00634 -4.32574E-05 0.00671 -3.75138E-05 0.00528 -4.02570E-03 0.00094 ];
INF_SP4                   (idx, [1:   8]) = [ -1.14590E-04 0.02623 -3.53752E-05 0.00835 -2.35258E-05 0.00822 -4.62980E-03 0.00062 ];
INF_SP5                   (idx, [1:   8]) = [  1.16106E-04 0.02033 -2.47164E-06 0.11420 -6.11393E-06 0.02769 -2.71588E-03 0.00093 ];
INF_SP6                   (idx, [1:   8]) = [ -2.99569E-04 0.00766 -2.36111E-05 0.00832 -1.62410E-05 0.00767 -4.41561E-03 0.00054 ];
INF_SP7                   (idx, [1:   8]) = [  1.06497E-04 0.02096  2.09061E-05 0.01094  7.06201E-06 0.01805 -6.34963E-04 0.00365 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98850E-01 0.00023  4.26822E-01 0.00061 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99385E-01 0.00037  4.21543E-01 0.00096 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99190E-01 0.00037  4.22647E-01 0.00085 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97985E-01 0.00034  4.36668E-01 0.00098 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11539E+00 0.00023  7.80995E-01 0.00061 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11341E+00 0.00037  7.90818E-01 0.00095 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11413E+00 0.00037  7.88736E-01 0.00085 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11864E+00 0.00034  7.63431E-01 0.00099 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.58819E-03 0.00371  2.12711E-04 0.02109  1.09258E-03 0.00932  1.06796E-03 0.00942  3.03381E-03 0.00555  8.67776E-04 0.01012  3.13347E-04 0.01760 ];
LAMBDA                    (idx, [1:  14]) = [  7.58067E-01 0.00910  1.24906E-02 1.4E-07  3.18198E-02 2.3E-05  1.09399E-01 3.7E-05  3.17119E-01 3.3E-05  1.35374E+00 2.3E-05  8.64330E+00 0.00019 ];

