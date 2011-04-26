Feature: Install the CMS
  In order to get started quick,
  Admins creating a new CMS,
  Want a web wizard to set up their site for them.

  Scenario: Environment Installation
    Given I use rvm
    And I clone the SinatraCMS repo
    And I run bundle install
    And I have Pow installed, Powder installed, and I run 'powder add sinatra-cms.dev'
    When I visit 'sinatra-cms.dev'
    Then I should get a success

  Scenario: First-run Installation Wizard
    Given I visit the site
    Then I should see "Installation Instructions: Step 1"
    When I fill in and submit this basic User Registration Form
    Then I should see "Installation Instructions: Step 2"
    When I set "environment" to "development"
    And I set "domain_name" to "sinatra-cms.dev"
    And I press 'Next Step'
    Then I should see "Installation Instructions: Step 3"
    When I press 'To the Admin...'
    Then I should see "Admin Panel"
    And the Site with domain "sinatra-cms.dev" should be "under maintenance"