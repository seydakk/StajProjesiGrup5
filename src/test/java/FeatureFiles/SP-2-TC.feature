Feature:As an Admin User I should be able to Add-Edit-Delete Attestations Under Human Resources Setup

  Background:
    Given  I log in as an Admin

    When Click on the element in LeftNav

      | humanResources |
      | setupInHumanR  |
      | Attestations   |

  Scenario: (SP-2-TC-01) Check Add new Attestations - Positive Scenario

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | Sdet Man|

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |

    Then Display required element
      | searchBox |

  Scenario: (SP-2-TC-02) Check Add new Attestations with same data - Negative Scenario

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | Sdet Man|

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | alreadyExists | already exists |

  Scenario: (SP-2-TC-03) Check Edit the Attestations - Positive Scenario

    And User sending the keys in Dialog Content
      | searchName | Sdet Man|

    And Click on the element in Dialog
      | searchButton |
      | editButton   |

    And User sending the keys in Dialog Content
      | nameInput | Sdet |

    And Click on the element in Dialog
      | saveButton |

    Then Verify contains text
      | successMessage | successfully |

  Scenario: (SP-2-TC-04) Check Delete the Attestations - Positive Scenario

    And User delete item from Dialog Content
      | Sdet |

    Then Verify contains text
      | successMessage | successfully |

  Scenario: (SP-2-TC-05) Check Delete the Attestations already deleted - Negative Scenario

    And User sending the keys in Dialog Content
      | searchName | Sdet |

    And Click on the element in Dialog
      | searchButton |

    Then Verify contains text
      | verifyDelete | no data to display |