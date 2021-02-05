Feature: karateTestSuite09
  reading the payload data from external xml file

  @soap
  Scenario: soap api TestCase1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request read("./soapPayload.xml")
    * def result = call read('classpath:soapPayload.xml')
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    * print responseHeaders
    * print responseHeaders["Server"]
    * match responseHeaders["Server"][0] == "Microsoft-IIS/7.5"
    * match responseHeaders["Server"] == ["Microsoft-IIS/7.5"]
    * print responseType == "xml"
    * print response
    * match response contains "98.6"
    * match response //CelsiusToFahrenheitResult == 98.6
    * print responseTime
    * assert responseTime <= 2000
    * print responseStatus
