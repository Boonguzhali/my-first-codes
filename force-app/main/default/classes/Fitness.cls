public class Fitness {
   
    public Decimal calculateBMI(Decimal weight, Decimal height){
        system.debug(weight+' '+height);
        Decimal bmiValue = weight/(height*height);
        return bmiValue;
    }
    
    public Decimal calculatePace(Decimal distance,Decimal min){
        Decimal hr=min/60;
        Decimal kiloPerMinute = distance/hr;
        return kiloPerMinute;
    }
    
}