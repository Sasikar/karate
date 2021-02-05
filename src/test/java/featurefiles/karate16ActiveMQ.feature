
Feature: JMS REST API  - Test Suite 1
  interacting with JMS - ActiveMQ Server

  Background: Init
    * def login =
    """
    function(uid, pwd) {
        var temp = uid + ':' + pwd;
        var Base64 = Java.type('java.util.Base64');
        var encoded = Base64.getEncoder().encodeToString(temp.bytes);
        return 'Basic ' + encoded;
    }
    """
    * def auth = login("admin", "admin")
    * print auth
    #* configure ssl = true

    Given url "http://192.168.1.62:8161"
    And header Authorization = auth


  Scenario: Getting ActiveMQ Server Status
    Given path "/api/jolokia"
    When method get
    Then status 200
    * print responseType
    * def util = Java.type("misc.MyUtils")
    * def res = get response

    * util.writeToFile("activeMQ.json", res)
    * assert responseType == "json"
    * match response.value.agent == "1.3.4"
    * match response.value.info.product == "activemq"



