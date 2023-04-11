Feature: Admin User can manage Position Categories under Human Resources Setup


  Background:
    Given  I log in as an Admin

  Scenario:Admin tries to add a Position Category without entering a name (Positive Scenario)

    And Click on the element in LeftNav

      | humanResources     |
      | setupInHumanR      |
      | positionCategories |








    And Display required element

    |searchInput|

  Scenario: Admin tries to add a duplicate position category (Negative Scenario)
