public class Fitness {
   
    public static Decimal calculateBMI(Decimal weight, Decimal height){
        if(height <= 0 || weight <0){
            return -1;
        }else{
        Decimal bmiValue = weight/(height*height);
        return bmiValue;
        }
    }
    
    public static Decimal calculatePace(Decimal distance,Decimal min){
        Decimal hr=min/60;
        Decimal kiloPerMinute = distance/hr;
        return kiloPerMinute;
    }
    
}