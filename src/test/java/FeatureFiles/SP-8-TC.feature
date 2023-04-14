Feature: As an Admin User I should be able to Add-Edit-Delete Fields under Parameters Setup

  Background:
    Given  I log in as an Admin

    When Click on the element in LeftNav

      | setup       |
      | schoolSetup |
      | departments |

  Scenario: (SP-8-TC-01) Check Add new field - Positive Scenario

    And Click on the element in Dialog

      | addButton |

    And User sending the keys in Dialog Content

      | nameInput | group5testing |
      | codeInput | 12345         |


    And Click on the element in Dialog

      | saveButton |

    Then Verify contains text

      | successMessage | successfully |

    Then Display required element
      | searchBox |


  Scenario: (SP-8-TC-02) Check Add new field with same data - Negative Scenario

    And Click on the element in Dialog

      | addButton |

    And User sending the keys in Dialog Content

      | nameInput | group5testing |
      | codeInput | 12345         |

    And Click on the element in Dialog

      | saveButton |

    Then Verify contains text

      | alreadyExists | already exists |


  Scenario: (SP-8-TC-03) Check Edit the field - Positive Scenario

    And Admin searches for data to be edited manually
      | group5testing | 12345 |

    And User sending the keys in Dialog Content
      | nameInput | group5test |
      | codeInput | 12345      |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |


  Scenario: (SP-8-TC-04) Check Delete the field - Positive Scenario
    And Admin searches for data to be deleted manually
      | group5test | 12345 |

    And Click on the element in Dialog
      | deleteDialogBtn |

    Then Verify contains text
      | successMessage | successfully |


  Scenario: (SP-8-TC-05) Check Delete the field already deleted - Negative Scenario

    And Admin searches for data to be deleted manually
      | group5test | 12345 |

    Then Verify no data to display
      | group5test | 12345 |
