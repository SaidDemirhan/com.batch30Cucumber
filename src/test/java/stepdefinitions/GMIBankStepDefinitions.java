package stepdefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pages.GMIBankPage;
import utilities.ConfigReader;
import utilities.Driver;

public class GMIBankStepDefinitions {

    GMIBankPage gmiBankPage = new GMIBankPage();

    @When("kullanici gmibank sayfasina gider")
    public void kullanici_gmibank_sayfasina_gider() {
        Driver.getDriver().get(ConfigReader.getProperty("GMIBankUrl"));

    }
    @Then("sayfaya giris yapar")
    public void sayfaya_giris_yapar() {
        gmiBankPage.GMIBankLogin();

    }
    @Then("sayfaya giris yaptigini dogrular")
    public void sayfaya_giris_yaptigini_dogrular() {
        gmiBankPage.girisOnayWebElementi.isDisplayed();

    }
    @When("gmibank signout butonuna tiklar")
    public void gmibankSignoutButonunaTiklar() {
        gmiBankPage.girisOnayWebElementi.click();
        gmiBankPage.signOutWebElementi.click();

    }

    @And("gmibank sayfasindan cikis yaptigini dogrular.")
    public void gmibankSayfasindanCikisYaptiginiDogrular() {
        //h2[normalize-space()='THANK YOU FOR USING US...']
        //html//div[@id='app-view-container']/div[1]//h2[.='THANK YOU FOR USING US...']
        //*[@id="app-view-container"]/div[1]/div/div/div/h2
        gmiBankPage.signOutOnayWebElementi.isDisplayed();

    }
}
