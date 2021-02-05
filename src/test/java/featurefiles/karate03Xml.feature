Feature: karateTestSuite3
  my first karate test suite example

  Scenario: Karate Json TestCase1
    # my first testcase1 example
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * print xml\info\id
    * print xml.info.id
    * print xml.info.tool.name

  Scenario: Karate Json TestCase3
    # my first testcase1 example
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml\info\id == "101"
    * match xml.info.tool.name == "Karate"

  Scenario: Karate Json TestCase4
    # my first testcase1 example
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml\info\id == "101"

    * match xml contains  "Karate"

  Scenario: Karate Json TestCase5
    # my first testcase1 example
    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * match xml\info\id == "101"


    * match xml contains  "<name>Karate</name>"



  Scenario: Karate Json TestCase6
    # my first testcase1 example
    Given def xml =
    """
  <info>

  <tool>
  <name>Karate</name>
  <version>0.9.6</version>
  </tool>
  <tool>
  <name>IntelliJ</name>
  <version>2020.2</version>
  </tool>
  </info>
  """
    * match xml/info/tool[1]/name contains  "Karate"
    * match xml/info/tool[2]/name contains  "IntelliJ"
    * assert true && true

    * assert (   xml/info/tool[1]/name contains  "Karate" &&  assert xml/info/tool[2]/name contains  "IntelliJ" )




