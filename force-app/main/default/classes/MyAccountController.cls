public with sharing class MyAccountController {
    public List<Account> accountList {get;set;}
    public MyAccountController() {
        accountList = [select Id, Name from Account Limit 100];

    }
}