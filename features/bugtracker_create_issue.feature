@bugtracker_create_Issues
Feature: As a end user
I should be able to login application
so that I should be able to Create an Issue

@smoke
Scenario: trying to login with valid credential
Given I am in Bugtracker home page
When I login with valid username and password
Then I should see message "Signed in Successfully"

@create_Issue_and_verify
Scenario: trying to create issue with valid data for all fields and verify
Given I am in Bugtracker dashboard page
When I create a issue with valid data 
Then I sholud see issue which was created in the list