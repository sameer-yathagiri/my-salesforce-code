public with sharing class CalculatorController {
    public Integer firstNum {get;set;}
    public Integer secondNum {get;set;}
    public String outputStr {get;set;}
    public CalculatorController() {
        this.firstNum = 0;
        this.secondNum = 0;
    }
    public void add(){
        outputStr = String.valueOf(firstNum + secondNum);
        
    }
    public void subtract(){
        outputStr = String.valueOf(firstNum - secondNum);
        
    }
    public void multiply(){
        outputStr = String.valueOf(firstNum*secondNum);
       

    }
    public void divide(){
        if(secondNum==0){
            outputStr = 'Cannot divide by 0';
        }
        else{
            outputStr = String.valueOf(Double.valueOf(firstNum)/Double.valueOf(secondNum));
        }
        
        
    }
}