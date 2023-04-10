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

    @FindBy(xpath= " ")
    private WebElement deleteDialogBtn;

    @FindBy(xpath= " ")
    private WebElement deleteButton;

    @FindBy(xpath= " ")
    private WebElement searchButton;

    @FindBy(xpath= " ")
    private WebElement searchInput;

    @FindBy(xpath= " ")
    private WebElement successMessage;



    public void deleteItem(String searchText){

        sendKeysFunction(searchInput, searchText);
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

//             case "": return ;
//             case "": return ;
//             case "": return ;
//             case "": return ;
//             case "": return ;
//             case "": return ;

        }

        return null;
    }
}