Feature: RestServiceTestSuit
  DDT Testing

  @DDT
  Scenario Outline: DDT TestCase1
    # DDT testing

    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Temp>"
    When method POST
    Then status 200
    * print responseHeader
    * print responseType
    * print responseTime
    * print response
    #* match response contains 104
    * match response //string == <Result>

    Examples:
    |Temp|Result|
    |37  |98.6  |
    |40  |104   |

  @DDT
  Scenario Outline: DDT TestCase2
    # DDT testing

    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Temp>"
    When method POST
    Then status 200
    * print responseHeader
    * print responseType
    * print responseTime
    * print response
    #* match response contains 104
    * match response //string == <Result>

    Examples:
      | read("classpath:data.csv")|




