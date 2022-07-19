public class deneme2 {

    public static void method01(){
//":" ifadesi isimleri bu List ten al demektir. ":mylist1" ifadelerine Binding Variable denir
//Binding Variable'lar "IN", "NOT IN", "=", "!=", "LIMIT", "OFFSET" lerde kullanilabilir.

        list <String> mylist1 = new list <string>{'GenePoint', 'Burlington Textiles Corp of America', 
'sForce', 'Express Logistics and Transport','Deneme'};   
    list <Account> mylist = [SELECT Rating,
                             Name
                             FROM Account 
                             WHERE Name = :mylist1 ];
        for(Account w:mylist){
            system.debug('Name:'+ w.Name +' Rating:' + w.Rating);
        }
    }
    //bestway
    public static void method02(integer lim, integer offset){
       
       list<Account> mylist = [SELECT Name,
                               Rating FROM Account 
                               ORDER BY Name LIMIT:lim OFFSET:offset];
        
        for(Account w:mylist){
            system.debug('Name:'+ w.Name +' Rating:' + w.Rating);
        } 
    }
     
}