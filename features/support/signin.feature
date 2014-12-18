Feature: Testing for login page

  Scenario Outline: Successful login

    Given I want to use the browser [browser]
    When I type "username" in the username input field
    When I type "password" in the password input field
    And I click the sign in button
    Then I am on the CWMS home page

  Examples:
    |	    browser	 |
    |	    Firefox	 |
    |	    Chrome       |
    |     InternetExplorer   |

  Scenario: Login without password

    Given I want to use the browser Firefox
    When I type "username" in the username input field
    And I click the sign in button
    Then I see the login error message "Please provide a password."
    And I am on the login page

  Scenario: Login with bad password

    Given I want to use the browser Firefox
    When I type "username" in the username input field
    When I type "inv_pass" in the password input field
    And I click the login button
    Then I see the login error message "The password provided does not match the username entered."
    And I am on the login page

  Scenario: Login without username

    Given I want to use the browser Firefox
    When I type password in the password input field
    And I click the login button
    Then I see the login error message "Please provide a password."
    And I am on the login page

  Scenario: Login without username  and password

    Given I want to use the browser Firefox
    When I did not type password in the password input field
    And I click the login button
    Then I see the login error message "Please provide a password."
    And I am on the login page
