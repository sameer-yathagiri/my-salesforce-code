public class SquareAreaCalculator implements IAreaCalculator{
    Integer len;
    public SquareAreaCalculator(Integer len){
        this.len=len;
    }
    
    public void computeArea(){
        System.debug('Computes the area of Square'+ 3.14*len*len);
    }

}