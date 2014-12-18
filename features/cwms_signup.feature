Feature: Testing for signup page

  Scenario: successful signup
    Given I want to use the browser Firefox
    When I type "email_add" in the email_address input field
    When I type "password" in the password input field
    When I type "confirm_password" in the confirm_password input field
    And I will click on OK button
    Then I see the successful signup page

  Scenario: signup with duplicate email address

    Given I want to use the browser Firefox
    When I type "duplicate_email_add" in the email_address input field
    And change the focus from email_address input field
    Then I see the email address validation error message "Email already taken"

  Scenario: signup with invalid email address format

    Given I want to use the browser Firefox
    When I type "invalid_email_add" in the email_address input field
    And change the focus from email_address input field
    Then I see the email address validation error message "please enter the valid email address"

  Scenario : signup when password and confirm password did not match

    Given I want to use the browser Firefox
    When I type "email_add" in the email_address input field
    When I type "password" in the password input field
    When I type "confirm_password" which is not matched with the password the confirm_password input field
    And I will click on OK button
    Then I see the password mismatch validation error message "Password doesn't match the confirmation"

   Scenario : signup without entering mandatory field email address

    Given I want to use the browser Firefox
    When I did not type "email_add" in the email_address input field
    When I type "password" in the password input field
    When I type "confirm_password" in the confirm_password input field
    And I will click on OK button
    Then I see  email address validation error message "email address can't be blank"

  Scenario : signup without entering mandatory field password

    Given I want to use the browser Firefox
    When I  type "email_add" in the email_address input field
    When I did not type "password" in the password input field
    When I type "confirm_password" in the confirm_password input field
    And I will click on OK button
    Then I see  password validation error message "Password doesn't match the confirmation"

  Scenario : signup without entering mandatory field confirm password

    Given I want to use the browser Firefox
    When I  type "email_add" in the email_address input field
    When I  type "password" in the password input field
    When I did not type "confirm_password" in the confirm_password input field
    And I will click on OK button
    Then I see  confirm password validation error message "Password doesn't match the confirmation"

  Scenario : signup without entering mandatory fields

    Given I want to use the browser Firefox
    When I  did not type "email_add" in the email_address input field
    When I did not type "password" in the password input field
    When I did not type "confirm_password" in the confirm_password input field
    And I will click on OK button
    Then I see  the  validation error message for mandatory fields "email address can't be blank"


  Scenario : Validate the Mock Licence Link

    Given I want to use the browser Firefox
    When  I click on the mock license link
    Then I see  the mock license page

