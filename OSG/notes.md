OSG Experiments Log
===================

Execution
---------
```
[64  , 1024, 32  , 256, 256, 16  , 512, 512, 128, 1024, 128, 2048,
 64  , 512 , 128 , 8  , 16 , 2048, 256, 512, 16 , 64  , 32 , 1024,
 2048, 32  , 1024, 8  , 256, 2048, 8  , 32 , 8  , 64  , 128, 16]
```

Experiment Execution Workflow
-----------------------------
```
source setup.sh  # export variables for RADICAL CT logging and debu level
vi store_run.sh  # edit the number of the experiment
vi config.json   # edit BoTs and number of pilots
python experiment.py config.json  # run the experiment
./store_run.sh <session_id> <run-bot-dir> <bot_size>
```

Failed without CU rescheduling
------------------------------

| #  | Session                                 | # Tasks |
|----|-----------------------------------------|---------|
| 1  | rp.session.radical.mturilli.017079.0001 | 64      |
| 2  | rp.session.radical.mturilli.017080.0000 | 1024    |
| 3  | rp.session.radical.mturilli.017080.0001 | 1024    |
| 4  | rp.session.radical.mturilli.017083.0000 | 32      |
| 5  | rp.session.radical.mturilli.017084.0003 | 64      |
| 6  | rp.session.radical.mturilli.017084.0005 | 32      |
| 7  | rp.session.radical.mturilli.017084.0007 | 32      |
| 8  | rp.session.radical.mturilli.017085.0004 | 32      |
| 9  | rp.session.radical.mturilli.017086.0000 | 64      |
| 10 | rp.session.radical.mturilli.017086.0001 | 64      |
| 11 | rp.session.radical.mturilli.017086.0003 | 32      |
| 12 | rp.session.radical.mturilli.017087.0000 | 8       |
| 13 | rp.session.radical.mturilli.017087.0001 | 8       |
| 14 | rp.session.radical.mturilli.017087.0007 | 64      |

Failed with CU rescheduling
---------------------------

