Feature: karateTestSuite07
  validate data types of variables

  Scenario: Data Type Validation Test Case
    # my first testcase1 example

    Given def a = 10
    And def b = "karate"
    * def c = true
    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"
    * print "#number"


