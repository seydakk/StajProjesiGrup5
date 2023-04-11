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
    private WebElement txtTechnoStudy;

    @FindBy(xpath = "//span[text()='Human Resources']")
    private WebElement humanResources;

    @FindBy(xpath = "(//span[text()='Setup'])[3]")
    private WebElement setupInHumanR;

    @FindBy(xpath = "//span[text()='Position Categories']")
    private WebElement positionCategories;

    @FindBy(xpath="")
    private WebElement setup;

    @FindBy(xpath="")
    private WebElement parameters;

    @FindBy(xpath="")
    private WebElement fields;




























    public WebElement getWebElement(String strButton){

        switch (strButton){

             case "txtTechnoStudy": return txtTechnoStudy;
             case "humanResources": return humanResources;
             case "setupInHumanR": return setupInHumanR;
             case "positionCategories": return positionCategories;
             case "setup": return setup;
             case "parameters": return parameters;
             case "fields": return fields;

//             case "": return ;
//             case "": return ;

        }

        return null;
    }


}
