Feature: karateTestSuite2
  my first karate test suite example

  Scenario: Karate Json TestCase1
    # my first testcase1 example
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    * print json.id
    * print json.tool.name

  Scenario: Karate Json TestCase2
    # my first testcase1 example
    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
    """
    * print json
    * print json.id
    * print json.tool.name

  Scenario: Karate Json TestCase3
    # my first testcase1 example
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}

    * assert json.id == "101"
    * assert json.tool.name == "Karate"

  Scenario: Karate Json TestCase4
    # my first testcase1 example
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}

    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: Karate Json TestCase5
    # my first testcase1 example
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}

    * match json.tool == { "name":"Karate", "version":"0.9.7"}