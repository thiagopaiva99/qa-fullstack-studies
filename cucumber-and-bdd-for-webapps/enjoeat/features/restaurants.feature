#language: en

Feature: Restaurants    
    So that I can know which restaurants are available with the delivery time and evaluation note
    Being a user who wants to order food
    Can I access the restaurant list?

    Scenario: All restaurants
        When to access the list of restaurants
        Then I see all the options available

    Scenario: Categories
        When to access the list of restaurants
        Then each restaurant should display its category

    Scenario: Delivery time
        When to access the list of restaurants
        Then each restaurant should show the delivery time

    Scenario: Evaluation note
        When to access the list of restaurants
        Then each restaurant should display its evaluation note