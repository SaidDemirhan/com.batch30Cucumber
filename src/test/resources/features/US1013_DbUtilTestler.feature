Feature: US1012 Kullanici DB Utill ile concort Hotel database'ini test eder
  @dbutill
  Scenario: TC19 Concort Hotel Database Read Test

    Given kullanici DBUill ile CHQA database'ine baglanir
    And kullanici DBUill ile "tHOTELROOM" tablosundaki "Price" verilerini alir
    And kullanici DBUill ile "Price" sutunundaki verileri okur ve istedigi islemleri yapar