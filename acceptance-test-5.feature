
Feature: Save Task Changes
    Scenario 01: Save changes successfully
        Case 01: Save changes made to tasks
            Given I am on the "Edit Task" page
            When I make changes to a task
            And I press "Save Changes"
            Then I should see "Changes saved successfully."
