Feature: Select Tasks
    Scenario 01: Select task successfully
        Case 01: Select a task
            Given I am on the "Tasks" page
            When I select a task
            And I should see a pop-up of the task
            Then I should view the details of the selected task
