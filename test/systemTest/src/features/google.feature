Feature: ANZID2-1191.OTP screen redesign

  Scenario: SC1-Search a word in google and validate
    Given I open the site "google.SC1.dataUrl"
      And I pause for 500ms
      And I expect that element "search.searchBox" becomes visible
      And I expect that element "search.searchButton" becomes visible
     When I click on the element "search.searchBox"
      And I pause for 500ms
      And I add "wdio" to the inputfield "search.searchBox"
      And I click on the button "search.searchButton"
      And I wait on element "search.searchResult" for 3000ms to be visible
      And I expect that element "search.searchResult" equals the text "All"
