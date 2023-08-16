public with sharing class MyControllerExtension {
    private final Account acct;
    //The extension contructor initialises the private member variable acct by using the getRecord method from standard controller
    public MyControllerExtension(ApexPages.StandardController stdController) {

        this.acct = (Account)stdController.getRecord();

    }
    public String getGreeting(){
        return 'Hello '+acct.Name + '(' + acct.Id + ')';

    }
}