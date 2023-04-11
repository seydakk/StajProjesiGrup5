package Pages;

import Utilities.GWD;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class DialogContent extends Parent{

    public DialogContent() {
        PageFactory.initElements(GWD.getDriver(),this);
    }


    @FindBy(xpath= "//input[@formcontrolname='username']")
    private WebElement usernameLogin;

    @FindBy(xpath= "//input[@formcontrolname='password']")
    private WebElement passwordLogin;

    @FindBy(xpath= "//button[@aria-label='LOGIN']")
    private WebElement loginButton;

    @FindBy(xpath = "//mat-form-field//input[@data-placeholder='Name']")
    private WebElement searchName;

    @FindBy(xpath= "//ms-add-button[contains(@tooltip,'ADD')]//button")
    private WebElement addButton;
    @FindBy(xpath= "//button[@type='submit']")
    private WebElement deleteDialogBtn;

    @FindBy(xpath= "(//ms-delete-button//button)[1]")
    private WebElement deleteButton;

    @FindBy(xpath= "//ms-search-button//button")
    private WebElement searchButton;

    @FindBy(xpath= "(//ms-edit-button//button)[1]")
    private WebElement editButton;

    @FindBy(xpath= "(//mat-form-field//input)[2]")
    private WebElement searchCode;

    @FindBy(xpath= "//ms-save-button//button")
    private WebElement saveButton;

    @FindBy(xpath= "//*[contains(text(),'successfully')]")
    private WebElement successMessage;

    @FindBy(xpath= "//ms-text-field[@formcontrolname='name']//input")
    private WebElement nameInput;

    @FindBy(xpath= "//ms-text-field[@formcontrolname='code']//input")
    private WebElement codeInput;

    @FindBy(xpath= "//mat-select[@formcontrolname='type']")
    private WebElement selectFieldType;

    @FindBy(xpath= "//*[contains(text(),'already exists')]")
    private WebElement alreadyExists;

    @FindBy(xpath= "//ms-table//td/div[contains(text(),'no data to display')]")
    private WebElement verifyDelete;

    @FindBy(xpath= "(//div[contains(@class,'mat-select-arrow-wrapper')])[2]")
    private WebElement selectarrow;

    @FindBy(xpath= "//span[text()=' Logical ']")
    private WebElement logical;


















    public void deleteItem(String searchText){

        sendKeysFunction(searchName, searchText);
        clickFunction(searchButton);
        //beklet
        // StaleElementReferenceException hatası veriyor. bayatlayan element
        //wait.until(ExpectedConditions.elementToBeClickable(searchButton));
        // clickable olarakta bekletilebilir ama asıl tercih edilen burada aşağıdaki;

        // fuse-progress-bar/* : bu 0 olana kadar beklet
        wait.until(ExpectedConditions.numberOfElementsToBe(By.xpath("//fuse-progress-bar/*"),0));
        clickFunction(deleteButton);
        clickFunction(deleteDialogBtn);
        verifyContainsTextFunction(successMessage, "successfully");

    }

    public WebElement getWebElement(String strButton){

        switch (strButton){

             case "usernameLogin": return usernameLogin;
             case "passwordLogin": return passwordLogin;
             case "loginButton": return loginButton;
             case "searchName": return searchName;
             case "addButton": return addButton;
             case "deleteButton": return deleteButton;
             case "deleteDialogBtn": return deleteDialogBtn;
             case "searchButton": return searchButton;
             case "editButton": return editButton;
             case "searchCode": return searchCode;
             case "saveButton": return saveButton;
             case "successMessage": return successMessage;
             case "nameInput": return nameInput;
             case "codeInput": return codeInput;
             case "selectFieldType": return selectFieldType;
             case "alreadyExists": return alreadyExists;
             case "verifyDelete": return verifyDelete;
             case "logical": return logical;
             case "selectarrow": return selectarrow;

        }

        return null;
    }
}
