Feature: Serving The Files
  I need to see what My posts will look like in the browser

  Scenario: The index page
    Given I run "blogdown server"
    When I visit "/" in a browser
    Then I should see an Index Page

  Scenario: Listing of files
    Given I have the following files:
        |name    |
        |hello,md|
        |world.md|
    When I serve the project
    And Visit "/"
    Then I should see a list containing the files
