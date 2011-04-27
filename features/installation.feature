Feature: Install the CMS
  In order to get started quick,
  Admins creating a new CMS,
  Want a web wizard to set up their site for them.

  Scenario: Environment Installation
    Given I have cloned the "sinatra-cms" repo
    And I have set rvm to use "1.9.2-p180@sinatra-cms"
    And I have brew installed "growlnotify"
    And I have run bundle install
    And I have set pow to serve this directory as "sinatra-cms.dev"
    When I visit "sinatra-cms.dev"
    Then I should get a success

  @wip
  Scenario: First-run Installation Wizard
    Given I visit the site
    Then I should see "Installation Instructions: Step 1"
    When I fill in and submit this basic User Registration Form
    Then I should see "Installation Instructions: Step 2"
    When I set "environment" to "development"
    And I set "domain_name" to "sinatra-cms.dev"
    And I press "Next Step"
    Then I should see "Installation Instructions: Step 3"
    And I should see "Browse Factories"
    And I should see "Browse Themes"
    And I should see "Go To Admin"
    When I press "Go To Admin"
    Then I should see "Admin Panel"
    And I should see "Index page"
    And I should see "400 page"
    And I should see "Configure New Factory"
    And "sinatra-cms.dev" should be "under maintenance"
