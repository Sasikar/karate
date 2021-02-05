Feature: CallingFeatureTestSuite
  CallingFeature

  @Rest
  Scenario: CallingFeature TestCase1
   * def result = call read("calledfeature.feature")
    * print result
    * assert result.response.string._ == "104"
