# Pewlett-Hackard-Analysis

![1](https://user-images.githubusercontent.com/94920551/166258435-40914c92-feb3-48f5-947e-d15845f4a82f.jpg)

## Overview/Purpose
Baby boomers are retiring at Pewlett-Hackard and the company needs to help preparing for the volume of retirees and impact on the shift in job roles 

Now that Bobby has proven his SQL chops, his manager has given both of you two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, you’ll write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

## What You're Creating
This new assignment consists of two technical analysis deliverables and a written report. You will submit the following:

* Deliverable 1: The Number of Retiring Employees by Title
* Deliverable 2: The Employees Eligible for the Mentorship Program
* Deliverable 3: A written report on the employee database analysis (README.md)

### Results
* ***Number of employees retiring***:
    * We used birthdates of employees that were born in 1952-1955 as a measurement for employees retiring. We then filtered those employees into different groups based on their current role/title. It was calculated that 72,461 total employees will be retiring.

* ***Title of employees retiring:***
  * We separated retiring employees into different groups based on their current title. 25,916 Senior Engineering employees and 24,926 Senior Staff employees will be retiring per our findings.

* ***Number of employees eligible for mentorship program:***
    * We filtered our data by employees born in 1965, we also had to filter and remove duplicate employees who have held different titles in the past and grouped them by their current title. We then calculated a total of 1,549 employees who are eligible for the mentorship program.

* ***Title of emplyees eligible for mentorship program:***
    * It can be conculded that there are not many employees eligible for the mentorship program (1,549 total employees). Pewlett Hackard is a fairly large company based on the data provided, we would assume that more employees would be eligible.

### Summary

* How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  * Below we see another query thatdisplays how many staff will retire per department. Since every department will be effected, this query gives more precise numbers on what each department can expect and how many roles will need to be filled. 
  * In the image belwo we are retriving roles that need to be fill per title and department.

![2](https://user-images.githubusercontent.com/94920551/166261992-67948c38-c350-4e94-9462-cf8e5989fbe6.png)

* Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
  * To make sure that there are enough qualified staff for training at Pewlett-Hackard we will run another query with additional filter. 
  * This returns only employees on higher positions, assuming that those are qualified as mentors. We can find out who is qualified and ready to give training for upcoming candidates.
  * See image below.
      
![3](https://user-images.githubusercontent.com/94920551/166262573-be6df544-44e7-4173-9ded-958290f8dcc3.png)
      
      
