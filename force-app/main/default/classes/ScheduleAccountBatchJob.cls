global class ScheduleAccountBatchJob implements Schedulable{
    global void execute(SchedulableContext sc){
        AccountsBatchJob abj = new AccountsBatchJob();
        Database.executeBatch(abj);
    }
}
