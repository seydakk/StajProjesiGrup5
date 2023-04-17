package StepDefinitions;


import Pages.DialogContent;
import Utilities.GWD;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class SP_1_TC {

    WebDriverWait wait = new WebDriverWait(GWD.getDriver(), Duration.ofSeconds(10));
    DialogContent dc = new DialogContent();

    @Given("I log in as an Admin")
    public void iLogInAsAnAdmin() {
        GWD.getDriver().get("https://test.mersys.io/");
        GWD.getDriver().manage().window().maximize();

        dc.sendKeysFunction(dc.getWebElement("usernameLogin"), "turkeyts");
        dc.sendKeysFunction(dc.getWebElement("passwordLogin"), "TechnoStudy123");
        dc.clickFunction(dc.getWebElement("loginButton"));
     //   dc.verifyContainsTextFunction(dc.getWebElement("txtTechnoStudy"),"Techno Study");
    }


}
