Feature: Task manager
  In order to use system tasks
  A user
  Should be able to add, update, delete and execute task according to their authority

#    Background: tasks in database
#      Given the following taska exists:
#	| code | title     | sequence | rrpute | description   | general | active |
#	| 001  | Tarea 001 | 100      |        | Desc. Tar 001 | true    | true   |
#	| 002  | Tarea 002 | 200      |        | Desc. Tar 002 | true    | true   |

    Scenario: Normal User can see taks
      Given I am logged in
      And I am on the task page
      Then I should see "Title"
      And I should see "Go"
      And I should not see "Code"
      And I should not see "New Task"
      
    Scenario: Administrator User can see taks
      Given I am logged in as an admin user
      And I am on the task page
#      Then show me the page
      Then I should see "Code"
      And I should see "Go"
      And I should see "New Task"
      
    Scenario: Administrator User add a new task
      Given I am logged in as an admin user
      And I am on the new task page
      When I fill in "Code" with "C003"
      And I fill in "Title" with "Task 003"
      And I fill in "Sequence" with "300"
      And I press "Update"
#      Then show me the page
      Then I should be on the show page for task "C003"
      And I should see "C003"

    Scenario: Administrator User not add a new task
      Given I am logged in as an admin user
      And I am on the new task page
      When I fill in "Code" with "C003"
      And I fill in "Title" with ""
      And I fill in "Sequence" with "300"
      And I press "Update"
      And I am on the new task page


 