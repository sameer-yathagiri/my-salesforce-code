public with sharing class MyAccountController {
    public List<Account> accountList {get;set;}
    public MyAccountController() {
        accountList = [select Id, Name, Website from Account Limit 100];

    }
}