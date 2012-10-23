Feature: User can search for a movie theatre by both City and State

As a movie goer ininterested in finding a local theatre
So that I can search a theatre database in order to find a local theatre
I want to search said database in order to find a local theatre 

Scenario: Add search function

Given I am on the Theatre Database home page
Then I should see "Search for a Movie Theatre"
When I fill in "search" with "Charlotte, North Carolina"
When I press "Search for Theatre"
Then I should be on the Theatre Information page
And I should see "Regal Park Terrace 6"