public class AccountTriggerHandler {
    private Boolean m_isExecuting = false;
    private Integer BatchSize = 0;
    public static Boolean isFromBatchJob;
    public static Boolean isFromUploadAPI=false;
    
    public AccountTriggerHandler(Boolean isExecuting, Integer size)
    {
        m_isExecuting = isExecuting;
        BatchSize = size;
    }
    public void onBeforeInsert(List<Account> newAccount)
    {
        system.debug('Account Trigger on before insert');
    }
    public void onAfterInsert(List<Account> newAccount)
    {
        system.debug('Account Trigger on after insert');
    }
    public void onAfterUpdate(List<Account> newAccount, List<Account> oldAccount, Map<ID, Account> newAccountMap, Map<ID, Account> oldAccountMap)
    {
        system.debug('Account Trigger on after update');
    }
     public void onBeforeUpdate(List<Account> newAccount, List<Account> oldAccount, Map<ID, Account> newAccountMap, Map<ID, Account> oldAccountMap)
    {
        system.debug('Account Trigger on before update');
    }

}