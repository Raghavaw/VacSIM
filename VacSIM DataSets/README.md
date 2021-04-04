# Datasets used
## VacSIM Input csv file 
It consists of the following parameters:
* Date ( 1st Septemner 2020 to 30th September 2020)
* Name of State ( Assam, Delhi, Jharkhand, Maharashtra and Nagaland)
* Susceptible (refers to the Susceptible population)
* Total predicted cases 
### The Definitions of parameters used 
* Death Rate (Predicted)- The percentage ratio of the predicted deaths in the State to the total predicted cases in that 
State calculated using projections obtained from a fitted standard Compartmental model, i.e. a Susceptible, Exposed, Infected and Recovered SEIR model.

* Recovery Rate (Predicted)- The percentage ratio of the predicted recoveries in the State to the total predicted cases 
in that State using projections obtained from the SEIR model.

* Population Share-The percentage ratio of the population of the state to the population of all the five states

* Action = Action data obtained from ACKTR Model (sub model 1)

* Normalized Action-The percentage ratio of a given distribution set of a state and the sum of the distribution sets 
of the 5 states over an entire episode for a given date.

* Reward = It is obtained using formulae : R(Reward) = Susceptible population * exp(-amount of vaccine given to the state by the model)



## VacSIM Output csv file 
It consists of each state having a total of 50 episodes being run for each day. Since the time period is fifteen days, 
this amounts to a total of 3750 episodes i.e. a total of 3750 rows (for the period of 1st September to 15th September 2020). These 3750 rows are used as training set and the remaining rows (from the period of 16th September 2020 to 30th September 2020) are used for testing purposes.

VacSIM Output csv file consists of the following parameters:

* Date (16th Septemner 2020 to 30th September 2020)
* State (Assam, Delhi, Jharkhand, Maharashtra and Nagaland)
* Mean Action -The unadjusted actions (which were not normalised) obtained after testing the model were first adjusted 
day-wise for each State by taking the mean of all possible fifty actions for the State on that particular day, thus giving us the "mean action".
* Vaccine Distribution % -The mean actions were then normalized to obtain the percentage vaccine distribution for the five States 
for the period under consideration (15 days), thus giving us the "vaccine distribution %".
* SD - refers to Standard Deviation
* Lower CI
* Upper CI

## Naive Approach Results csv file 
It consists of the following parameters:
* Date (16th Septemner 2020 to 30th September 2020)
* Name of State (Assam, Delhi, Jharkhand, Maharashtra and Nagaland)
* Susceptible (refers to the Susceptible population)
* Infected People
* Recovery
* Death
* Vaccine Distribution % - is taken to be proportional to the % share of predicted cases (which is defined as the percentage ratio of predicted cases of a state and the sum of predicted cases in all the five states)
* Amount of Vaccine (in figures; considering that the batch size is 10,000)

## Vaccine_Distribution_with_CI csv file
It consists of the following parameters:
* Date (16th September 2020 to 30th September 2020)
* State (Assam, Delhi, Jharkhand, Maharashtra and Nagaland)
* Vaccine Distribution... (in %)
* Lower CI
* Upper CI
