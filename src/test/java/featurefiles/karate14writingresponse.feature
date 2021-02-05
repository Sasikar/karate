Feature:  karate writing response suite
  writing response


  Scenario: writing response to file
    * def util = Java.type("misc.MyUtils")

    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    * def res =  get response
    #* def res =  get response $.data[0].email
    * print res
    * util.writeToFile("jsonresult.json", res)

  Scenario: reading result file
    * def data = read("classpath:jsonresult.json")
    * print data

