Feature: karateTestSuite4
  validating soap api

  @soap
  Scenario: soap api TestCase1
    Given url "http://www.dneonline.com/calculator.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request
    """
   <?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <Add xmlns="http://tempuri.org/">
      <intA>10</intA>
      <intB>20</intB>
    </Add>
  </soap:Body>
</soap:Envelope>


 """
    When soap action "http://tempuri.org/Add"
    Then status 200

    * match response contains "30"

    * print responseType
    * print responseHeaders
    * print response
    * print responseTime
    * assert responseTime <= 2000
    * print responseStatus
    * match responseHeaders["Server"] == ["Microsoft-IIS/8.0"]
    * match response //AddResult == 30


