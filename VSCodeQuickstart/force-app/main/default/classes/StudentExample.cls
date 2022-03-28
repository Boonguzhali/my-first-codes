public class StudentExample {

    public String name='Agaren';
    public String studentClass = 'KG';
    public String address ='Bent creek drive';
    public Integer age=5;
    public Date dob;
    public Integer mark1;
    public Integer mark2;
    public Integer mark3;
    public Integer total;
    public Decimal percentage;
    public List<String>studentName;
    public List<Integer>studentAge;
    public List<Decimal>studentPercentage;
    
    public Set<String>rollName;
    public Set<Integer>rollNumber;
    
    public Map<String,Integer> studentMap;
    
    public void percentage(Integer mark1, Integer mark2, Integer mark3){
        total = mark1+mark2+mark3;
        if(mark1 <50 || mark2<50 || mark3<50){
            system.debug('Failed');
        }else{
        percentage=total/3;
        system.debug('Percentage:'+percentage);
        }
        system.debug('Total:'+total);        
    }
    
    public void grade(Decimal percentage){
        if(percentage >=90){
            system.debug('Grade A');
        }else if(percentage <90 && percentage >80){
            system.debug('Grade B');
        }else if(percentage <80 && percentage >70){
            system.debug('Grade C');
        }else if(percentage <70 && percentage >50){
            system.debug('Grade D');
        }else{
            system.debug('Grade E');
        }
    }
    
    public void studentDetail(){
        studentName = new List<String>();
        studentAge = new List<Integer>();
        studentPercentage = new List<Decimal>();
        
        studentName.add('Agaren');
        studentName.add('Kavin');
        studentName.add('Boon');
        studentName.add('Kaly');
        system.debug('Student name:'+studentName);
        system.debug('index name:'+studentName.get(3));
        system.debug('contain function:'+studentName.contains('Kavin'));
        system.debug('size before remove:'+studentName.size());
        studentName.remove(3);
        system.debug('size after remove:'+studentName.size());
        system.debug('Again student name:'+studentName);
        
        studentAge.add(5);
        studentAge.add(2);
        studentAge.add(10);
        studentAge.add(15);
        system.debug('Student Age:'+studentAge);
        
        studentPercentage.add(50.0);
        studentPercentage.add(60.4);
        studentPercentage.add(20.6);
        studentPercentage.add(50.34);
        system.debug('Student Age:'+studentPercentage);
        
        rollNumber = new Set<Integer>();
        rollNumber.add(001);
        rollNumber.add(004);
        rollNumber.add(30002);
        rollNumber.add(4);
        system.debug('rollnumber before any changes:'+rollNumber);
        system.debug('contains fnction:'+rollNumber.contains(3002));
        rollNumber.remove(004);
         system.debug('rollnumber before any changes:'+rollNumber.isEmpty());
        system.debug('rollnumber after changes:'+rollNumber);
         system.debug('rollnumber size:'+rollNumber.size());
        
        for(Integer i=0;i<=3;i++){
            system.debug('StudentName:'+studentName[i]+',StudentAge:'+studentAge[i]+',StudentPercentage:'+studentPercentage[i]);
            //system.debug('Set name:'+rollNumber[i]);
        }
        
        
    }
    
    public void mapMethod(){
        Map<String,String> studentMap = new Map<String,String>();
        studentMap.put('i1','test1');
        studentMap.put('i2','test2');
        system.debug('Map data::'+studentMap);
        system.debug('get value of i2:'+studentMap.get('i2'));
        system.debug('value display:'+studentMap.values());
        system.debug('keyvalue display:'+studentMap.keyset());
        set<String> keyValue=studentMap.keyset();
        List<String> values= studentMap.values();
        system.debug('Set values:'+keyValue);
        system.debug('list values:'+values);
        system.debug('size:'+studentMap.size());
        
        for(String key:keyValue){
            system.debug('map key values:'+studentMap.get(key));
        }
        
       
        
    }
    
    
}