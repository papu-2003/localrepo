Feature: SauceDemo positive end-to-end scenarios

  As a QA engineer
  I want positive end-to-end scenarios for SauceDemo
  So that each scenario validates successful user flows

  Background:
    Given the user launches the SauceDemo application
    And the user is on the login page

  @tc01 @checkout @positive
  Scenario: Complete purchase journey from login to order success
    When the user enters username "standard_user"
    And the user enters password "secret_sauce"
    And the user clicks the login button
    Then the user should be redirected to the products page
    When the user adds product "Sauce Labs Backpack" to the cart from inventory page
    Then the cart badge should show "1"
    When the user opens the cart
    And the user clicks the checkout button
    And the user enters first name "John"
    And the user enters last name "Doe"
    And the user enters postal code "751001"
    And the user clicks the continue button
    Then the checkout overview page should be displayed
    When the user clicks the finish button
    Then the order confirmation message should be displayed
 