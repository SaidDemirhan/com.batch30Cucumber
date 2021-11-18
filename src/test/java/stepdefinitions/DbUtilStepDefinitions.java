package stepdefinitions;

import io.cucumber.java.en.Given;
import utilities.DBUtils;

import java.sql.SQLException;

public class DbUtilStepDefinitions {
    @Given("kullanici DBUill ile CHQA database'ine baglanir")
    public void kullanici_db_uill_ile_chqa_database_ine_baglanir() {
        DBUtils.getConnection();
    }
    @Given("kullanici DBUill ile {string} tablosundaki {string} verilerini alir")
    public void kullanici_db_uill_ile_tablosundaki_verilerini_alir(String table,String field) {
        String readQuery="SELECT "+table+" FROM "+field;
        DBUtils.executeQuery(readQuery);
    }
    @Given("kullanici DBUill ile {string} sutunundaki verileri okur ve istedigi islemleri yapar")
    public void kullanici_db_uill_ile_sutunundaki_verileri_okur_ve_istedigi_islemleri_yapar(String string) throws SQLException {

        DBUtils.getResultset().first();

        int satirSayisi=DBUtils.getResultset().getRow();
    }

}
