trigger InvoiceLineItemTrigger on Invoice_Line_Item__c (before insert) {
 
    if(Trigger.isBefore && Trigger.isInsert) {
        set<id> invoiceId = new set<id>();  
        Double price; 
       for(Invoice_Line_Item__c invl : Trigger.new){
                invoiceId.add(invl.Invoice__c);
           		price = invl.Price__c;
            }
        List<Invoice__c> invoice = new List<Invoice__c>();
        invoice = [SELECT Id, Total_Amount__c FROM Invoice__c WHERE Id IN :invoiceId];
        System.debug(invoice[0].Total_Amount__c);
        invoice[0].Total_Amount__c = invoice[0].Total_Amount__c + price;
        update invoice[0];
    }
}