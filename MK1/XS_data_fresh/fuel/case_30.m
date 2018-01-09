
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input29' ;
HOSTNAME                  (idx, [1: 12])  = 'n0057.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:35 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00402E+00  1.00261E+00  9.95561E-01  1.00084E+00  9.98065E-01  1.00231E+00  1.00488E+00  9.94221E-01  1.00124E+00  1.00223E+00  9.99292E-01  9.91713E-01  9.98797E-01  9.96950E-01  1.00028E+00  1.00557E+00  9.99610E-01  1.00506E+00  9.99359E-01  9.97381E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.12784E-02 0.00033  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.28722E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81796E-01 4.6E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85881E-01 4.6E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.46545E+00 0.00033  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.85120E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.85105E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.62400E+02 0.00028  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.57394E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002062 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00010E+04 0.00030 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00010E+04 0.00030 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.80126E+02 ;
RUNNING_TIME              (idx, 1)        =  2.93387E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.27183E-01  1.27183E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.30000E-03  1.30000E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.92102E+01  2.92102E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.93382E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77342 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98472E+01 0.00014 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.86869E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4800.30;
MEMSIZE                   (idx, 1)        = 834.03;
XS_MEMSIZE                (idx, 1)        = 500.88;
MAT_MEMSIZE               (idx, 1)        = 196.26;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3966.26;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 165510 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34419E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.33546E-01 0.00063 ];
U235_FISS                 (idx, [1:   4]) = [  7.26900E+18 0.00020  9.98365E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.19044E+16 0.00753  1.63492E-03 0.00752 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70939E+18 0.00061  2.80951E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.09682E+18 0.00063  3.44596E-01 0.00046 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002062 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80094E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002062 2.01801E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8973461 9.05298E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10737491 1.08337E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 291110 2.93423E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002062 2.01801E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -1.37836E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.2E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.08221E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.33643E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34419E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.91867E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.97230E+17 0.00218 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35615E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.50996E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.6E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.32027E+00 0.00022  1.31163E+00 0.00021  8.69630E-03 0.00380 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.32066E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.32058E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.32066E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.34032E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81124E+01 4.4E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81126E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.72400E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.72200E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.53426E-03 0.00582 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.51232E-03 0.00154 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.03408E-03 0.00285  1.62165E-04 0.01572  8.36920E-04 0.00698  8.06030E-04 0.00703  2.30989E-03 0.00408  6.84129E-04 0.00768  2.34942E-04 0.01284 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.55744E-01 0.00653  1.09542E-02 0.00838  3.18190E-02 2.1E-05  1.09394E-01 2.3E-05  3.17099E-01 2.1E-05  1.35301E+00 0.00050  8.19230E+00 0.00527 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.58889E-03 0.00374  2.11083E-04 0.02095  1.09269E-03 0.00908  1.06173E-03 0.00922  3.01235E-03 0.00546  9.00679E-04 0.01010  3.10364E-04 0.01742 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.59198E-01 0.00883  1.24906E-02 2.6E-07  3.18194E-02 2.5E-05  1.09393E-01 2.8E-05  3.17100E-01 2.8E-05  1.35364E+00 2.8E-05  8.64948E+00 0.00030 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.68732E-04 0.00065  3.68837E-04 0.00065  3.53135E-04 0.00738 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.86782E-04 0.00061  4.86921E-04 0.00062  4.66182E-04 0.00737 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.58057E-03 0.00386  2.11234E-04 0.02155  1.08956E-03 0.00950  1.06230E-03 0.00970  3.01634E-03 0.00554  8.92111E-04 0.01038  3.09027E-04 0.01767 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.56741E-01 0.00908  1.24906E-02 3.5E-07  3.18184E-02 3.6E-05  1.09392E-01 3.1E-05  3.17104E-01 3.0E-05  1.35367E+00 3.0E-05  8.64893E+00 0.00033 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.54812E-04 0.00145  3.54876E-04 0.00146  3.44830E-04 0.01796 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.68405E-04 0.00144  4.68490E-04 0.00144  4.55231E-04 0.01795 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.58126E-03 0.01132  2.02660E-04 0.06307  1.07311E-03 0.02771  1.10663E-03 0.02742  3.01136E-03 0.01697  8.96403E-04 0.03180  2.91098E-04 0.05157 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.37199E-01 0.02663  1.24906E-02 1.1E-06  3.18190E-02 6.7E-05  1.09394E-01 7.3E-05  3.17127E-01 0.00010  1.35366E+00 6.7E-05  8.64404E+00 0.00049 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.57223E-03 0.01104  2.00715E-04 0.06111  1.07858E-03 0.02699  1.09969E-03 0.02680  3.00488E-03 0.01672  8.97921E-04 0.03082  2.90441E-04 0.05004 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.34874E-01 0.02582  1.24906E-02 1.1E-06  3.18193E-02 6.6E-05  1.09394E-01 7.4E-05  3.17129E-01 0.00010  1.35366E+00 6.6E-05  8.64467E+00 0.00049 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.86354E+01 0.01148 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.61846E-04 0.00038 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.77688E-04 0.00030 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.58913E-03 0.00218 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.82119E+01 0.00217 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.09018E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.58693E-05 8.7E-05  3.58684E-05 8.7E-05  3.60135E-05 0.00107 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.47220E-04 0.00040  7.47396E-04 0.00040  7.19068E-04 0.00487 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.13659E-01 0.00015  7.12652E-01 0.00015  9.28178E-01 0.00443 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08670E+01 0.00679 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.85105E+02 0.00023  1.77302E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.94869E+04 0.00158  3.79301E+05 0.00072  8.96735E+05 0.00042  1.66386E+06 0.00024  1.87348E+06 0.00021  1.94191E+06 0.00014  1.45907E+06 0.00015  1.14339E+06 0.00020  1.62927E+06 0.00013  1.60463E+06 0.00012  1.75091E+06 9.9E-05  1.74211E+06 0.00010  1.89927E+06 0.00011  1.85609E+06 0.00011  1.86313E+06 9.3E-05  1.63623E+06 0.00011  1.64703E+06 9.8E-05  1.63844E+06 0.00011  1.62955E+06 0.00012  3.22860E+06 9.2E-05  3.17475E+06 0.00011  2.32721E+06 0.00011  1.51709E+06 0.00014  1.80153E+06 0.00012  1.72793E+06 0.00014  1.46923E+06 0.00016  2.60055E+06 0.00014  5.55625E+05 0.00029  6.96500E+05 0.00026  6.28287E+05 0.00028  3.69876E+05 0.00032  6.46278E+05 0.00028  4.46535E+05 0.00036  3.90423E+05 0.00036  7.65494E+04 0.00066  7.60558E+04 0.00075  7.84121E+04 0.00072  8.09687E+04 0.00068  8.04417E+04 0.00062  7.99691E+04 0.00065  8.27205E+04 0.00069  7.85256E+04 0.00072  1.49984E+05 0.00058  2.46295E+05 0.00043  3.29978E+05 0.00039  1.03263E+06 0.00030  1.55481E+06 0.00036  2.45544E+06 0.00041  2.02484E+06 0.00049  1.61117E+06 0.00049  1.28289E+06 0.00050  1.47391E+06 0.00052  2.62587E+06 0.00051  3.21198E+06 0.00053  5.31821E+06 0.00053  6.58076E+06 0.00053  7.64413E+06 0.00054  4.00168E+06 0.00057  2.54287E+06 0.00057  1.68375E+06 0.00060  1.42751E+06 0.00063  1.35182E+06 0.00061  1.03997E+06 0.00060  6.85957E+05 0.00067  5.82931E+05 0.00073  5.32697E+05 0.00073  4.40257E+05 0.00078  3.01530E+05 0.00087  1.98546E+05 0.00097  6.26048E+04 0.00129 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.34024E+00 0.00021 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.51551E+21 0.00020  3.40323E+21 0.00057 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38878E-01 1.5E-05  3.87471E-01 4.5E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.95922E-04 0.00038  9.65014E-04 0.00038 ];
INF_ABS                   (idx, [1:   4]) = [  1.12513E-03 0.00035  2.76493E-03 0.00045 ];
INF_FISS                  (idx, [1:   4]) = [  3.29203E-04 0.00049  1.79991E-03 0.00056 ];
INF_NSF                   (idx, [1:   4]) = [  8.03694E-04 0.00048  4.38585E-03 0.00056 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44133E+00 4.4E-06  2.43670E+00 1.9E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.7E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.15919E-07 9.0E-05  2.09675E-06 4.2E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37753E-01 1.5E-05  3.84707E-01 4.7E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13619E-02 0.00022  1.13525E-02 0.00043 ];
INF_SCATT2                (idx, [1:   4]) = [  2.47629E-03 0.00139 -4.39282E-03 0.00090 ];
INF_SCATT3                (idx, [1:   4]) = [  4.67992E-04 0.00662 -4.02853E-03 0.00091 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.49933E-04 0.01796 -4.64631E-03 0.00057 ];
INF_SCATT5                (idx, [1:   4]) = [  1.17745E-04 0.02093 -2.70650E-03 0.00104 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.33313E-04 0.00590 -4.45341E-03 0.00058 ];
INF_SCATT7                (idx, [1:   4]) = [  1.30058E-04 0.01729 -6.15587E-04 0.00371 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37787E-01 1.5E-05  3.84707E-01 4.7E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13709E-02 0.00022  1.13525E-02 0.00043 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.47790E-03 0.00139 -4.39282E-03 0.00090 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.68201E-04 0.00660 -4.02853E-03 0.00091 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.49947E-04 0.01796 -4.64631E-03 0.00057 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.17713E-04 0.02096 -2.70650E-03 0.00104 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.33327E-04 0.00589 -4.45341E-03 0.00058 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.30080E-04 0.01729 -6.15587E-04 0.00371 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00986E-01 3.3E-05  3.74644E-01 4.9E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10747E+00 3.3E-05  8.89733E-01 4.9E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.09070E-03 0.00037  2.76493E-03 0.00045 ];
INF_REMXS                 (idx, [1:   4]) = [  5.50082E-03 0.00014  4.47915E-03 0.00040 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33378E-01 1.4E-05  4.37519E-03 0.00021  1.71449E-03 0.00045  3.82992E-01 4.7E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23334E-02 0.00021 -9.71523E-04 0.00046 -1.85170E-04 0.00171  1.15376E-02 0.00042 ];
INF_S2                    (idx, [1:   8]) = [  2.65100E-03 0.00129 -1.74710E-04 0.00215 -1.10893E-04 0.00198 -4.28192E-03 0.00093 ];
INF_S3                    (idx, [1:   8]) = [  5.13885E-04 0.00603 -4.58920E-05 0.00674 -3.98900E-05 0.00489 -3.98864E-03 0.00091 ];
INF_S4                    (idx, [1:   8]) = [ -1.13457E-04 0.02435 -3.64761E-05 0.00744 -2.52168E-05 0.00769 -4.62109E-03 0.00057 ];
INF_S5                    (idx, [1:   8]) = [  1.20338E-04 0.01994 -2.59299E-06 0.11005 -6.17175E-06 0.02617 -2.70033E-03 0.00105 ];
INF_S6                    (idx, [1:   8]) = [ -3.08517E-04 0.00653 -2.47959E-05 0.00999 -1.73646E-05 0.00836 -4.43604E-03 0.00059 ];
INF_S7                    (idx, [1:   8]) = [  1.08439E-04 0.02086  2.16193E-05 0.00868  7.09867E-06 0.01870 -6.22686E-04 0.00364 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33412E-01 1.4E-05  4.37519E-03 0.00021  1.71449E-03 0.00045  3.82992E-01 4.7E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23424E-02 0.00021 -9.71523E-04 0.00046 -1.85170E-04 0.00171  1.15376E-02 0.00042 ];
INF_SP2                   (idx, [1:   8]) = [  2.65261E-03 0.00129 -1.74710E-04 0.00215 -1.10893E-04 0.00198 -4.28192E-03 0.00093 ];
INF_SP3                   (idx, [1:   8]) = [  5.14093E-04 0.00602 -4.58920E-05 0.00674 -3.98900E-05 0.00489 -3.98864E-03 0.00091 ];
INF_SP4                   (idx, [1:   8]) = [ -1.13471E-04 0.02435 -3.64761E-05 0.00744 -2.52168E-05 0.00769 -4.62109E-03 0.00057 ];
INF_SP5                   (idx, [1:   8]) = [  1.20306E-04 0.01997 -2.59299E-06 0.11005 -6.17175E-06 0.02617 -2.70033E-03 0.00105 ];
INF_SP6                   (idx, [1:   8]) = [ -3.08531E-04 0.00653 -2.47959E-05 0.00999 -1.73646E-05 0.00836 -4.43604E-03 0.00059 ];
INF_SP7                   (idx, [1:   8]) = [  1.08461E-04 0.02087  2.16193E-05 0.00868  7.09867E-06 0.01870 -6.22686E-04 0.00364 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98861E-01 0.00023  4.25860E-01 0.00059 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99282E-01 0.00032  4.21684E-01 0.00082 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99508E-01 0.00034  4.20891E-01 0.00098 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97805E-01 0.00037  4.35379E-01 0.00100 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11535E+00 0.00023  7.82757E-01 0.00059 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11379E+00 0.00032  7.90534E-01 0.00082 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11295E+00 0.00034  7.92047E-01 0.00098 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11932E+00 0.00037  7.65691E-01 0.00099 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.58889E-03 0.00374  2.11083E-04 0.02095  1.09269E-03 0.00908  1.06173E-03 0.00922  3.01235E-03 0.00546  9.00679E-04 0.01010  3.10364E-04 0.01742 ];
LAMBDA                    (idx, [1:  14]) = [  7.59198E-01 0.00883  1.24906E-02 2.6E-07  3.18194E-02 2.5E-05  1.09393E-01 2.8E-05  3.17100E-01 2.8E-05  1.35364E+00 2.8E-05  8.64948E+00 0.00030 ];

