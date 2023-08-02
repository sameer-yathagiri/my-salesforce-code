//static vs Instance vars and methods
public class Demo2 {
    
    String helloWorldString;			//Instance Member var
    private static final String DEFAULT_STRING;		//STatic Member var
    
    static{
        DEFAULT_STRING = 'Hello World';	//Static initializer block
    }
    
    public Demo2(){					//Constructor
        this(DEFAULT_STRING);
    } 
    
    public Demo2(String stringToDisplay){		//overloaded COnstructor
        this.helloWorldString = stringToDisplay;
    }
    
    public void printOutput(){			// Instance Method 
        System.debug('Display text: '+helloWorldString);
        
    }
    
    public static void printOutput1(){			// Static Method 
        System.debug('Display from static method'+DEFAULT_STRING);
        
    }
    
    

}