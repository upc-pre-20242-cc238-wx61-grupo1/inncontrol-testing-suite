Feature: Delete Tasks
    Scenario 01: Delete task successfully
        Case 01: Delete existing task
            Given I am on the "Tasks" page
            When I select a task, and click the details button
            When I press the "Delete" button
            Then I should see "Task deleted successfully."
