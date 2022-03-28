@isTest
public class TestRestrictContactByName {
    @isTest
    public static void testContact(){
        Contact c= new Contact();
        c.LastName = 'INVALIDNAME';
        Database.saveResult r= Database.insert(c,false);
        system.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML' ,r.getErrors()[0].getMessage());
    }

}