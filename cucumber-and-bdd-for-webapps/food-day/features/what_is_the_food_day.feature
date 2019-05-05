#language:en

Feature: What is the food day
    We want to know what is the food day at Porto Alegre

    Scenario: Today is day of Strogonoff
        Given that today is Monday
        When I ask what is the food day
        Then the answer should be "Strogonoff"

    Scenario: Today is day of Parmeggiana
        Given that today is Tuesday
        When I ask what is the food day
        Then the answer should be "Parmeggiana"