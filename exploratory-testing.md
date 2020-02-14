# Exploratory testing for Monefy

Explore the add expenses functionality
With different dates, categories and accounts
To discover if the expenses are saved with the data entered

Explore the add expenses functionality
With different ways to add an expense
To discover if all of the possible ways to add an expense are working.

Explore the remove expense functionality
With expenses from different categories and accounts
To discover if the expense is correctly removed 

Explore the edit expense functionality
With all possible field changes
To discover if the expense is correctly updated

Explore the add income functionality
With different dates, categories and accounts
To discover if the income is saved with the data entered

Explore the remove income functionality
With incomes from different categories and accounts
To discover if the income is correctly removed

Explore the add accounts 
With all of the fields fulfilled
To discover if the accounts are created with the input data

Explore Transfers between accounts
With different amounts and accounts 
To discover if the amounts are transferred from source to destination account

Explore the transfer between accounts 
With no accounts or only one account
To discover the error message the application shows

Explore the categories section
With add, edit and delete operations
To discover the categories are successfully added, edited and deleted

Explore the categories section
With expenses and incomes associated to the categories
To discover the merge and delete actions are handling the expenses and incomes associated with the category.

Explore the main screen 
With incomes and expenses associated 
To discover if the graph is correctly generated and figures are ok.

Explore the main screen 
With incomes and expenses grouped across multiple years/months/dates
To discover if the figures are grouped according to its date

Explore the cancel operation
With accounts, expenses, incomes, categories
To discover if the operation is successfully cancelled

Explore the pro features
With a free account
To discover if a free user can access the pro features

Explore the pro features
With a pro account
To discover if pro user can use all of the pro features

## Definition and priority
Regarding the definition of the exploratory testing and the priority of them, it all depends on the objective of the exploratory testing, if it is general bug finding, get familiar with the application, focusing on a regression for an specific feature, focus on the areas where the more bugs were found during development or even we do not have a test plan defined and we need an starting point for the test cases.

If it is one or another, the focus on corner cases or more end user happy paths.

But in general, my priority will be a combination of areas where more bugs are found during development and production and the more critical which I think is playing with expenses, incomes and main screen.


## Possible bugs found
Account’s initial balance is not being reflected in the chart
If user has expenses associated to multiple accounts, and all of the accounts are deleted, there is a remaining balance in the chart, even if all accounts were deleted.

## Improvements
In the transfer screen, the amount is the first field on screen, and then the origin and destination account.  The issue is that after fulfilling the amount, the transfer is saved and applied.  In other words, if the user wants to change the origin and destination account, has to do it before fulfilling the amount, being the amount the first field in the form.
Adding incomings or expenses for an account not being displayed on the main screen is not reflected on the chart and the user may seem this like a bug.  But for example, if the user adds an amount for the same account but different date, the main screen automatically switch to the selected date.




