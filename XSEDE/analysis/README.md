# Analysis workflow

## Prerequisites 

The following parameters were set in RADICAL-Pilot at runtime:

* export RADICAL_PROFILE="True"
* cud.cleanup = False (default)
* session.close(cleanup=False)
* pd.cleanup = False (default) 

## Retrieve raw data

1. Download json file of the session:
  ```
  radicalpilot-close-session -m export -d <mongodb session DB address> -s <session_id>
  ```
2. Fetch profiles (you may want to have a look at ` AIMES-Experience/XSEDE/bin/store_run.sh` :
  ```
  radicalpilot-fetch-profiles -c <directory where to store the directory with the profiles> <session_id>
  ```
3. Fix profiles. From within the directory with all the directories of the profiles (`AIMES-Experience/XSEDE/analysis/data/exp1` in this repository):
  ```
  . ../../bin/fix_prof.sh
  . ../../bin/fix_prof_2.sh
  ```

Each session can now be loaded into a RADICAL-Analytics (RA) Session object. Once constructed the Session object see [RA API](https://github.com/radical-cybertools/radical.analytics/blob/master/docs/source/apidoc.rst).

## Wrangling

When analyzing multiple sessions, this [wrangler](https://github.com/radical-experiments/AIMES-Experience/blob/master/XSEDE/analysis/bin/wranglermp.py) may be useful. **Please note**:

1. this is just an hack. Editing of At least two variables is needed (`datadir` and `experiment_tag`).
2. The wrangler may not collect all the durations needed for an analysis. Contributions to the code are welcome.
3. See the list of imported modules for the packages that need to be installed in a virtual environment.
4. The wrangler is not memory-optimized yet. Keeyp an eye on system memory consumption.

## Analysis

The wrangler above saves durations into three csv files. Those can be imported in one's preferred analysis tool. [Here](https://github.com/radical-experiments/AIMES-Experience/blob/master/XSEDE/analysis/xsede_characterization.ipynb) an example of how to use `jupyter` with Pandas.
