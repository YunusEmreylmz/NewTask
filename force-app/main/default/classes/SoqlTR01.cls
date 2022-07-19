public class SoqlTR01 {

    //Account name'lerini ve tel nolarını console'a yazan bir method oluşturun.
    public void method01(){
      list <Account> accs =  [SELECT Name, Phone FROM Account]; //Class içinde query yazarken[] kullanmamız gerekir  
      
        for(account w: accs){
            system.debug('Account Name:'+' '+w.name+'-'+'Account Phone:'+' '+w.phone);
        }
    }
    public static void method02(){
        
        Map<Id, Account> accsMap = new Map<Id, Account>([SELECT Name, Phone FROM Account]);
        //Tum data'yi tek satirda yazdirir
        System.debug(accsMap);
        
        for(Account w : accsMap.values()){
            System.debug('Account Name: ' + w.Name);
        }
}
    //Herbir Contact icin, Account name, Account rating, Contact name, Contact department, ve Case number’i ve Case Subject console yazdiran method olusturunuz
    public static void method03(){
list <Contact> contacts= [SELECT contact.name, 
         Contact.Department, 
         Account.Name, 
         Account.Rating, 
         (SELECT Case.Casenumber, Case.Subject FROM Cases) 
    					  FROM Contact];
        //Datayı ana object'ten (Contact) aliniz.
        for(Contact w:contacts){
            system.debug(w.Name + ' - ' + w.Department + ' - ' + w.Account.Name + ' - ' + w.Account.Rating);
        }
        
    }
    
}