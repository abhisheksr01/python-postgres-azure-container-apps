Feature: The API to retireve the desired data 
    Scenario Outline: When user calls the base path they should be greeted
        Given the user wants to invoke API "http://127.0.0.1:3000" URL
        When the user invokes the API
        Then the user should be greeted with <EXPECTEDRESPONSE>

        Examples: Input Variables
        |EXPECTEDRESPONSE          |
        |{"message":"Hello world!"}|