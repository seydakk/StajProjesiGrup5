Feature: As an Admin User I should be able to Add-Edit-Delete Position Categories Under Human Resources Setup

  Background:
    Given  I log in as an Admin

    When Click on the element in LeftNav

      | humanResources     |
      | setupInHumanR      |
      | positionCategories |

  Scenario: (SP-1-TC-01) Check Add new position category - Positive Scenario

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | Quality Assurance |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |

    Then Display required element
      | searchInput |

  Scenario: (SP-1-TC-02) Check Add new position category with same data - Negative Scenario

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | Quality Assurance |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | alreadyExists | already exists |

  Scenario: (SP-1-TC-03) Check Edit the position category - Positive Scenario

    And User sending the keys in Dialog Content
      | searchName | Quality Assurance |

    And Click on the element in Dialog
      | searchButton |
      | editButton   |

    And User sending the keys in Dialog Content
      | nameInput | Quality |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |

  Scenario: (SP-1-TC-04) Check Delete the position category - Positive Scenario

    And User sending the keys in Dialog Content
      | searchName | Quality |

    And Click on the element in Dialog
      | searchButton    |
      | deleteButton    |
      | deleteDialogBtn |

    Then Verify contains text
      | successMessage | successfully |

  Scenario: (SP-1-TC-05) Check Delete the position category already deleted - Negative Scenario

    And User sending the keys in Dialog Content
      | searchName | Quality |

    And Click on the element in Dialog
      | searchButton |

    Then Verify contains text
      | verifyDelete | no data to display |