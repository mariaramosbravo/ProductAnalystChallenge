# Growth Strategies
### 1.	Behavioral Credit Scoring: 
Since default rates are a major concern for neobanks, Umba could implement a credit score model based on a questionnaire or psychometric test that can provide a glance of the user’s personality traits; we can give cashbacks or other rewards to motivate answering the test.

Over the last decade Behavioral Economics has been a good way to measure and study human decision making considering how people think and feel, and the biases derived from perceptions.

Behavioral credit scoring has proven to improve the efficiency in prediction of conventional scores. It consists in asking the users targeted questions directed to relevant personality  traits such as perception of success, the user’s risk profile etc.  in order to deduce their willingness to pay and other important factors. For continents where most of the population is excluded from financial sector participation it can provide a precise estimation of trustworthiness and ability of repayment without a formal credit history. The Harvard’s Entrepreneurial Finance Lab Research Initiative (EFLRI) used a similiar approach in a study and it was proven to cut default rates by between 25% and 40%.

### 2.	User’s financial health summary:
There are many apps that trace your financial stability based on how much you earn and spend. Umba could take the user’s transaction information to create a simple and graphic report of their financial health. This can also be used to model different repayment scenarios, i.e. if the user saves “x” amount a month, it would take him “x” time to repay the loan. This feature would be good for them to keep track of their repayment ability.

# Analytics
### SQL 
#### Joining Tables
The first thing I did was select all the loans that were active or repaid in order to see every loan withdrawn. After this was done I joined the tables "loans" and "transactions" and renamed the attributes joined to make the new table easier to read. This new relation contained loan amount,  user id, time and date the user was created and the transaction fee charged for a disbursement transaction. Finally, I ordered the results by most recent date of users created. 
#### Aggregation
The procedure was to manipulate the "loans" table so that we could see the monthly number of loans (count fuction), total amount of all loans (sum fuction), average amount of each loan (avg function), smallest loan size (min fuction) and the largest loan size (max function) but before I called this functions I had to convert the values in the "date" field from time stamp to string. 
After the new table was queried I just called the GROUPBY clause to summarize the data in the database by date and ordered the values from most to less recent.

### PYTHON
#### In this section the main question was _what categories or groups here had high engagement (weekly logins) levels?_
To solve this problem I relied on visualization of data using boxplots. 
Some of these boxplots were useful to estimate which variables have a bigger impact in the number of weekly logins. I concluded that the users who login more times are:

* Users with Slack Integration.
* Users who's most used page is storyboard.
* Users that are given free trials.
* Users from Huron Consulting Group, One Legal, SpaceX, Twilio, Us Soccer Federation (Although the average logins for each company may not be very high, these companies presented maximums in the number of logins per week).

Box plots can be useful to get an idea of which variable is more related the weekly logins but I thought a correlation test would be a nice addition to it. To do so, I had to see how the data was structured (what kind of data each column had) and transform the ones that were objects to integer, boolean or float values.

Using Pearson's correlation method I found that the variables that show stronger correlation with the Weekly Logins are "Slack Integration" and "Free Trial". Meaning that the users who have access to slack and are given free trial are the most likely to log in frequently.
