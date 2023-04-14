package StepDefinitions;

import Pages.DialogContent;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import java.util.ArrayList;
import java.util.List;

public class SP_8_TC {

    DialogContent dc=new DialogContent();


    @And("Admin searches for data to be edited manually")
    public void adminSearchesForDataToBeEditedManually(DataTable dt) {

        List<List<String>> items = dt.asLists(String.class);
        for (int i = 0; i < items.size(); i++) {
            for (int j = 0; j < dc.getWebElementlist("nameresultlist").size(); j++) {
                if(items.get(i).get(0).equals(dc.getWebElementlist("nameresultlist").get(j).getText())&&
                        items.get(i).get(1).equals(dc.getWebElementlist("coderesultlist").get(j).getText()))
                          {dc.getWebElementlist("editbuttonlist").get(j).click();}
                }
        }
    }

    @And("Admin searches for data to be deleted manually")
    public void adminSearchesForDataToBeDeletedManually(DataTable dt) {

        List<List<String>> items = dt.asLists(String.class);
        for (int i = 0; i < items.size(); i++) {
            for (int j = 0; j < dc.getWebElementlist("nameresultlist").size(); j++) {
                if(items.get(i).get(0).equals(dc.getWebElementlist("nameresultlist").get(j).getText())&&
                        items.get(i).get(1).equals(dc.getWebElementlist("coderesultlist").get(j).getText()))
                {dc.getWebElementlist("deletebuttonlist").get(j).click();}
            }
        }
    }

    @Then("Verify no data to display")
    public void verifyNoDataToDisplay(DataTable dt) {

        List<List<String>> items = dt.asLists(String.class);

        for (int i = 0; i < items.size(); i++) {
            for (int j = 0; j < dc.getWebElementlist("nameresultlist").size(); j++) {
                if(items.get(i).get(0).equals(dc.getWebElementlist("nameresultlist").get(j).getText()))
                {Assert.assertNotEquals(dc.getWebElementlist("coderesultlist").get(j).getText(), items.get(i).get(1));}
            }
        }
    }
}

