global class StatefulDemo implements Database.Batchable<Sobject>, Database.Stateful{

	private Integer magicNum = 0;

	global Database.QueryLocator start(Database.BatchableContext bc){
        System.debug('In the start method');
		return Database.getQueryLocator('Select Id, Name From Account Limit 10');
	}
	
	global void execute(Database.BatchableContext bc, List<Account> scope){
		System.debug('In the execute method');
        for(Integer i = 0; i < 2; i++){
        	magicNum++;
        }
	}

	global void finish(Database.BatchableContext bc){
		System.debug('In the finish method');
		System.debug('magicNum ' + magicNum);
	}
}