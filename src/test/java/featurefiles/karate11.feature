Feature: karateTestSuite11
  end to end API testing ( API CHAINING)

  @rest
  Scenario: rest api TestCase1
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"sasi","salary":"123","age":"23"}
    When method post
    Then status 200
    * print response
    * def id = response.data.id
    * print id

    Given url "http://dummy.restapiexample.com/api/v1/employee/"+ id
    When method get
    Then status 200
    * print response
    * assert response.data.id == id

    Given url "http://dummy.restapiexample.com/api/v1/update/"+ id
    And request {"name":"sasi","salary":"123","age":"32"}
    And method put
    Then status 200
    * print response

    Given url "http://dummy.restapiexample.com"
    And path "/api/v1/update/"+ id
    And method delete
    Then status 200
    * print response
    * assert response.message == "#regex //w+"




