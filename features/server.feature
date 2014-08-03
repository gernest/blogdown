Feature: Serving The Files
  I need to preview my posts in the browser

  Scenario: The index page
    When I run command "server"
    When I visit "/"
    Then I should see an Index Page

