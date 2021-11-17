Feature: US1012 Kullanici concort hotel database'ini test eder

  Scenario: TC!( Concort Hotel Database Read Test

    Given kullanici CHQA database'ine baglanir
    And kullanici "tHOTELROOM" tablosundaki "Price" verilerini alir
    And And kullanici "Price" sutunundaki verileri okur ve istedigi islemi yapar