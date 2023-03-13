# Short_Story_Reading_Behaviour_Public

Data and analysis files from Vuorinen, Keller, & Tatler.

All of the files have been written and planned by P.T.E. Vuorinen.

Please cite as:
Vuorinen, Tatler, & Keller. (in prep). Tracking e-Reading Behaviour: Uncovering the Effects of Task Context, Electronic Experience, and Motivation.

## Folder set up

There are seven main folders:
1. Prep: Scripts for data cleaning and wrangling, computation of reading behaviour measures
2. Analysis: Scripts for analysis (modelling of reading behaviour)
3. Data: Data collected for this study (n = 60) that is used in Prep and Analysis. Multiple datafiles provided from raw to wrangled.
4. Functions: Custom functions used in the Prep or Analysis. Functions not created by the authors, see comments for credit.
5. Info: Document with information on the reading behaviour tracking system.
6. Figures: Scripts for all important figures and the figures as image files.
7. Extra: Additional documents such as r-packages bibTeX file.

File naming system: Folder_IntentedUsage.filetype, e.g., Analysis_ReadingSpeedModel.Rmd: R markdown file for analysis of reading speed by modelling.
Data files are named in lowercase and underscores (snake case), e.g. raw_tracking_data, variables are named with Pascal Case, e.g. UserId

### Prep

This folder includes:
* Prep_TrackingDataWrangling.Rmd
    * Used to wrangle the raw tracking data and create variables used in measures
* Prep_Questionnaires.Rmd
    * Wrangling of questionnaire data
* Prep_StoryAnalysis.Rmd
    * Wrangling of information about the stories
* Prep_ReadingSpeedMeasure.Rmd
    * Measure for reading speed
* Prep_ReadingLinearityMeasure.Rmd
    * Measure for linearity of reading
* Prep_TaskSwitchingMeasure.Rmd
    * Measure for frequency of task-switching

### Analysis

This folder includes:
* Analysis_ConditionManipulation.Rmd
    * Analysis of the condition manipulation effect on situational motivation.
* Analysis_ReadingSpeed.Rmd
    * Analysis of reading speed using two different multilevel models.
* Analysis_ReadingLinearity.Rmd
    * Analysis of linearity of reading using two different multilevel models.
* Analysis_TaskSwitching.Rmd
    * Analysis of task-switching frequency using a multilevel model.

### Data

This folder includes:
* A folder called 'Stories'
    * Includes all short stories used in the study that had a Creative Commons or a Public Domain licence
* preprocessed_raw_tracking_data.csv
    * Raw tracking data from the e-reader system. Preprocessed during SQL retrieval of the data. See Info folder on more information about the preprocessing.
* raw_questionnaire_data.csv
    * Raw questionnaire data
* eexp_scores.csv
    * Scores on task-relevant electronic reading experience. Created in Prep_Questionnaires.Rmd
* IMI_scores.csv
    * Scores on Intrinsic Motivation Inventory (situational motivation). Created in Prep_Questionnaires.Rmd
* IMIR_scores.csv
    * Scores on Intrinsic Motivation Inventory on Reading (contextual motivation). Created in Prep_Questionnaires.Rmd
* demographics_data.csv
    * Information on participants' demographics. Created in Prep_Questionnaires.Rmd
* story_information_data.csv
    * Dataset created in Prep_StoryAnalysis.Rmd
* story_ratings_data.csv
    * Ratings for the short story summaries. Raw data.
* wrangled_tracking_data.csv
    * Wrangled tracking data created in Prep_TrackingDataWrangling.Rmd
* wrangled_grouped_tracking_data.csv
    * Wrangled tracking data grouped by navigation blocks. Created in Prep_TrackingDataWrangling.Rmd
* reading_session_artefacts.csv
    * Information about reading sessions removed in Prep_TrackingDataWrangling.Rmd
* reading_session_detail.csv
    * Information about reading sessions. Created in Prep_TrackingDataWrangling.Rmd
* task_switching_data.csv
    * Dataset on task-switching frequency. Created in Prep_TaskSwitchingMeasure.Rmd
* reading_speed_measure_data.csv
    * Dataset on reading speed variance. Created in Prep_ReadingSpeedMeasure.Rmd
* linearity_measure_data.csv
    * Dataset on linearity of reading. Created in Prep_ReadingLinearityMeasure.Rmd

### Functions

This folder includes:

*TBD*

### Info

This folder includes:

*TBD*

The following will be added:
* Information about how the data is pre-processed
* Information about all event types
* Information about the e-reader

### Figures

This folder includes:

*TBA*

### Extra

This folder includes:

*TBD*

## Acknowledgements

The folder set up was inspired by a talk from Niamh MacSweeney on MacSweeney et al. registered report and code sharing in Spring 2022.

## Contact

Pauliina Vuorinen: p.t.e.vuorinen (at) sms.ed.ac.uk