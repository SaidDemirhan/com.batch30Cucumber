Feature: US1004 bestbuy sayfasinds kelime arama

  Scenario: TC08 kullanici bestbuyda istedigi kelimeyi aratip test eder
    Given kullanici "ebayUrl" sayfasina gider
    Then "nutella" icin arama yapar
    And sonucun "nutella" icerdigini test eder
    Then sayfayi kapatir