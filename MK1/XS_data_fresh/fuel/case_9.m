
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
WORKING_DIRECTORY         (idx, [1: 62])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input8' ;
HOSTNAME                  (idx, [1: 12])  = 'n0082.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:33 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  9.89774E-01  1.00273E+00  1.00277E+00  1.00104E+00  9.98081E-01  9.99467E-01  1.00078E+00  1.00091E+00  9.97740E-01  9.99842E-01  9.99385E-01  1.00072E+00  1.00173E+00  1.00243E+00  1.00281E+00  9.96814E-01  9.99642E-01  1.00184E+00  1.00039E+00  1.00111E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.13180E-02 0.00034  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.28682E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.84333E-01 4.9E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.88411E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.59427E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.85019E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.85004E+02 0.00024  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.56472E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.53359E+01 0.00027  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001899 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.78966E+02 ;
RUNNING_TIME              (idx, 1)        =  2.92977E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.31317E-01  1.31317E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  7.99999E-04  7.99999E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.91656E+01  2.91656E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.92974E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.76148 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98414E+01 0.00014 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86373E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4736.87;
MEMSIZE                   (idx, 1)        = 768.16;
XS_MEMSIZE                (idx, 1)        = 458.04;
MAT_MEMSIZE               (idx, 1)        = 173.22;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3968.72;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 146027 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.37014E+15 0.00022  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.56918E-01 0.00062 ];
U235_FISS                 (idx, [1:   4]) = [  7.26953E+18 0.00020  9.98334E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.21360E+16 0.00759  1.66640E-03 0.00758 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71451E+18 0.00061  2.70562E-01 0.00055 ];
U238_CAPT                 (idx, [1:   4]) = [  2.30811E+18 0.00062  3.64190E-01 0.00044 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001899 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79768E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001899 2.01798E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9168604 9.25035E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10535855 1.06296E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 297440 2.99772E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001899 2.01798E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.49594E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77496E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28204E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.33632E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.36184E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.37014E+19 0.00022 ];
TOT_FLUX                  (idx, [1:   2]) = [  7.04581E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.05392E+17 0.00221 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.38238E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.55699E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43745E+00 6.5E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.29554E+00 0.00022  1.28691E+00 0.00022  8.54799E-03 0.00375 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.29562E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.29558E+00 0.00022 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.29562E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.31533E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80665E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80672E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.85174E-07 0.00080 ];
IMP_EALF                  (idx, [1:   2]) = [  2.84850E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.66708E-03 0.00573 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.64086E-03 0.00150 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.12418E-03 0.00284  1.64412E-04 0.01529  8.43597E-04 0.00696  8.22983E-04 0.00716  2.35600E-03 0.00416  6.94924E-04 0.00760  2.42265E-04 0.01266 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.60562E-01 0.00660  1.09605E-02 0.00836  3.18188E-02 2.0E-05  1.09397E-01 2.5E-05  3.17094E-01 2.1E-05  1.35299E+00 0.00050  8.27002E+00 0.00474 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.58307E-03 0.00380  2.14366E-04 0.02090  1.08150E-03 0.00946  1.06086E-03 0.00953  3.02634E-03 0.00552  8.86213E-04 0.01030  3.13793E-04 0.01693 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.64593E-01 0.00899  1.24906E-02 1.9E-07  3.18188E-02 2.7E-05  1.09398E-01 3.4E-05  3.17092E-01 2.7E-05  1.35369E+00 2.7E-05  8.64220E+00 0.00017 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.79483E-04 0.00064  3.79557E-04 0.00064  3.67305E-04 0.00759 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.91589E-04 0.00060  4.91685E-04 0.00061  4.75818E-04 0.00758 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.59423E-03 0.00380  2.13047E-04 0.02065  1.08537E-03 0.00957  1.06874E-03 0.00959  3.03134E-03 0.00566  8.83538E-04 0.01047  3.12183E-04 0.01755 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.60062E-01 0.00931  1.24906E-02 2.3E-07  3.18193E-02 2.7E-05  1.09394E-01 3.0E-05  3.17090E-01 2.8E-05  1.35367E+00 3.1E-05  8.64391E+00 0.00023 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.63691E-04 0.00147  3.63773E-04 0.00147  3.48633E-04 0.01744 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.71121E-04 0.00144  4.71226E-04 0.00144  4.51698E-04 0.01744 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.58843E-03 0.01143  2.24187E-04 0.05909  1.06934E-03 0.02799  1.07617E-03 0.02772  2.98559E-03 0.01659  9.10388E-04 0.03040  3.22755E-04 0.05342 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.80787E-01 0.02792  1.24906E-02 6.7E-07  3.18154E-02 9.0E-05  1.09404E-01 9.2E-05  3.17091E-01 7.6E-05  1.35375E+00 5.5E-05  8.64568E+00 0.00051 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.56901E-03 0.01113  2.25837E-04 0.05720  1.06219E-03 0.02716  1.07002E-03 0.02694  2.98669E-03 0.01624  9.05159E-04 0.02963  3.19115E-04 0.05097 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.79572E-01 0.02695  1.24906E-02 6.7E-07  3.18152E-02 9.0E-05  1.09404E-01 8.9E-05  3.17088E-01 7.2E-05  1.35374E+00 5.7E-05  8.64610E+00 0.00053 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.82021E+01 0.01160 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.72303E-04 0.00036 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.82287E-04 0.00028 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.57207E-03 0.00214 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.76564E+01 0.00216 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08649E-06 0.00021 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58907E-05 8.6E-05  3.58896E-05 8.7E-05  3.60528E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.56513E-04 0.00040  7.56729E-04 0.00040  7.23270E-04 0.00491 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.02134E-01 0.00015  7.01201E-01 0.00015  8.98209E-01 0.00453 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07585E+01 0.00644 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.85004E+02 0.00024  1.78792E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.93057E+04 0.00160  3.79520E+05 0.00071  8.96782E+05 0.00039  1.66362E+06 0.00027  1.87288E+06 0.00020  1.94127E+06 0.00018  1.45876E+06 0.00014  1.14298E+06 0.00018  1.62957E+06 0.00014  1.60390E+06 0.00012  1.75012E+06 0.00010  1.74162E+06 0.00011  1.89914E+06 9.9E-05  1.85606E+06 0.00011  1.86248E+06 9.9E-05  1.63572E+06 0.00010  1.64685E+06 9.9E-05  1.63812E+06 0.00011  1.62921E+06 0.00010  3.22862E+06 8.5E-05  3.17263E+06 8.7E-05  2.32433E+06 0.00012  1.51317E+06 0.00014  1.79341E+06 0.00012  1.71397E+06 0.00014  1.45581E+06 0.00016  2.56510E+06 0.00016  5.47170E+05 0.00026  6.85891E+05 0.00027  6.19776E+05 0.00028  3.65195E+05 0.00033  6.38879E+05 0.00030  4.41908E+05 0.00030  3.87241E+05 0.00040  7.61771E+04 0.00064  7.55685E+04 0.00067  7.80328E+04 0.00064  8.06635E+04 0.00068  8.02003E+04 0.00073  7.96480E+04 0.00071  8.25862E+04 0.00062  7.84663E+04 0.00071  1.50467E+05 0.00053  2.47641E+05 0.00049  3.33981E+05 0.00043  1.05675E+06 0.00033  1.60427E+06 0.00037  2.52600E+06 0.00044  2.07025E+06 0.00053  1.63927E+06 0.00054  1.30324E+06 0.00053  1.49171E+06 0.00055  2.64973E+06 0.00057  3.22931E+06 0.00055  5.32490E+06 0.00055  6.55735E+06 0.00058  7.58476E+06 0.00058  3.95951E+06 0.00058  2.51407E+06 0.00058  1.66256E+06 0.00062  1.40879E+06 0.00061  1.33337E+06 0.00066  1.02544E+06 0.00066  6.76250E+05 0.00079  5.74992E+05 0.00067  5.24544E+05 0.00073  4.34214E+05 0.00079  2.97204E+05 0.00085  1.95063E+05 0.00103  6.16572E+04 0.00138 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.31530E+00 0.00021 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.57614E+21 0.00019  3.46976E+21 0.00055 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38985E-01 1.7E-05  3.87564E-01 3.9E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.44924E-04 0.00037  9.55331E-04 0.00042 ];
INF_ABS                   (idx, [1:   4]) = [  1.17396E-03 0.00032  2.71516E-03 0.00046 ];
INF_FISS                  (idx, [1:   4]) = [  3.29035E-04 0.00040  1.75983E-03 0.00054 ];
INF_NSF                   (idx, [1:   4]) = [  8.03277E-04 0.00040  4.28818E-03 0.00054 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44131E+00 4.0E-06  2.43670E+00 1.9E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.6E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.15842E-07 0.00012  2.08708E-06 4.3E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37811E-01 1.8E-05  3.84849E-01 4.1E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13613E-02 0.00022  1.14171E-02 0.00042 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48770E-03 0.00145 -4.36310E-03 0.00079 ];
INF_SCATT3                (idx, [1:   4]) = [  4.73770E-04 0.00634 -4.00944E-03 0.00087 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.50293E-04 0.01860 -4.65203E-03 0.00057 ];
INF_SCATT5                (idx, [1:   4]) = [  1.14357E-04 0.02036 -2.69769E-03 0.00103 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.36131E-04 0.00645 -4.47600E-03 0.00057 ];
INF_SCATT7                (idx, [1:   4]) = [  1.35080E-04 0.01577 -6.16414E-04 0.00378 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37846E-01 1.8E-05  3.84849E-01 4.1E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13704E-02 0.00022  1.14171E-02 0.00042 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48937E-03 0.00145 -4.36310E-03 0.00079 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.74017E-04 0.00633 -4.00944E-03 0.00087 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.50282E-04 0.01860 -4.65203E-03 0.00057 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.14320E-04 0.02035 -2.69769E-03 0.00103 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.36162E-04 0.00645 -4.47600E-03 0.00057 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.35054E-04 0.01579 -6.16414E-04 0.00378 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01050E-01 3.4E-05  3.74641E-01 4.3E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10724E+00 3.4E-05  8.89740E-01 4.3E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.13952E-03 0.00033  2.71516E-03 0.00046 ];
INF_REMXS                 (idx, [1:   4]) = [  5.64679E-03 0.00014  4.56901E-03 0.00041 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33338E-01 1.7E-05  4.47291E-03 0.00023  1.85371E-03 0.00043  3.82995E-01 4.2E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23416E-02 0.00021 -9.80328E-04 0.00051 -2.08692E-04 0.00155  1.16258E-02 0.00041 ];
INF_S2                    (idx, [1:   8]) = [  2.66836E-03 0.00137 -1.80657E-04 0.00219 -1.17409E-04 0.00220 -4.24570E-03 0.00082 ];
INF_S3                    (idx, [1:   8]) = [  5.21985E-04 0.00568 -4.82146E-05 0.00627 -4.21945E-05 0.00551 -3.96725E-03 0.00087 ];
INF_S4                    (idx, [1:   8]) = [ -1.11857E-04 0.02524 -3.84362E-05 0.00770 -2.71680E-05 0.00668 -4.62486E-03 0.00057 ];
INF_S5                    (idx, [1:   8]) = [  1.17686E-04 0.01961 -3.32966E-06 0.08306 -6.42106E-06 0.02737 -2.69127E-03 0.00104 ];
INF_S6                    (idx, [1:   8]) = [ -3.10657E-04 0.00687 -2.54743E-05 0.01030 -1.83918E-05 0.00851 -4.45761E-03 0.00058 ];
INF_S7                    (idx, [1:   8]) = [  1.13318E-04 0.01866  2.17616E-05 0.01082  8.13065E-06 0.01769 -6.24544E-04 0.00376 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33373E-01 1.7E-05  4.47291E-03 0.00023  1.85371E-03 0.00043  3.82995E-01 4.2E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23507E-02 0.00021 -9.80328E-04 0.00051 -2.08692E-04 0.00155  1.16258E-02 0.00041 ];
INF_SP2                   (idx, [1:   8]) = [  2.67002E-03 0.00137 -1.80657E-04 0.00219 -1.17409E-04 0.00220 -4.24570E-03 0.00082 ];
INF_SP3                   (idx, [1:   8]) = [  5.22231E-04 0.00567 -4.82146E-05 0.00627 -4.21945E-05 0.00551 -3.96725E-03 0.00087 ];
INF_SP4                   (idx, [1:   8]) = [ -1.11846E-04 0.02523 -3.84362E-05 0.00770 -2.71680E-05 0.00668 -4.62486E-03 0.00057 ];
INF_SP5                   (idx, [1:   8]) = [  1.17650E-04 0.01960 -3.32966E-06 0.08306 -6.42106E-06 0.02737 -2.69127E-03 0.00104 ];
INF_SP6                   (idx, [1:   8]) = [ -3.10688E-04 0.00688 -2.54743E-05 0.01030 -1.83918E-05 0.00851 -4.45761E-03 0.00058 ];
INF_SP7                   (idx, [1:   8]) = [  1.13293E-04 0.01867  2.17616E-05 0.01082  8.13065E-06 0.01769 -6.24544E-04 0.00376 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98852E-01 0.00023  4.26340E-01 0.00058 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99434E-01 0.00035  4.21750E-01 0.00093 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99102E-01 0.00034  4.21622E-01 0.00098 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.98031E-01 0.00037  4.36031E-01 0.00084 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11538E+00 0.00023  7.81875E-01 0.00058 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11322E+00 0.00035  7.90425E-01 0.00093 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11446E+00 0.00034  7.90674E-01 0.00098 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11847E+00 0.00037  7.64524E-01 0.00084 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.58307E-03 0.00380  2.14366E-04 0.02090  1.08150E-03 0.00946  1.06086E-03 0.00953  3.02634E-03 0.00552  8.86213E-04 0.01030  3.13793E-04 0.01693 ];
LAMBDA                    (idx, [1:  14]) = [  7.64593E-01 0.00899  1.24906E-02 1.9E-07  3.18188E-02 2.7E-05  1.09398E-01 3.4E-05  3.17092E-01 2.7E-05  1.35369E+00 2.7E-05  8.64220E+00 0.00017 ];

