package Pages;

import Utilities.GWD;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LeftNav extends Parent{

    public LeftNav() {
        PageFactory.initElements(GWD.getDriver(),this);
    }

    @FindBy(xpath = "//span[@class='mat-tooltip-trigger logo-text']")
    public WebElement txtTechnoStudy;

    @FindBy(xpath = "//span[text()='Human Resources']")
    public WebElement humanResources;

    @FindBy(xpath = "(//span[text()='Setup'])[3]")
    public WebElement setupInHumanR;

    @FindBy(xpath = "//span[text()='Position Categories']")
    public WebElement positionCategories;





















































    public WebElement getWebElement(String strButton){

        switch (strButton){

             case "humanResources": return humanResources;
             case "setupInHumanR": return setupInHumanR;
             case "positionCategories": return positionCategories;
//             case "": return ;
//             case "": return ;
//             case "": return ;

        }

        return null;
    }


}
