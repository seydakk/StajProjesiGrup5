Feature: As an Admin User I should be able to Add-Edit-Delete School Locations under School Setup

  Background:
    Given I log in as an Admin

    When Click on the element in LeftNav

      | setup       |
      | schoolSetup |
      | locations   |

    Scenario: (SP-7-TC-01) Check Add new location - Positive Scenario

      And Click on the element in Dialog

        | addButton |

      And User sending the keys in Dialog Content

        | nameInput | name2      |
        | locationShortName | shortname2  |
        | capacity  | 1000       |

      And Click on the element in Dialog
        | toggleBar |
        | saveButton |

      Then Verify contains text
        | successMessage | successfully |


