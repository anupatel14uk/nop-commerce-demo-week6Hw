@regression

Feature: Check Register Page Functionality

  @sanity
  Scenario: Verify that User should Navigate to Register Page Successfully
    Given   Click On Register Link
    Then    Verify Register Text "Register"

  @smoke
  Scenario: Verify that all Mendetory Field require on Register Page
    Given Click On Register Link
    When  Click On Register Button
    Then  Verify First Name Error Message "First name is required."
    Then  Verify Last Name Error Message  "Last name is required."
    Then  Verify Email Error Message  "Email is required."
    Then  Verify Password Error Message "Password is required."
    Then  Verify Confirm Password Error Message "Password is required."

  @smoke
  Scenario: Verify That User should Create Account Successfully
    Given   Click On Register Link
    When    Select Gender "Female"
    And     Enter First Name "anu"
    And     Enter Last Name "Patel"
    And     Select Day "24"
    And     Select Month  "March"
    And     Select Year "1990"
    And     Enter Email "patelanu987@gmail.com"
    And     Enter Password for Register "abc@1234"
    And     Enter Confirm Password "abc@1234"
    And     Click On Register Button
    Then    Verify Message "Register"

