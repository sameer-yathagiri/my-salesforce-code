@isTest
public with sharing class SeeAllDataTest {

    @isTest(seeAllData = true)
    static void accountTest(){
        List<Account> accountList = [Select Id, Name, Phone, Fax, Industry, rating, Description From Account Limit 15];
        System.assertEquals(15, accountList.size(), 'Expected Accounts are not matching!');
    }

    @isTest
    static void  contactTest(){
        Account acc = new Account(Name='TestAccnt', Industry='Education', Rating='Hot', Phone='999-1112');
        insert acc;
        List<Contact> contactList = [Select Id, Name, Email, Phone From Contact LIMIT 1];
        System.assertEquals(1, contactList.size(), 'There are no contacts available in Database!!');
        
    }
}
