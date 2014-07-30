Feature: File Pipeline
  As a developer, I want to have a full access of the files managed, and processed by the app
  during runtime.
  This is to offer a simple API for parts of the programs which needs access to the files processed

  Scenario: Loading Input files
    Given I have a root directory
    And There is a posts directory in the root directory
    When I initialize initialize the file pipeline
    Then  I should have a stack of input files
