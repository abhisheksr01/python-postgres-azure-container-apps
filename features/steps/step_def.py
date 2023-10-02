import requests
import json
from behave import given, when, then


@given('the user wants to invoke API "{url}" URL')
def step_impl_given(context, url):
    context.url = url


@when("the user invokes the API")
def step_impl_when(context):
    response = requests.get(context.url)
    context.response = response


@then("the user should be greeted with {expectedresponse}")
def step_impl(context, expectedresponse):
    expected_greeting = json.loads(expectedresponse)
    assert (
        context.response.json() == expected_greeting
    ), f"The response do not match, Expected: {expected_greeting} Actual: {context.response.json()}"
