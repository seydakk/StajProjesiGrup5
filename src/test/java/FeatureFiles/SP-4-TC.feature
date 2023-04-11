Feature: As an Admin User I should be able to Add-Edit-Delete Fields under Parameters Setup

  Background:
    Given  I log in as an Admin

    When Click on the element in LeftNav

      | setup      |
      | parameters |
      | fields     |

  Scenario: (SP-4-TC-01) Check Add new field - Positive Scenario

    And Click on the element in Dialog

      | addButton |

    And User sending the keys in Dialog Content

      | nameInput | group5testing |
      | codeInput | 12345         |

    And Select on the element in Dialog

      | selectFieldType | Text |

    And Click on the element in Dialog

      | saveButton |

    Then Verify contains text

      | successMessage | successfully |


  Scenario: (SP-4-TC-02) Check Add new field with same data - Negative Scenario

  Scenario: (SP-4-TC-03) Check Edit the field - Positive Scenario

  Scenario: (SP-4-TC-04) Check Delete the field - Positive Scenario

  Scenario: (SP-4-TC-05) Check Delete the field already deleted - Negative Scenario


