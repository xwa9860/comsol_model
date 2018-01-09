
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input11' ;
HOSTNAME                  (idx, [1: 12])  = 'n0085.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:50 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00330E+00  9.92191E-01  9.96068E-01  9.92319E-01  1.00253E+00  9.95057E-01  1.00392E+00  1.00469E+00  1.00021E+00  1.00019E+00  9.99109E-01  1.00005E+00  1.00256E+00  1.00382E+00  1.00162E+00  1.00314E+00  1.00290E+00  9.96267E-01  1.00064E+00  9.99425E-01  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.52269E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.24773E-01 2.6E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.81568E-01 4.6E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.85829E-01 4.6E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.51838E+00 0.00035  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.86069E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.86055E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.64890E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.87866E+01 0.00025  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20001782 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.85334E+02 ;
RUNNING_TIME              (idx, 1)        =  2.95934E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.25767E-01  1.25767E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.43333E-03  1.43333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.94662E+01  2.94662E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.95930E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77920 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98512E+01 0.00012 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87239E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4803.39;
MEMSIZE                   (idx, 1)        = 836.08;
XS_MEMSIZE                (idx, 1)        = 502.21;
MAT_MEMSIZE               (idx, 1)        = 196.97;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3967.31;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 166114 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.34595E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.33064E-01 0.00064 ];
U235_FISS                 (idx, [1:   4]) = [  7.27369E+18 0.00021  9.98376E-01 1.3E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.18327E+16 0.00787  1.62365E-03 0.00785 ];
U235_CAPT                 (idx, [1:   4]) = [  1.71185E+18 0.00060  2.80820E-01 0.00054 ];
U238_CAPT                 (idx, [1:   4]) = [  2.09415E+18 0.00064  3.43494E-01 0.00047 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20001782 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.80310E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20001782 2.01803E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 8978091 9.05852E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10730665 1.08264E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 293026 2.95429E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20001782 2.01803E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -2.42144E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.0E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.3E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.09831E+18 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.33804E+19 0.00014 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.34595E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.96182E+21 0.00028 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.98838E+17 0.00222 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.35792E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.52614E+21 0.00030 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43743E+00 6.4E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.3E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31949E+00 0.00022  1.31070E+00 0.00021  8.72373E-03 0.00381 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31894E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31885E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31894E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.33871E+00 0.00014 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.80778E+01 4.3E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.80780E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.81960E-07 0.00079 ];
IMP_EALF                  (idx, [1:   2]) = [  2.81785E-07 0.00043 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.48387E-03 0.00581 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.50273E-03 0.00149 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.04101E-03 0.00287  1.61224E-04 0.01554  8.41365E-04 0.00693  8.10168E-04 0.00697  2.31387E-03 0.00409  6.77720E-04 0.00769  2.36664E-04 0.01287 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.55250E-01 0.00659  1.09480E-02 0.00840  3.18195E-02 1.8E-05  1.09344E-01 0.00050  3.17096E-01 2.2E-05  1.35374E+00 1.7E-05  8.26611E+00 0.00477 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.61541E-03 0.00384  2.09290E-04 0.02106  1.09801E-03 0.00917  1.06583E-03 0.00933  3.03064E-03 0.00548  8.96875E-04 0.01041  3.14773E-04 0.01741 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.61638E-01 0.00894  1.24906E-02 9.8E-08  3.18192E-02 2.3E-05  1.09401E-01 3.8E-05  3.17093E-01 2.7E-05  1.35371E+00 2.4E-05  8.64266E+00 0.00019 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.69327E-04 0.00063  3.69429E-04 0.00063  3.52627E-04 0.00758 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.87280E-04 0.00059  4.87415E-04 0.00059  4.65251E-04 0.00758 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.61183E-03 0.00387  2.13090E-04 0.02129  1.09636E-03 0.00938  1.06734E-03 0.00951  3.03510E-03 0.00562  8.91681E-04 0.01043  3.08251E-04 0.01726 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.54327E-01 0.00900  1.24906E-02 1.2E-07  3.18196E-02 2.5E-05  1.09406E-01 5.0E-05  3.17099E-01 3.0E-05  1.35373E+00 2.6E-05  8.64095E+00 0.00017 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.54605E-04 0.00140  3.54708E-04 0.00140  3.40936E-04 0.01909 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.67861E-04 0.00138  4.67998E-04 0.00139  4.49707E-04 0.01906 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.75662E-03 0.01124  2.24889E-04 0.05965  1.07876E-03 0.02858  1.08187E-03 0.02843  3.12322E-03 0.01657  9.15612E-04 0.02997  3.32272E-04 0.05115 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.96082E-01 0.02833  1.24906E-02 7.1E-07  3.18216E-02 3.3E-05  1.09406E-01 0.00010  3.17096E-01 8.0E-05  1.35373E+00 5.8E-05  8.64625E+00 0.00052 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.73478E-03 0.01080  2.25850E-04 0.05806  1.07025E-03 0.02774  1.07852E-03 0.02745  3.11530E-03 0.01599  9.14401E-04 0.02913  3.30456E-04 0.05016 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.91328E-01 0.02738  1.24906E-02 7.1E-07  3.18216E-02 3.2E-05  1.09404E-01 9.6E-05  3.17101E-01 8.1E-05  1.35372E+00 5.8E-05  8.64585E+00 0.00051 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.91123E+01 0.01136 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.62193E-04 0.00036 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.77868E-04 0.00029 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.63804E-03 0.00212 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.83303E+01 0.00212 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08904E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.59240E-05 8.4E-05  3.59231E-05 8.5E-05  3.60598E-05 0.00103 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.50169E-04 0.00040  7.50397E-04 0.00040  7.14914E-04 0.00496 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.13680E-01 0.00015  7.12670E-01 0.00015  9.28680E-01 0.00452 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.08292E+01 0.00662 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.86055E+02 0.00023  1.78117E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.96049E+04 0.00208  3.79532E+05 0.00080  8.96435E+05 0.00043  1.66404E+06 0.00027  1.87349E+06 0.00021  1.94200E+06 0.00014  1.45896E+06 0.00014  1.14297E+06 0.00018  1.62951E+06 0.00015  1.60450E+06 9.7E-05  1.75040E+06 9.7E-05  1.74204E+06 0.00011  1.89962E+06 9.8E-05  1.85600E+06 0.00011  1.86308E+06 0.00011  1.63605E+06 0.00011  1.64676E+06 0.00011  1.63887E+06 0.00010  1.62968E+06 0.00012  3.22882E+06 9.4E-05  3.17466E+06 8.7E-05  2.32718E+06 0.00011  1.51686E+06 0.00012  1.80220E+06 0.00013  1.72901E+06 0.00015  1.46998E+06 0.00017  2.60230E+06 0.00014  5.57005E+05 0.00024  6.98462E+05 0.00026  6.30115E+05 0.00026  3.71463E+05 0.00038  6.49841E+05 0.00027  4.49198E+05 0.00034  3.93874E+05 0.00037  7.72963E+04 0.00073  7.67500E+04 0.00058  7.92765E+04 0.00068  8.19440E+04 0.00074  8.15815E+04 0.00066  8.11637E+04 0.00066  8.39541E+04 0.00064  7.98780E+04 0.00067  1.52747E+05 0.00051  2.51466E+05 0.00038  3.39087E+05 0.00042  1.07109E+06 0.00034  1.62210E+06 0.00035  2.54886E+06 0.00038  2.08741E+06 0.00042  1.65256E+06 0.00046  1.31352E+06 0.00047  1.50314E+06 0.00048  2.67077E+06 0.00048  3.25554E+06 0.00048  5.36801E+06 0.00050  6.60924E+06 0.00052  7.64801E+06 0.00052  3.99217E+06 0.00055  2.53367E+06 0.00057  1.67517E+06 0.00057  1.41933E+06 0.00059  1.34294E+06 0.00063  1.03366E+06 0.00061  6.81123E+05 0.00069  5.78599E+05 0.00067  5.27788E+05 0.00069  4.37169E+05 0.00075  2.99306E+05 0.00079  1.96763E+05 0.00106  6.20573E+04 0.00130 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.33863E+00 0.00020 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.52576E+21 0.00020  3.43614E+21 0.00056 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38894E-01 1.6E-05  3.87441E-01 4.7E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.95022E-04 0.00036  9.59005E-04 0.00037 ];
INF_ABS                   (idx, [1:   4]) = [  1.12663E-03 0.00032  2.73823E-03 0.00044 ];
INF_FISS                  (idx, [1:   4]) = [  3.31609E-04 0.00044  1.77923E-03 0.00055 ];
INF_NSF                   (idx, [1:   4]) = [  8.09547E-04 0.00044  4.33545E-03 0.00055 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44127E+00 3.5E-06  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02318E+02 3.1E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.16927E-07 0.00011  2.08669E-06 4.4E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37768E-01 1.6E-05  3.84702E-01 4.9E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13462E-02 0.00023  1.14206E-02 0.00047 ];
INF_SCATT2                (idx, [1:   4]) = [  2.47314E-03 0.00142 -4.36370E-03 0.00088 ];
INF_SCATT3                (idx, [1:   4]) = [  4.66704E-04 0.00641 -4.00262E-03 0.00084 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.57653E-04 0.01695 -4.64811E-03 0.00066 ];
INF_SCATT5                (idx, [1:   4]) = [  1.15813E-04 0.01983 -2.69635E-03 0.00094 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.42228E-04 0.00722 -4.47520E-03 0.00053 ];
INF_SCATT7                (idx, [1:   4]) = [  1.41555E-04 0.01423 -6.16202E-04 0.00340 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37802E-01 1.6E-05  3.84702E-01 4.9E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13553E-02 0.00023  1.14206E-02 0.00047 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.47486E-03 0.00142 -4.36370E-03 0.00088 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.66986E-04 0.00641 -4.00262E-03 0.00084 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.57581E-04 0.01698 -4.64811E-03 0.00066 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.15820E-04 0.01980 -2.69635E-03 0.00094 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.42224E-04 0.00723 -4.47520E-03 0.00053 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.41519E-04 0.01425 -6.16202E-04 0.00340 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.01033E-01 3.8E-05  3.74517E-01 5.3E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10730E+00 3.8E-05  8.90036E-01 5.3E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.09222E-03 0.00035  2.73823E-03 0.00044 ];
INF_REMXS                 (idx, [1:   4]) = [  5.64219E-03 0.00015  4.59350E-03 0.00040 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33252E-01 1.5E-05  4.51594E-03 0.00023  1.85457E-03 0.00046  3.82848E-01 5.0E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23374E-02 0.00022 -9.91202E-04 0.00056 -2.08179E-04 0.00161  1.16288E-02 0.00046 ];
INF_S2                    (idx, [1:   8]) = [  2.65549E-03 0.00132 -1.82351E-04 0.00243 -1.18244E-04 0.00190 -4.24545E-03 0.00090 ];
INF_S3                    (idx, [1:   8]) = [  5.15578E-04 0.00581 -4.88736E-05 0.00739 -4.19665E-05 0.00518 -3.96066E-03 0.00084 ];
INF_S4                    (idx, [1:   8]) = [ -1.19419E-04 0.02233 -3.82345E-05 0.00748 -2.71473E-05 0.00721 -4.62097E-03 0.00067 ];
INF_S5                    (idx, [1:   8]) = [  1.19031E-04 0.01910 -3.21807E-06 0.07626 -6.45409E-06 0.02447 -2.68990E-03 0.00094 ];
INF_S6                    (idx, [1:   8]) = [ -3.16430E-04 0.00772 -2.57972E-05 0.00885 -1.82536E-05 0.00805 -4.45695E-03 0.00053 ];
INF_S7                    (idx, [1:   8]) = [  1.19316E-04 0.01681  2.22393E-05 0.00971  8.17029E-06 0.01813 -6.24372E-04 0.00333 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33286E-01 1.5E-05  4.51594E-03 0.00023  1.85457E-03 0.00046  3.82848E-01 5.0E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23465E-02 0.00022 -9.91202E-04 0.00056 -2.08179E-04 0.00161  1.16288E-02 0.00046 ];
INF_SP2                   (idx, [1:   8]) = [  2.65721E-03 0.00132 -1.82351E-04 0.00243 -1.18244E-04 0.00190 -4.24545E-03 0.00090 ];
INF_SP3                   (idx, [1:   8]) = [  5.15860E-04 0.00581 -4.88736E-05 0.00739 -4.19665E-05 0.00518 -3.96066E-03 0.00084 ];
INF_SP4                   (idx, [1:   8]) = [ -1.19347E-04 0.02237 -3.82345E-05 0.00748 -2.71473E-05 0.00721 -4.62097E-03 0.00067 ];
INF_SP5                   (idx, [1:   8]) = [  1.19038E-04 0.01906 -3.21807E-06 0.07626 -6.45409E-06 0.02447 -2.68990E-03 0.00094 ];
INF_SP6                   (idx, [1:   8]) = [ -3.16427E-04 0.00772 -2.57972E-05 0.00885 -1.82536E-05 0.00805 -4.45695E-03 0.00053 ];
INF_SP7                   (idx, [1:   8]) = [  1.19280E-04 0.01683  2.22393E-05 0.00971  8.17029E-06 0.01813 -6.24372E-04 0.00333 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98829E-01 0.00020  4.25509E-01 0.00059 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99143E-01 0.00036  4.21414E-01 0.00097 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99284E-01 0.00034  4.20588E-01 0.00105 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.98070E-01 0.00035  4.34911E-01 0.00102 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11547E+00 0.00020  7.83402E-01 0.00059 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11431E+00 0.00036  7.91061E-01 0.00097 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11378E+00 0.00034  7.92627E-01 0.00105 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11832E+00 0.00035  7.66518E-01 0.00102 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.61541E-03 0.00384  2.09290E-04 0.02106  1.09801E-03 0.00917  1.06583E-03 0.00933  3.03064E-03 0.00548  8.96875E-04 0.01041  3.14773E-04 0.01741 ];
LAMBDA                    (idx, [1:  14]) = [  7.61638E-01 0.00894  1.24906E-02 9.8E-08  3.18192E-02 2.3E-05  1.09401E-01 3.8E-05  3.17093E-01 2.7E-05  1.35371E+00 2.4E-05  8.64266E+00 0.00019 ];

