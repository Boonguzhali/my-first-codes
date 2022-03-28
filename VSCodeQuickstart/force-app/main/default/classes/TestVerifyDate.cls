@isTest

public class TestVerifyDate {
    @isTest static void date30days(){
        Date returnD1= VerifyDate.CheckDates(date.valueOf('2020-02-14'), date.ValueOf('2020-02-24'));
        system.assertEquals(date.ValueOf('2020-02-24'),returnD1);
    }
    
    @isTest static void datenot30days(){
        Date returnD2= VerifyDate.CheckDates(date.valueOf('2020-02-14'), date.ValueOf('2020-03-24'));
        system.assertEquals(date.ValueOf('2020-02-29'),returnD2);
    }
}