public class SoqlTr05 {
    
    //Bir Account Object olusturunuz, onu database'e insert ediniz.
    //Insert edildigini hem developer console'dan hem de UI dan dogrulayiniz.
    public static void method01(){
        
        //Sadece 1 tane inser yaptik
        Account acc1 = new Account(Name='Test06', Phone='123');
        acc1.Rating='Hot';
        
        Insert acc1;
        //Database.insert(acc1) ve Database.insert(acc1, true) 'Insert acc1' ile ayni anlama gelir yani; kismi basariya musaade etmez. Ya hep ya hic 
        //Database.insert(acc1, false) kismi basariya musaade eder.
  
       
        //Coklu inser4 yapalim
        List<Account> accList = new List<Account>();
        Account acc2 = new Account(Name='Test02');
        Account acc3 = new Account(Name='Test03');
        Account acc4 = new Account(Name='Test04');
        Account acc5 = new Account(Name='Test05');
        
        accList.add(acc2);
        accList.add(acc3);
        accList.add(acc4);
        accList.add(acc5);
        
        Database.insert(accList, true);
        
    }

}