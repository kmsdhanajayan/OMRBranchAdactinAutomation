
Feature: Verifying OMRBranchAdactinAutomation login then Search Hotel and Select Hotel details

   Scenario Outline: Verifying Adactin Select Hotel page with selecting hotel and after Book a Hotel
    Given User is on the Adactin login page
    When User should login "<userName>","<password>"
    Then User should verify login Success message "Hello sathishFam!"
    And User should search by select all fields "<Location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>"and"<Children per Room>"
    Then User should verify after search "Select Hotel"
    And User should Click any one hotel
    Then User should verify after Select Hotel "Book A Hotel"



    Examples: 
      | userName     | password | Location | Hotels      | Room Type | Number of Rooms | Check In Date | Check Out Date | Adults per Room | Children per Room |
      | sathishFam   | 741@85BN | Paris    | Hotel Creek | Double    | 1 - One         | 21/06/2022    | 21/06/2022     | 1 - One         | 1 - One           |

    Scenario Outline: Verifying Adactin Select Hotel page without selecting hotel with error message
    Given User is on the Adactin login page
    When User should login "<userName>","<password>"
    Then User should verify login Success message "Hello sathishFam!"
    And User should search by select all fields "<Location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>"and"<Children per Room>"
    Then User should verify after search "Select Hotel"
    Then User should not selecting any hotels Click Continue
    Then User should verify error message after click continue "Please Select a Hotel"

    Examples: 
      | userName     | password | Location | Hotels      | Room Type | Number of Rooms | Check In Date | Check Out Date | Adults per Room | Children per Room |
      | sathishFam   | 741@85BN | Paris    | Hotel Creek | Double    | 1 - One         | 21/06/2022    | 21/06/2022     | 1 - One         | 1 - One           |

