


Scenario Outline: Verifying Adactin Book a Hotel page by select all fields
    Given User is on the Adactin login page
    When User should login "<userName>","<password>"
    Then User should verify login Success message "Hello sathishFam!"
    And User should search by select all fields "<Location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>"and"<Children per Room>"
    Then User should verify after search "Select Hotel"
    And User should Click any one hotel
    Then User should verify after Select Hotel "Book A Hotel"
		And User should book hotel "<frist name>","<last name>","<billing address>" 
		
		|credit CardNo   |credit CardType | expiry month| expiry year |  cvv no |
		|5442422121712181|VISA            | December    | 2022        |  1262   |
		|4442422121812151|American Express| November    | 2022        |  1412   |
		|6442422121512131|Master Card     | October     | 2022        |  1214   |
		Then User should click the continue button and verify successful message as "Booking Confirmation"
		   Examples: 
      | userName     | password | Location | Hotels      | Room Type | Number of Rooms | Check In Date | Check Out Date | Adults per Room | Children per Room |frist name|last name |billing address |
      | sathishFam   | 741@85BN | Paris    | Hotel Creek | Double    | 1 - One         | 21/06/2022    | 21/06/2022     | 1 - One         | 1 - One           |sathish   |kumar     |omr baalamurugan|
		
		Scenario Outline: Verifying Adactin Book a Hotel page without filling any field
    Given User is on the Adactin login page
    When User should login "<userName>","<password>"
    Then User should verify login Success message "Hello sathishFam!"
    And User should search by select all fields "<Location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>"and"<Children per Room>"
    Then User should verify after search "Select Hotel"
    And User should Click any one hotel
    Then User should verify after Select Hotel "Book A Hotel"
		And User should Book Hotel without filling any field
		And User should verify personal booking details error message"Please Enter your First Name"," Please Enter you Last Name","Please Enter your Address"," Please Enter your 16 Digit Credit Card Number","Please Select your Credit Card Type","Please Select your Credit Card Expiry Month","Please Enter your Credit Card CVV Number"
		 Examples: 
      | userName     | password | Location | Hotels      | Room Type | Number of Rooms | Check In Date | Check Out Date | Adults per Room | Children per Room |
      | sathishFam   | 741@85BN | Paris    | Hotel Creek | Double    | 1 - One         | 21/06/2022    | 21/06/2022     | 1 - One         | 1 - One           |