Feature: configReadingTestsuite18
  configReadingTestsuite18


  Scenario: ConfigReading
    # my first testcase1 example

    Given url baseUrl
    And path listUsers
    When method get
    * status 200
    * print response
