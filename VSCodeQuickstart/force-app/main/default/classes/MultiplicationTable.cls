public class MultiplicationTable {
    
    public void displayTable(Integer i){
        for(Integer j=1;j<=10;j++){
            Integer z = i*j;
            system.debug(i+'*'+j+'='+z);
        }
    }
}