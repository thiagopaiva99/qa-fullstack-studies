# language:en

Feature: Search
    So I can see the list of courses available
    Beign a student
    I can search for a course in the portal

    Scenario: Course not found
        When I make a search for "Selenium IDE" term
        Then I should see the notification "Desculpe não encontramos o curso que procura =("