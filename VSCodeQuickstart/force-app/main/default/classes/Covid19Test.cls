@isTest
public class Covid19Test {
    
	@isTest
    public static void treatPatientTest(){
        Covid19 jaipur = new Covid19(10);
        
        Integer treated= jaipur.getTreated();
        system.assertEquals(10, treated,'Treated count doesnot match');
        
        Covid19 hyd = new Covid19(112);
        
        treated= hyd.getTreated();
        system.assertEquals(112, treated,'Treated count doesnot match');
        
        system.assertEquals(122, Covid19.recoveredInCountry, 'Treated count doesnot match');
        
        jaipur.treatPatient();
        treated= jaipur.getTreated();
        system.assert(treated == 11,'Treated count does not match');
        system.assert(Covid19.recoveredInCountry == 123,'Treated count does not match');
        
    }
    
    @isTest
    public static void treatPatientTestNegative(){
        Covid19 jaipur = new Covid19(-10);
        
        Integer treated= jaipur.getTreated();
        system.assertEquals(0, treated,'Treated count doesnot match');
        
    }
}