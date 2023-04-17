Feature: As an Admin User I should be able to Add-Edit-Delete Documents under Parameters Setup

  Background:
    Given  I log in as an Admin

    When Click on the element in LeftNav

      | setup         |
      | parameters    |
      | documentTypes |

  Scenario: (SP-3-TC-01) Check Add new document - Positive Scenario

    And Click on the element in Dialog

      | addButton |

    And User sending the keys in Dialog Content

      | nameInput | group5testing |

    And Click on the element in Dialog

      | selectStageNewDoc |
      | employment        |

    And Send the ESCAPE signal

    And Click on the element in Dialog

      | saveButton |

    Then Verify contains text

      | successMessage | successfully |

    Then Display required element
      | searchBox |

  Scenario: (SP-3-TC-02) Check Add new document with same data - Negative Scenario

    And Click on the element in Dialog

      | addButton |

    And User sending the keys in Dialog Content

      | nameInput | group5testing |

    And Click on the element in Dialog

      | selectStageNewDoc  |
      | employment         |

    And Send the ESCAPE signal

    And Click on the element in Dialog

      | saveButton |

    Then Verify contains text

      | alreadyExists | already exists |

    Then Display required element
      | searchBox |

  Scenario: (SP-3-TC-03) Check Edit the document - Positive Scenario

    And User sending the keys in Dialog Content

      | searchName | group5testing |

    And Click on the element in Dialog

      | selectStageEditDoc |
      | employment         |

    And Click on the element in Dialog

      | searchButton |
      | editButton   |

    And User sending the keys in Dialog Content

      | nameInput | ggroup5test |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |

    Then Display required element
      | searchBox |

  Scenario: (SP-3-TC-04) Check Delete the field - Positive Scenario

    And User sending the keys in Dialog Content

      | searchName | ggroup5test |

    And Click on the element in Dialog

      | selectStageEditDoc |
      | employment         |

    And Click on the element in Dialog

      | searchButton    |
      | deleteButton    |
      | deleteDialogBtn |

    Then Verify contains text

      | successMessage | successfully |

    Then Display required element
      | searchBox |

  Scenario: (SP-3-TC-05) Check Delete the field already deleted - Negative Scenario

    And User sending the keys in Dialog Content

      | searchName | ggroup5test |

    And Click on the element in Dialog

      | selectStageEditDoc |
      | employment         |

    And Click on the element in Dialog

      | searchButton |

    Then Verify contains text

      | verifyDelete | no data to display |

    Then Display required element
      | searchBox |