    global class AccountsBatchJob implements Database.Batchable<Sobject>, Database.Stateful {
        
        private Integer magicNum = 0;

        global Database.QueryLocator start(Database.BatchableContext bc){
            return Database.getQueryLocator('SELECT Id, Name, Pipeline_Amount__c FROM Account WHERE CreatedDate >= LAST_N_DAYS:1');
        }
        
        global void execute(Database.BatchableContext bc, List<Account> scope){
            Map<Id, List<Opportunity>> accountToOppsMap = new Map<Id, List<Opportunity>>();
            for(Opportunity opp: [SELECT Id, Name, AccountId, Amount FROM Opportunity where AccountId IN :scope ]){
            if(!accountToOppsMap.containsKey(opp.AccountId)) {
                    accountToOppsMap.put(opp.AccountId, new List<Opportunity>());
            }
            accountToOppsMap.get(opp.AccountId).add(opp);
            }
            for(Account acc: scope) {
                List<Opportunity> opps = accountToOppsMap.get(acc.id);
                for(Opportunity opp: opps)
                {
                    acc.Pipeline_Amount__c = acc.Pipeline_Amount__c + opp.Amount;
                    
            }
            magicNum++;
        }
        update scope;
        }

        global void finish(Database.BatchableContext bc){
            System.debug('In the finish method');
            System.debug('Total records processed ' + magicNum);
        }

    }
