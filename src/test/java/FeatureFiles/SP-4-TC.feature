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

    And Click on the element in Dialog

      | selectarrow |
      | logical     |

    And Click on the element in Dialog

      | saveButton |

    Then Verify contains text

      | successMessage | successfully |


  Scenario: (SP-4-TC-02) Check Add new field with same data - Negative Scenario

    And Click on the element in Dialog

      | addButton |

    And User sending the keys in Dialog Content

      | nameInput | group5testing |
      | codeInput | 12345         |

    And Click on the element in Dialog

      | selectarrow |
      | logical |

#    And Select on the element in Dialog
#
#      | selectFieldType | Logical |

    And Click on the element in Dialog

      | saveButton |

    Then Verify contains text

      | alreadyExists | already exists |


  Scenario: (SP-4-TC-03) Check Edit the field - Positive Scenario

    And User sending the keys in Dialog Content
      | searchName | group5testing |
      | searchCode | 12345         |

    And Click on the element in Dialog
      | searchButton |
      | editButton   |

    And User sending the keys in Dialog Content
      | nameInput | group5test |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |


  Scenario: (SP-4-TC-04) Check Delete the field - Positive Scenario

    And User sending the keys in Dialog Content
      | searchName | group5test |
      | searchCode | 12345      |

    And Click on the element in Dialog
      | searchButton    |
      | deleteButton    |
      | deleteDialogBtn |

    Then Verify contains text
      | successMessage | successfully |


  Scenario: (SP-4-TC-05) Check Delete the field already deleted - Negative Scenario

    And User sending the keys in Dialog Content
      | searchName | group5test |
      | searchCode | 12345      |

    And Click on the element in Dialog
      | searchButton |

    Then Verify contains text
      | verifyDelete | no data to display |
