Feature: File Pipeline
  I want full control on files processsing

  Scenario: Loading Input files
    Given I have posts:
        |name    |
        |hello.md|
        |world.md|
    When I initialize  the file pipeline
    Then I should see a stack of input files
