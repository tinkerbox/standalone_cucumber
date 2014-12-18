Feature: Testing for signup page

  Scenario Outline: successful signup
    Given I'm on "https://github.com/join" page
    When I type "<username>" in the "<username_field>" input field
    When I type "<email>" in the "<email_field>" email field
    When I type "<password>" in the "<password_field>" password field
    When I type "<conf_pass>" in the "<confpass_field>" confirm field
    When I will click on "<ok_field>" button
    Then I should see "Welcome to GitHub" in label "<welcome_msg_field>"
  Examples:
    |username|username_field        | email          |email_field |password|password_field|conf_pass|confpass_field|ok_field|welcome_msg_field|
    |cwms15   |.//*[@id='user_login']|cwmsy3@gmail.com15|.//*[@id='user_email']|Cwms123456|.//*[@id='user_password']|Cwms123456|.//*[@id='user_password_confirmation']|signup_button|.//*[@id='site-container']/div/div[1]/h1|
##  Scenario Outline:  unsuccessful sign upfield
##    Given I'm on "https://github.com/join" page
##    When I type "<username>" in the "<username_field>" input
##    When I type "<email>" in the "<email_field>" email field
##    When I type "<password>" in the "<password_field>" password field
##    When I type "<conf_pass>" in the "<confpass_field>" confirm field
##    When I will click on "<ok_field>" button
##    Then I should see "<error_message>" in label "<field show error message>"
#
#  Examples:
#    |username|username_field        | email          |email_field |password|password_field|conf_pass|confpass_field|ok_field|welcome_msg_field|field show error message|error_message|
#    |cwms_1    |.//*[@id='user_login']|cwmsy3@gmail.com5|.//*[@id='user_email']|Cwms123456|.//*[@id='user_password']|Cwms123456|.//*[@id='user_password_confirmation']|signup_button|.//*[@id='site-container']/div/div[1]/h1|.//*[@id='signup-form']/dl[2]/dd[2]|Email is invalid or already taken|
#    |    |.//*[@id='user_login']|cwmsy3@gmail.com5|.//*[@id='user_email']|Cwms123456|.//*[@id='user_password']|Cwms123456|.//*[@id='user_password_confirmation']|signup_button|.//*[@id='site-container']/div/div[1]/h1|.//*[@id='signup-form']/dl[1]/dd[2]|Login can't be blank|
#    |cwms_1 |.//*[@id='user_login']|cwmsy3@gmail.com5|.//*[@id='user_email']|Cwms123456|.//*[@id='user_password']|Cwms123456|.//*[@id='user_password_confirmation']|signup_button|.//*[@id='site-container']/div/div[1]/h1|.//*[@id='signup-form']/dl[3]/dd[2]|Password can't be blank and is too short (minimum is 7 characters)|
#    |cwms_1 |.//*[@id='user_login']|cwmsy3@gmail.com5|.//*[@id='user_email']|Cwms12|.//*[@id='user_password']|Cwms12|.//*[@id='user_password_confirmation']|signup_button|.//*[@id='site-container']/div/div[1]/h1|.//*[@id='signup-form']/dl[3]/dd[2]|Password can't be blank and is too short (minimum is 7 characters)|
#    |cwms_1 |.//*[@id='user_login']|cwmsy3@gmail.com5|.//*[@id='user_email']|Cwms12345|.//*[@id='user_password']|Cwms123456|.//*[@id='user_password_confirmation']|signup_button|.//*[@id='site-container']/div/div[1]/h1|.//*[@id='signup-form']/dl[3]/dd[2])|Password doesn't match the confirmation|

#  Scenario: signup with duplicate email address
#
#    Given I want to use the browser Firefox
#    When I type "duplicate_email_add" in the email_address input field
#    And change the focus from email_address input field
#    Then I see the email address validation error message "Email already taken"
#
#  Scenario: signup with invalid email address format
#
#    Given I want to use the browser Firefox
#    When I type "invalid_email_add" in the email_address input field
#    And change the focus from email_address input field
#    Then I see the email address validation error message "please enter the valid email address"
#
#  Scenario : signup when password and confirm password did not match
#
#    Given I want to use the browser Firefox
#    When I type "email_add" in the email_address input field
#    When I type "password" in the password input field
#    When I type "confirm_password" which is not matched with the password the confirm_password input field
#    And I will click on OK button
#    Then I see the password mismatch validation error message "Password doesn't match the confirmation"
#
#  Scenario : signup without entering mandatory field email address
#
#    Given I want to use the browser Firefox
#    When I did not type "email_add" in the email_address input field
#    When I type "password" in the password input field
#    When I type "confirm_password" in the confirm_password input field
#    And I will click on OK button
#    Then I see  email address validation error message "email address can't be blank"
#
#  Scenario : signup without entering mandatory field password
#
#    Given I want to use the browser Firefox
#    When I  type "email_add" in the email_address input field
#    When I did not type "password" in the password input field
#    When I type "confirm_password" in the confirm_password input field
#    And I will click on OK button
#    Then I see  password validation error message "Password doesn't match the confirmation"
#
#  Scenario : signup without entering mandatory field confirm password
#
#    Given I want to use the browser Firefox
#    When I  type "email_add" in the email_address input field
#    When I  type "password" in the password input field
#    When I did not type "confirm_password" in the confirm_password input field
#    And I will click on OK button
#    Then I see  confirm password validation error message "Password doesn't match the confirmation"
#
#  Scenario : signup without entering mandatory fields
#
#    Given I want to use the browser Firefox
#    When I  did not type "email_add" in the email_address input field
#    When I did not type "password" in the password input field
#    When I did not type "confirm_password" in the confirm_password input field
#    And I will click on OK button
#    Then I see  the  validation error message for mandatory fields "email address can't be blank"
#
#
#  Scenario : Validate the Mock Licence Link
#
#    Given I want to use the browser Firefox
#    When  I click on the mock license link
#    Then I see  the mock license page
#
