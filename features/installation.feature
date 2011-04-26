Feature: Install the CMS
  In order to get started quick,
  Admins creating a new CMS,
  Want a web wizard to set up their site for them.

  Scenario: Wizard Page One
    Given I visit the site
    Then I should see "Installation Instructions"
