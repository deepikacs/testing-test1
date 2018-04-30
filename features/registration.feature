@create_issues
Feature: As a end user
I should able to Create an Issue

@login
Scenario: login
Given I am in login in page 
When I click login button and see login popup
And I entered valid usename and password
Then I should see successful signin

@homepage
Scenario: bugtracker home page
Given I am in bugtracker home page
When I click create button 
Then I should see create new issue popup

@create_new_issue_popup
Scenario:create_new_issue_popup
Given I am in create_issue_popup
When I entered valid data for mandatory fields 
And I click on ok button
Then I able to see new issue in bugtracker home page

@verify_new_issue
Scenario:verify_new_issue
Given I am in bugtrackers home page
Then I should see new issue was created


