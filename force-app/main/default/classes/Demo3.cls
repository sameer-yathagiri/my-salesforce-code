//Pass by value vs Pass by reference
public class Demo3 {
    
    public void mainValueMethod() {
        String str = 'Test123';
        
        System.debug('Before value call '+ str);
        passByValueCall(str);
        System.debug('After value call '+ str);
    }
    
    private void passByValueCall(String str) { //Pass by Value Call
        str = 'abc123';
    }
    
    public void mainReferenceMethod(){
        Account a = new Account(); 
        a.Name = 'Test Account';
        a.Website = 'www.abc.com';
        System.debug('Before reference call '+a);
        passByRefCall(a);
        System.debug('After reference call '+a);
    }
    
    private void passByRefCall(Account a1){ //Pass by Reference Value
        a1.Website = 'www.salesforce.com';
    }

}