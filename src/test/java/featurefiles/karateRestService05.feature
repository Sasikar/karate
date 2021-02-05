Feature: RestServiceTestSuit
  Rest Service Testing

  @Rest
  Scenario: RestService TestCase1
    # my first testcase1 example

    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"
    When method POST
    Then status 200
    * print responseHeader
    * print responseType
    * print responseTime
    * print response
    * match response contains 104
    * match response //string == 104

