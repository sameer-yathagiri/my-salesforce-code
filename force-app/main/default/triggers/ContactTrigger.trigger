trigger ContactTrigger on Contact (before insert, before update) {
    
    if(Trigger.isBefore && Trigger.isInsert) {
        System.debug('I am in before insert context');
    }
    if(Trigger.isUpdate) {
        if(Trigger.isBefore){
            for(Contact con : Trigger.new){
                System.debug('New Name '+con.FirstName);
                System.debug('Old Name '+Trigger.oldMap.get(con.Id).FirstName);
            }
        }
    }

}