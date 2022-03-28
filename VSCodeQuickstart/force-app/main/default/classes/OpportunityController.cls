public class OpportunityController {
   
    public static void updateProfile(List<Id>oppIds){
        for(Id oppId:oppIds){
           Opportunity opp= [SELECT Id, Amount FROM OPPORTUNITY WHERE Id=:oppId];
            if (opp.Amount <10000){
                opp.Profile__c='Low';
            }else if (opp.Amount >50000){
                opp.Profile__c='High';
            }else{
                opp.Profile__c='Medium';
            }
            update opp;
        }
    }
}