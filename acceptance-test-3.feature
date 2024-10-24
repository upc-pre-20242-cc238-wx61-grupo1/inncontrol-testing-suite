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
