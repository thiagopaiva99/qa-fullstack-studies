#language:en

Feature: What is the food day
    We want to know what is the food day at Porto Alegre

    Scenario Outline: Food Day
        Given that today is <day>
        When I ask what is the food day
        Then the answer should be <answer>

        Examples:
        | day           | answer         |
        | "Monday"      | "Strogonoff"   |
        | "Tuesday"     | "Parmeggiana"  |
        | "Wednesday"   | "Barbecue"     |
        | "Thursday"    | "Lamen"        |
        | "Friday"      | "Hamburguer"   |
        | "Saturday"    | "Fries"        |
        | "Sunday"      | "Pizza"        |
        | "Other Value" | "Dia Inválido" |