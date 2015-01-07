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
    |username|email|password|conf_pass|ok_field|
    |file:testdata/SignUpData.csv|