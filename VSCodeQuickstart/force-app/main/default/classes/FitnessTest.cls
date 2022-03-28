@isTest
public class FitnessTest {
    @isTest
    public static void calculateBMITest1(){
        Decimal weight=60;
        Decimal height=1.2;
        Decimal bmiValue = Fitness.calculateBMI(weight, height);
        bmiValue=bmiValue.setScale(2);
        system.assertEquals(41.67,bmiValue,'BMI should be 41.67 for 60kg and 1.2 m height');
    } 
    @isTest
    public static void calculateBMITest2(){
        Decimal weight=0;
        Decimal height=1.2;
        Decimal bmiValue = Fitness.calculateBMI(weight, height);
        bmiValue=bmiValue.setScale(2);
        system.assertEquals(0,bmiValue,'BMI should be 0 for 0kg and 1.2 m height');
    } 
    @isTest
    public static void calculateBMITest3(){
        Decimal weight=60;
        Decimal height=0;
        Decimal bmiValue = Fitness.calculateBMI(weight, height);
        bmiValue=bmiValue.setScale(2);
        system.assertEquals(-1,bmiValue,'Invalid input');
    } 
    @isTest
    public static void calculateBMITest4(){
        Decimal weight=-60;
        Decimal height=1.2;
        Decimal bmiValue = Fitness.calculateBMI(weight, height);
        bmiValue=bmiValue.setScale(2);
        system.assertEquals(-1,bmiValue,'Invalid input');
    } 
    @isTest
    public static void calculateBMITest5(){
        Decimal weight=60;
        Decimal height=-1.2;
        Decimal bmiValue = Fitness.calculateBMI(weight, height);
        bmiValue=bmiValue.setScale(2);
        system.assertEquals(-1,bmiValue,'Invalid input');
    } 
}