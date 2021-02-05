Feature: Kafka Test Suite1
  Using Kafka Rest Proxy

  Background: Init
    Given url "http://192.168.1.62:8082"

  Scenario: Getting List of Topics & specific topic
    Given path "/topics"
    When method get
    Then status 200
    * print response
    * assert responseType == "json"
    * match response[1] contains "confluent"
    * def topic = response[1]
    * print topic

    Given path "/topics/" + topic
    When method get
    Then status 200
    * print response
    * assert response.name == topic


  Scenario: Negative Test Case - non-existing topic
    Given path "/topics/rest123"
    When method get
    Then status 404
    * print response
    * match response.message == "This server does not host this topic-partition."
