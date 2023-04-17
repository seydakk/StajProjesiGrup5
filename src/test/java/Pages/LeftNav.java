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

    @FindBy(xpath="//span[text()='Setup']")
    private WebElement setup;

    @FindBy(xpath="//span[text()='Parameters']")
    private WebElement parameters;

    @FindBy(xpath="//span[text()='Fields']")
    private WebElement fields;

    @FindBy(xpath="//span[text()='Departments']")
    private WebElement departments;

    @FindBy(xpath="//span[text()='Bank Accounts']")
    private WebElement bankAccount;

    @FindBy(xpath = "//span[text()='Positions']")
    private  WebElement positionsInHumanR;

    @FindBy(xpath="(//span[text()='Document Types'])[1]")
    private WebElement documentTypes;






    @FindBy(xpath = "//span[text()='Attestations']")
    private WebElement Attestations;












    public WebElement getWebElement(String strButton){

        switch (strButton){

             case "txtTechnoStudy": return txtTechnoStudy;
             case "humanResources": return humanResources;
             case "setupInHumanR": return setupInHumanR;
             case "positionCategories": return positionCategories;
             case "setup": return setup;
             case "parameters": return parameters;
             case "fields": return fields;
             case "departments": return departments;
             case "bankAccount": return bankAccount;
             case "positionsInHumanR": return  positionsInHumanR;
             case "documentTypes": return documentTypes;
             case "attestations": return Attestations;
//             case "": return ;

        }

        return null;
    }


}
