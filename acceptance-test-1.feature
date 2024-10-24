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


Feature: Select Tasks
    Scenario 01: Select task successfully
        Case 01: Select a task
            Given I am on the "Tasks" page
            When I select a task
            And I should see a pop-up of the task
            Then I should view the details of the selected task

            
Feature: Edit Tasks
    Scenario 01: Edit task successfully
        Case 01: Edit task with valid data
            Given I am on the "Tasks" page
            When I update the task with valid data
            And I press "Save Changes"
            Then I should see "Task updated successfully."
            Examples:
              | taskTitle       | description      | status | employeeAssigned
              | Test Task       | Description 001  | Done   | Carlos Diaz
    Scenario 02: Edit task fails
        Case 01: Edit task with invalid data
            Given I am on the "Tasks" page
            When I update the task with invalid data
            And I press "Save Changes"
            Then I should see "Error: Invalid"

            
Feature: Confirm Task Editing
    Scenario 01: Confirm task edit successfully
        Case 01: Confirm changes
            Given I have made changes to a task
            When I press "Confirm Edit"
            Then I should see "Changes confirmed successfully."


Feature: Save Task Changes
    Scenario 01: Save changes successfully
        Case 01: Save changes made to tasks
            Given I am on the "Edit Task" page
            When I make changes to a task
            And I press "Save Changes"
            Then I should see "Changes saved successfully."


Feature: Delete Tasks
    Scenario 01: Delete task successfully
        Case 01: Delete existing task
            Given I am on the "Tasks" page
            When I select a task, and click the details button
            When I press the "Delete" button
            Then I should see "Task deleted successfully."
