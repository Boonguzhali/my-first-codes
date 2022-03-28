public class RandomContactFactory {
    public static List<Contact>generateRandomContacts(Integer num, String LastName){
        List<Contact> clist = new List<Contact>();
        for(Integer i=1;i<=num;i++){
            Contact c= new Contact(FirstName='Test'+i,LastName=lastName);
            clist.add(c);
        }
        return clist;
    }

}