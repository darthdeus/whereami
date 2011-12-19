Feature: network recognition
  In order to tell when I can push to a remote repository
  I should be able to recognize if there is an internet
  connection with SSH available

  Scenario: there is no network connection
    When I ping google public DNS
    And I don't get a response
    Then the network is classified as no internet available


