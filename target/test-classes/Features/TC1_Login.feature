Feature: verifying OMRBranchAdactinAutomation login details

  Scenario Outline: Verifying Adactin login with valid data
    Given User is on the Adactin login page
    When User should login "<userName>","<password>"
    Then User should verify login Success message "Hello sathishFam!"

    Examples: 
      | userName   | password |
      | sathishFam | 741@85BN |

  Scenario Outline: Verifying Adactin login with valid data with Enter 
    Given User is on the Adactin login page
    When User should login "<userName>","<password>" with Enter key
    Then User should verify login success message "Hello sathishFam!"

    Examples: 
      | userName   | password |
      | sathishFam | 741@85BN |

  Scenario Outline: Verifying Adactin login with Invalid credentials with error message
    Given User is on the Adactin login page
    When User should login "<userName>","<password>"
    Then User should verify login error message contains "Invalid Login details or Your Password might have expired."

    Examples: 
      | userName | password |
      | Fam      | 741@85B  |
