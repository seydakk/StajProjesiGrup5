Feature: As an Admin User I should be able to Add-Edit-Delete Position Categories Under Human Resources Setup

  Background:
    Given  I log in as an Admin

    When Click on the element in LeftNav

      | humanResources     |
      | setupInHumanR      |
      | positionCategories |

  Scenario: (SP-1-TC-01) Check Add new position category - Positive Scenario










    Then Display required element

    |searchInput|

  Scenario: (SP-1-TC-02) Check Add new position category with same data - Negative Scenario

  Scenario: (SP-1-TC-03) Check Edit the position category - Positive Scenario

  Scenario: (SP-1-TC-04) Check Delete the position category - Positive Scenario

  Scenario: (SP-1-TC-05) Check Delete the position category already deleted - Negative Scenario
