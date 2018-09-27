Feature: Calculate tip amount
    As a client
    I want to calculate the tip amount
    To pay the total value

   Scenario Outline: Calculate the total amount with the tip
        Given I am on the FasTip home screen
        When I fill the bill amount with <value>
        Then I should see the "<total>" amount

    Examples:
    | value | total     |
    | 30    | $34.50    |
    | 100   | $115.00   |
    | 320   | $368.00   |

    Scenario: Change tip Porcentage
        Given I am on the FasTip home screen
        When I change the tip percentage
        Then I should see the new tip percentage