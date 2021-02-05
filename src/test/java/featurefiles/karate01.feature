Feature: karateTestSuite1
  my first karate test suite example

  Scenario: Karate TestCase1
    # my first testcase1 example

    Given def a = 10
    And def b = 20
    When def c = a + b
    Then assert  c == 30
    And print "c = ", c

    And karate.log("end of test")


  Scenario: Karate TestCase2
    my first testcase2 example

    Given def a = 10
    * def b = 20
    When def c = a + b
    Then assert  c == 30
    * print "c = ", c

    * karate.log("end of test")

  Scenario: Karate TestCase3
    my first testcase3 example

    * def a = 10
    * def b = 20
    * def c = a + b
    * assert  c == 30
    * print "c = ", c

    * karate.log("end of test")
