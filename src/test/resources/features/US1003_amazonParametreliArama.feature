Feature: US1001 kullanici istedigi kelime icin arama yapip, sonucu test eder.

  Scenario: TC07 istenen kelimenin oldugunu test etme
    Given kullanici amazon sayfasina gider
    And "nutella" icin arama yapar
    Then sonucun "nutella" icerdigini test eder
    And sayfayi kapatir