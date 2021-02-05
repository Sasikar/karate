Feature: CallingJavaTestSuite
  CallingJava Methods

  Scenario: Non static method TC

    * def env1 =
      """
      function()
      {
      var object  = Java.type('misc.Utils')
      var utils = new object();
      return utils.method2();
      }
      """

    * print env1()

    * def res = call env1

    * print res


  Scenario:  static method TC

    * def env2 =
      """
      function()
      {
      var object  = Java.type('misc.Utils')

      return object.method9()
      }
      """

    * print env2()

