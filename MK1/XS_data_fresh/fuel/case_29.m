
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
WORKING_DIRECTORY         (idx, [1: 63])  = '/global/home/users/xwa9860/FIG/res/multi_zones/fresh_xs/input28' ;
HOSTNAME                  (idx, [1: 12])  = 'n0056.savio1' ;
CPU_TYPE                  (idx, [1: 41])  = 'Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz' ;
CPU_MHZ                   (idx, 1)        = 1046.0 ;
START_DATE                (idx, [1: 24])  = 'Mon Jan  8 14:15:15 2018' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Jan  8 14:44:23 2018' ;

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
OMP_HISTORY_PROFILE       (idx, [1:  20]) = [  1.00659E+00  9.97516E-01  9.92281E-01  9.97844E-01  1.00269E+00  9.96582E-01  1.00614E+00  9.98486E-01  9.96455E-01  9.90624E-01  1.00343E+00  1.00597E+00  1.00060E+00  9.98214E-01  1.00250E+00  9.99317E-01  1.00235E+00  9.92903E-01  1.00815E+00  1.00138E+00  ];
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
ST_FRAC                   (idx, [1:   4]) = [  7.15968E-02 0.00032  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.28403E-01 2.5E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  2.84041E-01 4.9E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  2.88074E-01 4.8E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  8.68254E+00 0.00034  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.83322E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.83308E+02 0.00023  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  4.53029E+02 0.00029  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.52223E+01 0.00026  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 2000 ;
SOURCE_POPULATION         (idx, 1)        = 20002103 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+04 0.00031 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  5.76056E+02 ;
RUNNING_TIME              (idx, 1)        =  2.91318E+01 ;
INIT_TIME                 (idx, [1:  2])  = [  1.24517E-01  1.24517E-01 ];
PROCESS_TIME              (idx, [1:  2])  = [  1.13333E-03  1.13333E-03 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.90062E+01  2.90062E+01  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.91315E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 19.77410 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  1.98484E+01 0.00013 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.87074E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 64497.81 ;
ALLOC_MEMSIZE             (idx, 1)        = 4732.07;
MEMSIZE                   (idx, 1)        = 762.71;
XS_MEMSIZE                (idx, 1)        = 454.52;
MAT_MEMSIZE               (idx, 1)        = 171.29;
RES_MEMSIZE               (idx, 1)        = 3.91;
MISC_MEMSIZE              (idx, 1)        = 132.99;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 3969.36;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 241 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 144399 ;
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

NORM_COEF                 (idx, [1:   4]) = [  1.35485E+15 0.00021  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.45570E-01 0.00062 ];
U235_FISS                 (idx, [1:   4]) = [  7.27074E+18 0.00021  9.98376E-01 1.2E-05 ];
U238_FISS                 (idx, [1:   4]) = [  1.18305E+16 0.00760  1.62438E-03 0.00759 ];
U235_CAPT                 (idx, [1:   4]) = [  1.70650E+18 0.00062  2.75795E-01 0.00055 ];
U238_CAPT                 (idx, [1:   4]) = [  2.20449E+18 0.00062  3.56242E-01 0.00045 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_FISS       (idx, [1:  2])  = [ 20002103 2.00000E+07 ];
BALA_SRC_NEUTRON_NXN        (idx, [1:  2])  = [ 0 1.79979E+05 ];
BALA_SRC_NEUTRON_VR         (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_SRC_NEUTRON_TOT        (idx, [1:  2])  = [ 20002103 2.01800E+07 ];

BALA_LOSS_NEUTRON_CAPT       (idx, [1:  2])  = [ 9054088 9.13418E+06 ];
BALA_LOSS_NEUTRON_FISS       (idx, [1:  2])  = [ 10655395 1.07509E+07 ];
BALA_LOSS_NEUTRON_LEAK       (idx, [1:  2])  = [ 292620 2.94929E+05 ];
BALA_LOSS_NEUTRON_CUT        (idx, [1:  2])  = [ 0 0.00000E+00 ];
BALA_LOSS_NEUTRON_TOT        (idx, [1:  2])  = [ 20002103 2.01800E+07 ];

BALA_NEUTRON_DIFF            (idx, [1:  2])  = [ 0 -1.97440E-07 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  2.36000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  5.84918E+06 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.77495E+19 6.1E-07 ];
TOT_FISSRATE              (idx, [1:   2]) = [  7.28205E+18 5.4E-08 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.18742E+18 0.00032 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.34695E+19 0.00015 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.35485E+19 0.00021 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.90679E+21 0.00029 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.99815E+17 0.00215 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.36693E+19 0.00015 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.50530E+21 0.00031 ];
INI_FMASS                 (idx, 1)        =  4.03475E-05 ;
TOT_FMASS                 (idx, 1)        =  4.03475E-05 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.43744E+00 6.6E-07 ];
FISSE                     (idx, [1:   2]) = [  2.02278E+02 5.4E-08 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.31023E+00 0.00022  1.30161E+00 0.00022  8.61456E-03 0.00372 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.31025E+00 0.00015 ];
COL_KEFF                  (idx, [1:   2]) = [  1.31019E+00 0.00021 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.31025E+00 0.00015 ];
ABS_KINF                  (idx, [1:   2]) = [  1.32986E+00 0.00015 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.81500E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.81501E+01 2.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.62343E-07 0.00082 ];
IMP_EALF                  (idx, [1:   2]) = [  2.62189E-07 0.00044 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  8.52418E-03 0.00580 ];
IMP_AFGE                  (idx, [1:   2]) = [  8.56418E-03 0.00151 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.06683E-03 0.00287  1.60920E-04 0.01548  8.36249E-04 0.00690  8.24475E-04 0.00707  2.32919E-03 0.00418  6.75313E-04 0.00753  2.40686E-04 0.01268 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.60668E-01 0.00660  1.09667E-02 0.00834  3.18196E-02 1.8E-05  1.09401E-01 2.7E-05  3.17103E-01 2.2E-05  1.35372E+00 2.0E-05  8.25743E+00 0.00483 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.58705E-03 0.00377  2.08629E-04 0.02065  1.08878E-03 0.00941  1.06555E-03 0.00949  3.02935E-03 0.00550  8.84573E-04 0.01008  3.10178E-04 0.01713 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.57722E-01 0.00877  1.24906E-02 8.4E-08  3.18198E-02 2.4E-05  1.09399E-01 3.5E-05  3.17099E-01 2.9E-05  1.35372E+00 2.4E-05  8.64339E+00 0.00019 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.71624E-04 0.00065  3.71698E-04 0.00065  3.60700E-04 0.00755 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  4.86863E-04 0.00061  4.86961E-04 0.00061  4.72552E-04 0.00755 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.57268E-03 0.00379  2.11474E-04 0.02150  1.08712E-03 0.00960  1.06538E-03 0.00967  3.01485E-03 0.00564  8.88434E-04 0.01024  3.05412E-04 0.01780 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.54596E-01 0.00922  1.24906E-02 1.3E-07  3.18191E-02 3.4E-05  1.09402E-01 4.9E-05  3.17103E-01 3.1E-05  1.35370E+00 2.7E-05  8.64364E+00 0.00021 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.56397E-04 0.00151  3.56480E-04 0.00152  3.43330E-04 0.01798 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.66911E-04 0.00149  4.67020E-04 0.00150  4.49859E-04 0.01798 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.53569E-03 0.01125  2.15846E-04 0.06185  1.07702E-03 0.02769  1.03043E-03 0.02879  3.07608E-03 0.01651  8.34517E-04 0.03138  3.01804E-04 0.05131 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.49143E-01 0.02734  1.24906E-02 7.7E-07  3.18219E-02 4.4E-05  1.09390E-01 7.2E-05  3.17108E-01 9.6E-05  1.35364E+00 6.8E-05  8.63947E+00 0.00029 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.53885E-03 0.01104  2.17032E-04 0.06137  1.08342E-03 0.02699  1.03283E-03 0.02821  3.07089E-03 0.01603  8.32816E-04 0.03058  3.01863E-04 0.05040 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.47374E-01 0.02652  1.24906E-02 7.6E-07  3.18219E-02 4.1E-05  1.09390E-01 7.2E-05  3.17111E-01 9.5E-05  1.35364E+00 6.8E-05  8.63951E+00 0.00029 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.84207E+01 0.01135 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.64541E-04 0.00039 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.77585E-04 0.00031 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.56444E-03 0.00220 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.80116E+01 0.00222 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  1.08983E-06 0.00020 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  3.57858E-05 8.4E-05  3.57847E-05 8.4E-05  3.59527E-05 0.00104 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  7.46172E-04 0.00040  7.46371E-04 0.00040  7.14785E-04 0.00499 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.07558E-01 0.00015  7.06584E-01 0.00015  9.14204E-01 0.00448 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.07627E+01 0.00668 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  1.83308E+02 0.00023  1.76359E+02 0.00026 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E-11  5.00000E-09  1.00000E-08  1.50000E-08  2.00000E-08  2.50000E-08  3.00000E-08  3.50000E-08  4.20000E-08  5.00000E-08  5.80000E-08  6.70000E-08  8.00000E-08  1.00000E-07  1.40000E-07  1.80000E-07  2.20000E-07  2.50000E-07  2.80000E-07  3.00000E-07  3.20000E-07  3.50000E-07  4.00000E-07  5.00000E-07  6.25000E-07  7.80000E-07  8.50000E-07  9.10000E-07  9.50000E-07  9.72000E-07  9.96000E-07  1.02000E-06  1.04500E-06  1.07100E-06  1.09700E-06  1.12300E-06  1.15000E-06  1.30000E-06  1.50000E-06  1.85500E-06  2.10000E-06  2.60000E-06  3.30000E-06  4.00000E-06  9.87700E-06  1.59680E-05  2.77000E-05  4.80520E-05  7.55014E-05  1.48728E-04  3.67262E-04  9.06898E-04  1.42510E-03  2.23945E-03  3.51910E-03  5.50000E-03  9.11800E-03  1.50300E-02  2.47800E-02  4.08500E-02  6.74300E-02  1.11000E-01  1.83000E-01  3.02500E-01  5.00000E-01  8.21000E-01  1.35300E+00  2.23100E+00  3.67900E+00  6.06550E+00  2.00000E+01 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  7.92689E+04 0.00158  3.80188E+05 0.00069  8.97237E+05 0.00044  1.66360E+06 0.00025  1.87384E+06 0.00018  1.94197E+06 0.00017  1.45928E+06 0.00016  1.14289E+06 0.00019  1.62959E+06 0.00014  1.60468E+06 0.00011  1.75055E+06 0.00011  1.74184E+06 9.8E-05  1.89950E+06 0.00011  1.85526E+06 9.5E-05  1.86258E+06 9.6E-05  1.63555E+06 0.00011  1.64667E+06 0.00012  1.63814E+06 0.00012  1.62930E+06 0.00012  3.22820E+06 9.4E-05  3.17300E+06 9.0E-05  2.32516E+06 0.00012  1.51465E+06 0.00013  1.79552E+06 0.00014  1.71873E+06 0.00015  1.46062E+06 0.00017  2.57476E+06 0.00015  5.49765E+05 0.00027  6.89095E+05 0.00025  6.20311E+05 0.00029  3.65006E+05 0.00033  6.37327E+05 0.00030  4.39424E+05 0.00032  3.83485E+05 0.00037  7.52805E+04 0.00062  7.45468E+04 0.00064  7.68340E+04 0.00076  7.93513E+04 0.00070  7.87599E+04 0.00077  7.80852E+04 0.00066  8.07973E+04 0.00065  7.65689E+04 0.00067  1.46242E+05 0.00061  2.39318E+05 0.00045  3.19195E+05 0.00042  9.88112E+05 0.00033  1.47268E+06 0.00038  2.33197E+06 0.00043  1.93582E+06 0.00048  1.54635E+06 0.00048  1.23725E+06 0.00051  1.42481E+06 0.00048  2.54858E+06 0.00049  3.13374E+06 0.00050  5.21969E+06 0.00051  6.50184E+06 0.00054  7.60140E+06 0.00054  3.99702E+06 0.00057  2.54664E+06 0.00058  1.68719E+06 0.00059  1.43141E+06 0.00059  1.35673E+06 0.00058  1.04501E+06 0.00063  6.89405E+05 0.00072  5.86095E+05 0.00067  5.34798E+05 0.00079  4.41928E+05 0.00077  3.04166E+05 0.00085  1.99421E+05 0.00098  6.29324E+04 0.00113 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.32980E+00 0.00022 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  3.53075E+21 0.00022  3.37609E+21 0.00059 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  3.38916E-01 1.5E-05  3.87634E-01 3.8E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  8.23472E-04 0.00033  9.71529E-04 0.00042 ];
INF_ABS                   (idx, [1:   4]) = [  1.14981E-03 0.00029  2.78744E-03 0.00048 ];
INF_FISS                  (idx, [1:   4]) = [  3.26336E-04 0.00046  1.81591E-03 0.00058 ];
INF_NSF                   (idx, [1:   4]) = [  7.96709E-04 0.00046  4.42482E-03 0.00058 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.44137E+00 4.7E-06  2.43670E+00 1.3E-09 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02319E+02 3.7E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  1.14362E-07 0.00011  2.11016E-06 4.0E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  3.37766E-01 1.5E-05  3.84847E-01 4.0E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.13601E-02 0.00023  1.12929E-02 0.00047 ];
INF_SCATT2                (idx, [1:   4]) = [  2.48807E-03 0.00153 -4.43143E-03 0.00099 ];
INF_SCATT3                (idx, [1:   4]) = [  4.69917E-04 0.00655 -4.06621E-03 0.00070 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.44347E-04 0.02082 -4.65227E-03 0.00059 ];
INF_SCATT5                (idx, [1:   4]) = [  1.13714E-04 0.02245 -2.72404E-03 0.00095 ];
INF_SCATT6                (idx, [1:   4]) = [ -3.21824E-04 0.00692 -4.42483E-03 0.00055 ];
INF_SCATT7                (idx, [1:   4]) = [  1.24697E-04 0.01625 -6.25578E-04 0.00354 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  3.37801E-01 1.5E-05  3.84847E-01 4.0E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.13692E-02 0.00023  1.12929E-02 0.00047 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.48978E-03 0.00152 -4.43143E-03 0.00099 ];
INF_SCATTP3               (idx, [1:   4]) = [  4.70122E-04 0.00655 -4.06621E-03 0.00070 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.44353E-04 0.02081 -4.65227E-03 0.00059 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.13707E-04 0.02247 -2.72404E-03 0.00095 ];
INF_SCATTP6               (idx, [1:   4]) = [ -3.21837E-04 0.00692 -4.42483E-03 0.00055 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.24670E-04 0.01626 -6.25578E-04 0.00354 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  3.00966E-01 3.5E-05  3.74907E-01 4.3E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.10755E+00 3.5E-05  8.89109E-01 4.3E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.11528E-03 0.00029  2.78744E-03 0.00048 ];
INF_REMXS                 (idx, [1:   4]) = [  5.36219E-03 0.00016  4.36406E-03 0.00039 ];

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

INF_S0                    (idx, [1:   8]) = [  3.33554E-01 1.4E-05  4.21211E-03 0.00024  1.57673E-03 0.00047  3.83270E-01 4.0E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.23078E-02 0.00022 -9.47683E-04 0.00048 -1.66418E-04 0.00202  1.14593E-02 0.00046 ];
INF_S2                    (idx, [1:   8]) = [  2.65353E-03 0.00143 -1.65464E-04 0.00243 -1.03100E-04 0.00240 -4.32833E-03 0.00101 ];
INF_S3                    (idx, [1:   8]) = [  5.12679E-04 0.00594 -4.27615E-05 0.00789 -3.74176E-05 0.00566 -4.02879E-03 0.00071 ];
INF_S4                    (idx, [1:   8]) = [ -1.09768E-04 0.02737 -3.45796E-05 0.00838 -2.35330E-05 0.00721 -4.62874E-03 0.00060 ];
INF_S5                    (idx, [1:   8]) = [  1.16882E-04 0.02185 -3.16828E-06 0.08303 -5.63898E-06 0.02956 -2.71840E-03 0.00095 ];
INF_S6                    (idx, [1:   8]) = [ -2.98670E-04 0.00733 -2.31535E-05 0.01026 -1.58268E-05 0.00843 -4.40900E-03 0.00055 ];
INF_S7                    (idx, [1:   8]) = [  1.03798E-04 0.01949  2.08986E-05 0.00842  6.77691E-06 0.01892 -6.32355E-04 0.00352 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  3.33589E-01 1.4E-05  4.21211E-03 0.00024  1.57673E-03 0.00047  3.83270E-01 4.0E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.23169E-02 0.00022 -9.47683E-04 0.00048 -1.66418E-04 0.00202  1.14593E-02 0.00046 ];
INF_SP2                   (idx, [1:   8]) = [  2.65524E-03 0.00143 -1.65464E-04 0.00243 -1.03100E-04 0.00240 -4.32833E-03 0.00101 ];
INF_SP3                   (idx, [1:   8]) = [  5.12884E-04 0.00594 -4.27615E-05 0.00789 -3.74176E-05 0.00566 -4.02879E-03 0.00071 ];
INF_SP4                   (idx, [1:   8]) = [ -1.09773E-04 0.02736 -3.45796E-05 0.00838 -2.35330E-05 0.00721 -4.62874E-03 0.00060 ];
INF_SP5                   (idx, [1:   8]) = [  1.16876E-04 0.02187 -3.16828E-06 0.08303 -5.63898E-06 0.02956 -2.71840E-03 0.00095 ];
INF_SP6                   (idx, [1:   8]) = [ -2.98683E-04 0.00732 -2.31535E-05 0.01026 -1.58268E-05 0.00843 -4.40900E-03 0.00055 ];
INF_SP7                   (idx, [1:   8]) = [  1.03771E-04 0.01951  2.08986E-05 0.00842  6.77691E-06 0.01892 -6.32355E-04 0.00352 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.98787E-01 0.00023  4.26469E-01 0.00069 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.99195E-01 0.00033  4.21900E-01 0.00103 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.99314E-01 0.00036  4.21815E-01 0.00092 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.97862E-01 0.00035  4.36067E-01 0.00103 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.11563E+00 0.00023  7.81650E-01 0.00070 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.11411E+00 0.00033  7.90159E-01 0.00103 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.11367E+00 0.00036  7.90303E-01 0.00092 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.11910E+00 0.00035  7.64488E-01 0.00103 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.58705E-03 0.00377  2.08629E-04 0.02065  1.08878E-03 0.00941  1.06555E-03 0.00949  3.02935E-03 0.00550  8.84573E-04 0.01008  3.10178E-04 0.01713 ];
LAMBDA                    (idx, [1:  14]) = [  7.57722E-01 0.00877  1.24906E-02 8.4E-08  3.18198E-02 2.4E-05  1.09399E-01 3.5E-05  3.17099E-01 2.9E-05  1.35372E+00 2.4E-05  8.64339E+00 0.00019 ];

