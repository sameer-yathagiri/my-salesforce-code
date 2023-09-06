@isTest
public with sharing class SeeAllDataTest {

    @isTest(seeAllData = true)
    static void accountTest(){
        List<Account> accountList = [Select Id, Name, Phone, Fax, Industry, rating, Description From Account Limit 15];
        System.assertEquals(13, accountList.size(), 'Expected Accounts are not matching!');
    }

    @isTest
    static void  contactTest(){
        Account acc = new Account(Name='TestAccnt', Industry='Education', Rating='Hot', Phone='999-1112');
        insert acc;
        Contact con = new COntact(FirstName = 'Sameer', LastName='Yathagiri', Email='krishnasameeryathagiri@gmail.com', Phone='111-1111', AccountId = acc.Id);
        insert con;
        List<Contact> contactList = [Select Id, Name, Email, Phone From Contact LIMIT 1];
        System.assertEquals(1, contactList.size(), 'There are no contacts available in Database!!');
        
    }
    @isTest
    static void loadDataTest(){
        List<Account> sObjectList = Test.loadData(Account.sObjectType, 'testAccounts');
        System.assertEquals( 3, sobjectList.size());
        
    }
    @isTest
    static void privatePropDemo(){
       Integer i1= MathCalculator.add(1,2);
    }
}