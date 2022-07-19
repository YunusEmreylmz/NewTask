public class deneme5 {
//Account-->Name
//Contact-->LastName
//Lead-->Company,LastName,status
//Opportunity-->Name,stage,closedate
    public static void method01(){
        
Account acc = new Account (Name='Yunus Emre',website='www.google.com',Rating='sıcak');

        insert acc;        
        
    }

    public static void method02(){
        list <Account> mylist = new list<Account>();
        Account acc1 = new Account(name='Deneme1000',phone='135431');
        Account acc2 = new Account(name='Deneme2000');
        Account acc3 = new Account(name='deneme3000',website='www.yahoo.com');//deneme3
        mylist.add(acc1);
        mylist.add(acc2);
        mylist.add(acc3);
        
        insert mylist; 
database.insert(mylist,false);   //database.insert(mylist,false); kısmi başarı
    }
    public static void method03(integer sayi){
       list <Contact> mylist1 = new list <Contact>(); 
    
        for(integer i=1;i<sayi+1;i++){
         mylist1.add(new contact(lastname='deneme'+i,phone='13543513'));   
        }
        insert mylist1;
    }    
}