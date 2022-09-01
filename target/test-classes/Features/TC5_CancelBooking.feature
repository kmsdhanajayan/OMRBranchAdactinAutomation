


Scenario Outline: Verifying Adactin Hotel cancellation with vaild credential
    Given User is on the Adactin login page
    When User should login "<userName>","<password>"
    Then User should verify login Success message "Hello sathishFam!"
    And User should search by select all fields "<Location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>"and"<Children per Room>"
    Then User should verify after search "Select Hotel"
    And User should Click any one hotel
    Then User should verify after Select Hotel "Book A Hotel"
		And User should book hotel "<frist name>","<last name>","<billing address>" and save the generated order id
		
		|credit CardNo   |credit CardType | expiry month| expiry year |  cvv no |
		|5442422121712181|VISA            | December    | 2022        |  1262   |
		|4442422121812151|American Express| November    | 2022        |  1412   |
		|6442422121512131|Master Card     | October     | 2022        |  1214   |
		Then User should click the continue button and verify successful message as "Booking Confirmation" 
		And User should cancel the order id generated after booking conformation
		Then User should verify cancellation message "The booking has been cancelled."after order id is cancelled   
		   Examples: 
      | userName     | password | Location | Hotels      | Room Type | Number of Rooms | Check In Date | Check Out Date | Adults per Room | Children per Room |frist name|last name |billing address |
      | sathishFam   | 741@85BN | Paris    | Hotel Creek | Double    | 1 - One         | 21/06/2022    | 21/06/2022     | 1 - One         | 1 - One           |sathish   |kumar     |omr baalamurugan|
		
		Scenario Outline: Verifying Adactin Hotel cancellation with vaild credential
    Given User is on the Adactin login page
    When User should login "<userName>","<password>"
    Then User should verify login Success message "Hello sathishFam!"
    And User should cancel the existing order id "<orderId>"
    Then User should verify cancellation message "The booking has been cancelled."after order id is cancelled
    
    Examples: 
      | username     | password | orderId     |
      | sathishwevin | 422Q3K   |             |
    