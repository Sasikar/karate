
Feature: JMS REST API - Test Suite 3
  interacting with JMS - ActiveMQ Server - with producing & consuming message
  # syntax:  http://192.168.1.92:8161/api/message?destination=queue://orders.input


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

    * def waitForMiliseconds =
    """
      function(pause){ java.lang.Thread.sleep(pause) }
    """


    * def auth = login("admin", "admin")
    * print auth
    * configure ssl = false
    #* configure cookies = null
    * configure followRedirects = false

    Given url "http://192.168.1.62:8161"
    And header Authorization = auth


  Scenario: Producing & Consuming Message
    Given path "/api/message"
    And param destination = "queue://sasi.input"
    And header Connection = "Keep-Alive"
    And request "Hi, Sasikar"
    When method post
    Then status 200
    * def util = Java.type("misc.MyUtils")
    * def res = get response

    * util.writeToFile("activeMQ2.json", res)
    #* assert responseTime <= 2000
    * print responseCookies
    * def cookieJSId = responseCookies.JSESSIONID
    * print cookieJSId

    # http://192.168.1.92:8161/api/message/orders.input?type=queue

    * waitForMiliseconds(1000)

    # ************************* Consuming message starts here ***************************
    Given path "/api/message/sasi.input"
    And param type = "queue"

    And cookie JSESSIONID = cookieJSId

    And header Accept-Language = "en-US,en;q=0.9"
    And header Accept-Encoding = "gzip, deflate"
    And header Authorization = auth
    And header Connection = "Keep-Alive"
    And header Accept = "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
    And header Cache-Control = "max-age=0"
    And header User-Agent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36"
    And header Upgrade-Insecure-Requests = 1

    When method get
    Then status 200
    * print responseType
    * print response
    * match response contains "Hi, Sasikar"




