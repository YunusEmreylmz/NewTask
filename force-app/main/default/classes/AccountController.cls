public with sharing class AccountController {

    // wire decorator'ı kullanabilmek için @AuraEnabled (cacheable=true) kullanılıyor
    @AuraEnabled // (cacheable=true)
    public static List<Account> getAccounts (String filter){
           
        String keyNameString =  '%' + filter + '%';
        List<Account> accountList = [SELECT Id, Name, Phone FROM Account WHERE Name LIKE :keyNameString];
        return accountList;
    }

}