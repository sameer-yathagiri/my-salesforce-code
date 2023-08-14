public with sharing class FutureDemo {
    public void invokeFutureCall() {
        //String primitiveValue = 'Input to future method';
        //List<String> listofPrimitiveValue = new List<String>{PrimitiveValue};

        //Account accountRec = [Select Id, Name From Account Limit 1][0];
        //System.debug('accountList: '+accontRec);

        futureMethod1();
    }

    @future
    public static void futureMethod1(){
        System.debug('Inside futureMethod1');
    }
}