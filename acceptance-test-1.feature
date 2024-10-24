Feature: Create Task
    Scenario 01: Create task successfully
        Case 01: Create task with valid data
            Given I am on the "Tasks" page
            When I press the create task button
            And I fill in the form with valid data
            Then I should see the task created succesfully
            Examples:
              | taskTitle       | description      | status | employeeAssigned
              | Test Task       | Description 001  | To-Do  | Carlos Diaz
     Scenario 02: Task creation fails
        Case 01: Create task with invalid data
            Given I am on the "Tasks" page
            When I fill in the form with invalid data
            And I press the create task button
            Then I should see "Error: Invalid"
