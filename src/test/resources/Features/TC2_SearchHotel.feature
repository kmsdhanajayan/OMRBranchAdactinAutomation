 Feature: Verifying OMRBranchAdactinAutomation login and Search Hotel details

 
    Scenario Outline: Verifying Adactin Search Hotel By select all fields
    Given User is on the Adactin login page
    When User should login "<userName>","<password>"
    Then User should verify login Success message "Hello sathishFam!"
    And User should search by select all fields  "<Location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>"and"<Children per Room>"
    Then User should verify after search "Select Hotel"

    Examples: 
      | userName     | password | Location | Hotels      | Room Type | Number of Rooms | Check In Date | Check Out Date | Adults per Room | Children per Room |
      | sathishFam   | 741@85BN | Paris    | Hotel Creek | Double    | 1 - One         | 21/10/2022    | 21/10/2022     | 1 - One         | 1 - One           |

      
    Scenario Outline: Verifying Adactin Search Hotel By select only mandatory fields
   Given User is on the Adactin login page
    When User should login "<userName>","<password>"
    Then User should verify login Success message "Hello sathishFam!"
    And User should search by select only mandatory  fields "<Location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>"and"<Children per Room>"
    Then User should verify after search "Select Hotel"



    Examples: 
      | userName     | password | Location | Number of Rooms | Check In Date | Check Out Date | Adults per Room |
      | sathishFam   | 741@85BN | Paris    | 1 - One         | 21/10/2022    | 21/10/2022     | 1 - One         |

    Scenario Outline: Verifying Adactin Search Hotel all fields by applying invalid date checking with error message
    Given User is on the Adactin login page
    When User should login "<userName>","<password>"
    Then User should verify login Success message "Hello sathishFam!"
    And User should search by select all fields "<Location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>"and"<Children per Room>"
    Then User should verify search hotel error message  "Check-In Date shall be before than Check-Out Date","Check-Out Date shall be after than Check-In Date"


    Examples: 
      | userName     | password | Location | Hotels      | Room Type | Number of Rooms | Check In Date | Check Out Date | Adults per Room | Children per Room |
      | sathishFam   | 741@85BN | Paris    | Hotel Creek | Double    | 1 - One         | 21/10/2025    | 21/10/2022     | 1 - One         | 1 - One           |

 
   Scenario Outline: Verifying Adactin Search Hotel without enter any fields
    Given User is on the Adactin login page
    When User should login "<userName>","<password>"
    Then User should verify login Success message "Hello sathishFam!"
    And User should search by all fields "<Location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>"and"<Children per Room>"
    Then User should verify search hotel error message "Please Select a Location"
  Examples: 
      | userName     | password | Location | Hotels      | Room Type | Number of Rooms | Check In Date | Check Out Date | Adults per Room | Children per Room |
      | sathishFam   | 741@85BN | Paris    | Hotel Creek | Double    | 1 - One         | 21/10/2025    | 21/10/2022     | 1 - One         | 1 - One           |
      