Feature: US2001_GMIBank Pozitif Login

  Scenario: TC01 Pozitif Login Testi

    When kullanici gmibank sayfasina gider
    Then sayfaya giris yapar
    And sayfaya giris yaptigini dogrular
    When gmibank signout butonuna tiklar
    And gmibank sayfasindan cikis yaptigini dogrular.