| #  | Session                                 | # Tasks | Error       |
|----|-----------------------------------------|---------|-------------|
| 1  | rp.session.radical.mturilli.017087.0008 | 64      |             |
| 2  | rp.session.radical.mturilli.017087.0010 | 64      |             |
| 3  | rp.session.radical.mturilli.017088.0002 | 512     |             |
| 4  | rp.session.radical.mturilli.017089.0001 | 16      |             |
| 5  | rp.session.radical.mturilli.017089.0004 | 512     |             |
| 6  | rp.session.radical.mturilli.017089.0005 | 512     |             |
| 7  | rp.session.radical.mturilli.017090.0005 | 8       |             |
| 8  | rp.session.radical.mturilli.017092.0003 | 256     |             |
| 9  | rp.session.radical.mturilli.017093.0001 | 512     |             |
| 10 | rp.session.radical.mturilli.017094.0001 | 1024    |             |
| 11 | rp.session.radical.mturilli.017095.0000 | 1024    |             |
| 12 | rp.session.radical.mturilli.017095.0002 | 128     | OSG         |
| 13 | rp.session.radical.mturilli.017095.0004 | 2048    | OSG         |
| 14 | rp.session.radical.mturilli.017095.0005 | 2048    | OSG         |
| 15 | rp.session.radical.mturilli.017096.0000 | 512     | OSG         |
| 16 | rp.session.radical.mturilli.017097.0000 | 512     | RP          |
| 17 | rp.session.radical.mturilli.017097.0003 | 2048    | RP/OSG      |
| 18 | rp.session.radical.mturilli.017098.0000 | 2048    | RP          |
| 19 | rp.session.radical.mturilli.017109.0001 | 2048    | RP          |
| 20 | rp.session.radical.mturilli.017110.0000 | 2048    |             |
| 21 | rp.session.radical.mturilli.017110.0001 | 2048    | OSG         |
| 22 | rp.session.radical.mturilli.017111.0000 | 2048    | OSG         |
| 23 | rp.session.radical.mturilli.017113.0000 | 2048    |             |
| 24 | rp.session.radical.mturilli.017113.0001 | 2048    |             |
| 25 | rp.session.radical.mturilli.017114.0000 | 2048    |             |
| 26 | rp.session.radical.mturilli.017114.0001 | 2048    |             |
| 27 | rp.session.radical.mturilli.017114.0002 | 2048    |             |
| 28 | rp.session.radical.mturilli.017118.0002 | 2048    |             |
| 29 | rp.session.radical.mturilli.017123.0002 | 512     | OSG         |
| 30 | rp.session.radical.mturilli.017123.0003 | 512     | RP          |
| 31 | rp.session.radical.mturilli.017133.0006 | 64      | OSG Broker  |
| 32 | rp.session.radical.mturilli.017135.0011 | 512     | Termination |
| 33 | rp.session.radical.mturilli.017137.0002 | 2048    | Termination |
| 34 | rp.session.radical.mturilli.017137.0003 | 1024    | Termination |
| 35 | rp.session.radical.mturilli.017138.0002 | 1024    | Hung        |
| 36 | rp.session.radical.mturilli.017138.0003 | 1024    | RP manager  |
| 37 | rp.session.radical.mturilli.017138.0005 | 2048    | RP manager  |
| 38 | rp.session.radical.mturilli.017138.0007 | 1024    | RP manager  |
| 39 | rp.session.radical.mturilli.017139.0000 | 1024    | RP manager  |
| 40 | rp.session.radical.mturilli.017139.0001 | 1024    | OSG/RPM     |
| 41 | rp.session.radical.mturilli.017139.0002 | 1024    | OSG/RPM     |
| 42 | rp.session.radical.mturilli.017139.0004 | 2048    | RP          |
| 43 | rp.session.radical.mturilli.017140.0000 | 2048    | RP          |
| 44 | rp.session.radical.mturilli.017146.0000 | 1024    | RP          |
| 45 | rp.session.radical.mturilli.017147.0001 | 2048    | RP          |
| 46 | rp.session.radical.mturilli.017148.0000 | 2048    |             |
| 47 | rp.session.radical.mturilli.017149.0000 | 2048    | RP          |
| 48 | rp.session.radical.mturilli.017152.0000 | 2048    | RP          |
| 49 | rp.session.radical.mturilli.017156.0001 | 8       | RP          |
| 50 | rp.session.radical.mturilli.017165.0000 | 64      | RP          |
| 51 | rp.session.radical.mturilli.017172.0001 | 512     | RP          |
| 52 | rp.session.radical.mturilli.017173.0004 | 512     | RP          |
| 53 | rp.session.radical.mturilli.017174.0002 | 256     | EMGR        |
| 54 | rp.session.radical.mturilli.017175.0005 | 512     | EMGR        |
| 55 | rp.session.radical.mturilli.017176.0000 | 512     | EMGR        |

Exp 17
| 56 | rp.session.radical.mturilli.017205.0004 | 1024    | RP          |
| 57 | rp.session.radical.mturilli.017206.0001 | 128     | RP          |
| 58 | rp.session.radical.mturilli.017209.0002 | 1024    | RP          |
| 59 | rp.session.radical.mturilli.017211.0000 | 2048    | RP          |
| 60 | rp.session.radical.mturilli.017211.0005 | 1024    | RP          |
| 61 | rp.session.radical.mturilli.017211.0007 | 128     | RP          |
| 62 | rp.session.radical.mturilli.017212.0007 | 64      | RP          |
| 63 | rp.session.radical.mturilli.017213.0000 | 512     | RP          |
| 64 | rp.session.radical.mturilli.017213.0002 | 512     | RP          |
| 65 | rp.session.radical.mturilli.017213.0003 | 2048    | RP          |
| 66 | rp.session.radical.mturilli.017213.0004 | 512     | RP          |
| 67 | rp.session.radical.mturilli.017213.0005 | 2048    | RP          |
| 68 | rp.session.radical.mturilli.017214.0001 | 2048    | RP          |
| 69 | rp.session.radical.mturilli.017214.0002 | 512     | RP          |
| 70 | rp.session.radical.mturilli.017215.0000 | 512     | RP          |
| 71 | rp.session.radical.mturilli.017215.0001 | 2048    | RP          |

Exp 18
| 72 | rp.session.radical.mturilli.017216.0002 | 256     | RP          |
| 73 | rp.session.radical.mturilli.017216.0004 | 256     | RP          |
| 74 | rp.session.radical.mturilli.017217.0000 |         | RP          |
