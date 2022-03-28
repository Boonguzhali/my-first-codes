global class AccountRevenueBatch implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator('Select Id,Name,Status__c,Booking_Current_Year__c,Booking_Last_To_Last_Year__c,Booking_Last_Year__c ,(select Id,StageName,Closedate,amount,closeDate from Opportunities)from Account');
    }
    global void execute(Database.BatchableContext BC, List<Account> accList){
        Integer cyear=system.today.year();
        Integer lyear=cyear-1;
        Integer lastToLastYear = cyear-2;
        List<Account> lstToUpdate = new List<Account>();
        for(Account a:accList){
            if(!a.Opportunities.isEmpty()){
                Decimal currentYearAmount =0;
                Decimal lastYearAmount =0;
                Decimal lastToLastYearAmount =0;
                for(Opportunity o:a.Opportunities){
                    if(o.closeDate.year()==cyear){
                        currentYearAmount = currentYearAmount + o.Amount;
                    }
                    if(o.closeDate.year()==lyear){
                        lastYearAmount = lastYearAmount + o.Amount;
                    }
                    if(o.closeDate.year()==lastToLastYear){
                        lastToLastYearAmount = lastToLastYearAmount + o.Amount;
                    }
                }
            
                lstToUpdate.add(a);
            }
        }
        if(!lstToUpdate.isEmpty()){
            update lstToUpdate;
        }
    }
    global void finish(Database.BatchableContext BC){
        
    }
}