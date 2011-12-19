Feature: queue
  I want to be able to push to remote repositories
  even when there is no network available. The command
  should get queued up if it is impossible to execute it
  on the current network.

  Scenario: user wants to push to a github repository when SSH is not available
    Given I have a github repository
    And SSH ports are blocked on the network
    When I push to github
    Then the command should get queued up

  Scenario: user wants to push to a github repository when network isn't available
    Given I have a github repository
    And there is no network available
    When I push to github
    Then the command should get queued up
