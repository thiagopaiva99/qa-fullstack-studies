Scenario: Withdraw in checking account
    Given that I have R$ 1000 in my checking account
    When I make a withdraw of R$ 200
    Then my balance should be R$ 800

Scenario: I don't have balance
    Given that I have R$ 0 in my checking account
    When I make a withdraw of R$ 100
    Then show the message "Insufficient balance for withdraw :/"
    And my balance should be R$ 0
    
Scenario: I have balance but not enough
    Given that I have R$ 500 in my checking account
    When I make a withdraw of R$ 501
    Then show the message "Insufficient balance for withdraw :/"
    And my balance should be R$ 500

Scenario: Limit for withdraw
    Given that I have R$ 1000 in my checking account
    When I make a withdraw of R$ 701
    Then show the message "Maximum service limit is R$ 700 :/"
    And my balance should be R$ 1000