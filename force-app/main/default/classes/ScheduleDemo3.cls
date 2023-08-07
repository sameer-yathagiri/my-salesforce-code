global class ScheduleDemo3 implements Schedulable{
    global void execute(SchedulableContext sc){
        System.debug('In the execute method of Scheduled Job');
    }
}