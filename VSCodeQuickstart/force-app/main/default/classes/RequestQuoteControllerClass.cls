public class RequestQuoteControllerClass {
	//variable declaration for attachement
  public static List<Attachment> listAttachment{get;set;}
    
    public static Attachment Attachment1{
        
        
        get{
          
            if(Attachment1 == null)
                Attachment1= new Attachment();
            return Attachment1;
        }set;
        
    }
    
    
   
    
    Public RequestQuoteControllerClass (ApexPages.StandardController controller){
        
    }
}