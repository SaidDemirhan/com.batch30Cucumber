Feature: US1008 coklu parametreli bir step ile editor kisi ekler

  @editor2
  Scenario Outline: TC12 Edito sayfasina farkli kisiler ekleme

    Given kullanici "editorUrl" sayfasina gider
    Then new butonuna basar

    #And editor firstname kutusuna "<firstName>" bilgileri girer
    #And editor lastname kutusuna "<lastName>" bilgileri girer
    #And editor position kutusuna "<position>" bilgileri girer
    #And editor office kutusuna "<office>" bilgileri girer
    #And editor extension kutusuna "<extension>" bilgileri girer
    #And editor startdate kutusuna "<startDate>" bilgileri girer
    #And editor salary kutusuna "<salary>" bilgileri girer
    #yazilabilecegi gibi asagidaki sekilde de yazilabilir.Bir sonraki testte yapilacak

    And ilgili kutulara "<firstName>"  "<lastName>"  "<position>"  "<office>"  "<extension>" "<startDate>" "<salary>" bilgilerini girer
    And Create tusuna basar


    Examples:
      |firstName| lastName|position|office|extension|startDate|salary|
      |Hakan    |Tetik    |TestLead|Paris |ali      |2021-01-21|60000|
      |Murat    |Ercoban  |QA      |Kenya |126      |2021-01-20|40000|
      |Furkan   |Yilmaz   |QA      |Adana |130      |2021-03-21|80000|