public class MathCalculator {
    private static Integer num1,num2;
    
    static{
        num1 = 2;
        num2 = 3;
    }
    @TestVisible
    private static Integer add(Integer i1, Integer i2){
        return i1+i2;
    }
    private static Integer multiply(Integer i1, Integer i2){
        return i1*i2;
    }
    private static Integer subtract(Integer i1, Integer i2){
        return i1-i2;
    }
    private static void printOutput(){
        System.debug('The sum is '+add(num1,num2));
        System.debug('The multiplication is '+multiply(num1,num2));
        System.debug('The subtraction is '+subtract(num1,num2));
    }
    public void doMath(){
        printOutput();
    }
    

}