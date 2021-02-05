Feature: karateTestSuite10
  validating JSON output of restapi with get method

  @rest
  Scenario: rest api TestCase1
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method get
    Then status 200
    * match resposeType == "json"
    * match response.status == "success"
    * match response.data[0].employee_name == "Tiger Nixon"

    * match status  == "#string"

