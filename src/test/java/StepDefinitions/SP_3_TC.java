package StepDefinitions;

import Pages.DialogContent;
import Utilities.GWD;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class SP_3_TC {
    WebDriverWait wait = new WebDriverWait(GWD.getDriver(), Duration.ofSeconds(10));
    DialogContent dc = new DialogContent();
    Actions aksiyonlar = new Actions(GWD.getDriver());
    @And("Send the ESCAPE signal")
    public void SendtheESCAPEsignal() {

        aksiyonlar.keyDown(Keys.ESCAPE).keyUp(Keys.ESCAPE).build().perform();
    }
}
