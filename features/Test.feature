
@test
Feature: This is a test feature

    This demonstrates test description and details.

    Background:
        Given I visit the page

    @smoke
    Scenario: This is passing scenario
        Then I should see the title "A place to practice your automation skills!"

    @regression
    Scenario: This is passing scenario 2
        Then I should see the title "A place to practice your automation skills!"

    @smoke @regression
    Scenario: This is failing scenario
        Then I should see the title "A place to practice your automation skills!123"

    @regression
    Scenario Outline: This is multiple times running scenario
        Then I should see the title "<titleMessage>"
        Examples:
            | titleMessage                                |
            | A place to practice your automation skills! |
            | 123rdyrdy                                   |