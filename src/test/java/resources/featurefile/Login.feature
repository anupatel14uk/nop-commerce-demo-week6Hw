@regression

Feature: Check Login Page Functionality

  @smoke
  Scenario: User Should Navigate To Login Page SuccessFully

    Given User should on Login Page
    When  Click On Login Link
    Then  Verify welcome text "Welcome, Please Sign In!"

  @sanity
  Scenario Outline: Verify Login Page Functionality with Diffrent Credential

    Given User should on Login Page
    When  Click On Login Link
    And   Enter Email Id "<email>"
    And   Enter Password "<password>"
    And   Click On Login Button
    Then  Verify Message and Links "<MessageAndLink>"

    Examples:
      | email                     | password | MessageAndLink                                                                            |
      | anupatel1234@gmail.com    | 123@abc  |Login was unsuccessful. Please correct the errors and try again.\nNo customer account found|
      | patelanu987@gmail.com     | abc@1234 | Logout|
      | patelanu987@gmail.com     | abc@1234 | Check|

