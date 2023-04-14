Feature: As an Admin User I should be able to Add-Edit-Delete Bank Account Under Setup-Parameters

  Background:
    Given  I log in as an Admin

    When Click on the element in LeftNav

      | setup       |
      | parameters  |
      | bankAccount |

  Scenario: (SP-9-TC-01) Check Add new bank account - Positive Scenario

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput       | Grup5                            |
      | iban            | TR11 1111 1111 1111 1111 1111 11 |
      | integrationCode | 123456                           |

    And Click on the element in Dialog
      | currency      |
      | tryInCurrency |
      | saveButton    |

    Then Verify contains text
      | successMessage | successfully |

    Then Display required element
      | searchBox |

  Scenario: (SP-9-TC-02) Check Add new bank account with same data - Negative Scenario

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput       | Grup5                            |
      | iban            | TR11 1111 1111 1111 1111 1111 11 |
      | integrationCode | 123456                           |

    And Click on the element in Dialog
      | currency      |
      | tryInCurrency |
      | saveButton    |

    Then Verify contains text
      | alreadyExists | already exists |

  Scenario: (SP-9-TC-03) Check Edit the bank account - Positive Scenario

    And User sending the keys in Dialog Content
      | searchName | Grup5 |

    And Click on the element in Dialog
      | searchButton |
      | editButton   |

    And User sending the keys in Dialog Content
      | nameInput       | Grup5 New Account                |
      | iban            | TR11 1111 1111 1111 1111 1111 00 |
      | integrationCode | 654321                           |

    And Click on the element in Dialog
      | currency      |
      | usdInCurrency |
      | saveButton    |

    Then Verify contains text
      | successMessage | successfully |

  Scenario: (SP-9-TC-04) Check Delete the position category - Positive Scenario

    And User delete item from Dialog Content
      | Grup5 New Account |

    Then Verify contains text
      | successMessage | successfully |

  Scenario: (SP-9-TC-05) Check Delete the position category already deleted - Negative Scenario

    And User sending the keys in Dialog Content
      | searchName | Grup5 New Account |

    And Click on the element in Dialog
      | searchButton |

    Then Verify contains text
      | verifyDelete | no data to display |