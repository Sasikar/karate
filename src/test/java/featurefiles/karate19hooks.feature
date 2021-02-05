Feature: hookTestsuite19
  usingScenarioAndTestFixture

  Background: init

    * print "from backgrounfblock"

    #* configure afterScenario =
    #"""
    #function (){
   # karate.log("from after scenario")
   # }
   # """
    * configure afterFeature =
    """
    function (){
    karate.log("from after feature")
    }
    """

  Scenario: hookTestcase1
    # my first testcase1 example
    * print "from scebarioblock"
