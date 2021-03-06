## Import Data
Train <- read.csv("F:/theSmartRecruit/theSmartRecruit/data/Train.csv")
Test <- read.csv("F:/theSmartRecruit/theSmartRecruit/data/Test.csv")

## Data Transformations
# New columns added :
# 1. Applicant Age : Applicants Age during date of joining
# 2. Manager Age : Managers Age while Applicant Joined
# 3. Manager Experience : Managers Experience in month in company while applicant joined
# Old Columns removed
# 1. Applicant DOB
# 2. Manager DOB
# 3. Manager DOJ
# 4. Application Reciept Date

Train[,'Office_PIN'] = as.factor(Train[,'Office_PIN'])
Train[,'Applicant_City_PIN'] = as.factor(Train[,'Applicant_City_PIN'])
Train[,'Manager_Grade'] = as.factor(Train[,'Manager_Grade'])
Train[,'Business_Sourced'] = as.factor(Train[,'Business_Sourced'])

Test[,'Office_PIN'] = as.factor(Test[,'Office_PIN'])
Test[,'Applicant_City_PIN'] = as.factor(Test[,'Applicant_City_PIN'])
Test[,'Manager_Grade'] = as.factor(Test[,'Manager_Grade'])





