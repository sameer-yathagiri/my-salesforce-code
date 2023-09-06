trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    
    AccountTriggerHandler handler = new AccountTriggerHandler(Trigger.isExecuting, Trigger.size);
    
    if(Trigger.isInsert)
    {
        if(Trigger.isBefore)
        {
            handler.onBeforeInsert(trigger.New);
        }
        else
        {
            handler.onAfterInsert(trigger.New);
        }
    }
     if(Trigger.isUpdate)
    {
        if(Trigger.isBefore)
        {
            handler.onBeforeUpdate(trigger.New, trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
        else
        {
            handler.onAfterUpdate(trigger.New, trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
    }

}