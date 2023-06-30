Feature: Login Page

    Feature Login page will work depending on the user credentials.


    Background: Pre conditions
        Given User navigate to the automation exercise login page

    Scenario Outline: Verify successful login, when correct credentials are entered
        When The user types a <user> in the username field
        And The user types a <pass> in the password field
        And The user presses Login button
        Then The user expect that the ' <logout_option>' is displayed
        Examples:
            | user                  | pass          | logout_option |
            | guidosjulca@gmail.com | #Test01       | Logout        |
            | psgenarops@gmail.com  | #Test02       | Logout        |

    Scenario Outline: Verify unsuccessful login, when wrong credentials are entered
        When The user types a <user> in the username field
        And The user types a <pass> in the password field
        And The user presses Login button
        Then The User should be displayed a '<error_message>'
        Examples:
            | user                  | pass          | error_message                        |
            | wronguser@gmail.com   | #Test01       | Your email or password is incorrect! |
            | guidosjulca@gmail.com | wrongpassword | Your email or password is incorrect! |
            | wronguser@outlook.com | wrongpassword | Your email or password is incorrect! |