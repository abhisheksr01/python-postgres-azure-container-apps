Feature: The API to retireve the desired data 
    Scenario Outline: When user calls the base path they should be greeted
        Given the user wants to invoke API "http://127.0.0.1:3000" URL
        When the user invokes the API
        Then the user should be greeted with <EXPECTEDRESPONSE>

        Examples: Input Variables
        |EXPECTEDRESPONSE          |
        |{"message":"Hello world!"}|

    Scenario Outline: When user calls api to retrieve rates by passing a date range, origin and source code they should recieve the data
        Given the user wants to invoke API "http://127.0.0.1:3000/rates?date_from=2021-01-01&date_to=2021-01-31&orig_code=CNGGZ&dest_code=EETLL" URL
        When the user invokes the API
        Then the user should be greeted with <EXPECTEDRESPONSE>

        Examples: Input Variables
        |EXPECTEDRESPONSE          |
        |{"rates":[{"count":3,"day":"2021-01-31","price":1154.3333333333333},{"count":3,"day":"2021-01-30","price":1154.3333333333333},{"count":3,"day":"2021-01-29","price":1154.3333333333333},{"count":3,"day":"2021-01-28","price":1155},{"count":3,"day":"2021-01-27","price":1155},{"count":3,"day":"2021-01-26","price":1154.6666666666667},{"count":3,"day":"2021-01-25","price":1154.6666666666667},{"count":3,"day":"2021-01-24","price":1154.3333333333333},{"count":3,"day":"2021-01-23","price":1154.3333333333333},{"count":3,"day":"2021-01-22","price":1154.3333333333333},{"count":3,"day":"2021-01-21","price":1154.6666666666667},{"count":3,"day":"2021-01-20","price":1154.6666666666667},{"count":3,"day":"2021-01-19","price":1155},{"count":3,"day":"2021-01-18","price":1154.6666666666667},{"count":3,"day":"2021-01-17","price":1155},{"count":3,"day":"2021-01-16","price":1155},{"count":3,"day":"2021-01-15","price":1155},{"count":3,"day":"2021-01-14","price":1154.6666666666667},{"count":3,"day":"2021-01-13","price":1154.6666666666667},{"count":3,"day":"2021-01-12","price":1154.6666666666667},{"count":3,"day":"2021-01-11","price":1154.6666666666667},{"count":3,"day":"2021-01-10","price":1155},{"count":3,"day":"2021-01-09","price":1155},{"count":3,"day":"2021-01-08","price":1155},{"count":3,"day":"2021-01-07","price":1155},{"count":3,"day":"2021-01-06","price":1154},{"count":3,"day":"2021-01-05","price":1154},{"count":3,"day":"2021-01-04","price":1154.3333333333333},{"count":3,"day":"2021-01-03","price":1154.6666666666667},{"count":3,"day":"2021-01-02","price":1154.6666666666667},{"count":3,"day":"2021-01-01","price":1154.6666666666667}]}|