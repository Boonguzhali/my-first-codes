public with sharing class accountManager {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccount(Integer numberOfRecords){
      
        return [SELECT Id, Name, Phone, Website FROM Account LIMIT :numberOfRecords];
    }
}
