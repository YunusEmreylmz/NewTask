public class deneme3 {
    //not recommended.
public static void method01(String className){
        
        if(className.equals('Class1')){
            List<Account> q1 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating='HOT' AND AnnualRevenue>1000];
            for(Account w : q1){
                System.debug(w.Name + ' - ' + w.AnnualRevenue);
            }
        } else if(className.equals('Class2')){
            List<Account> q2 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating='WARM' AND AnnualRevenue>1000];
            for(Account w : q2){
                System.debug(w.Name + ' - ' + w.AnnualRevenue);
            }
        } else{
            List<Account> q3 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating=NULL];
            for(Account w : q3){
                System.debug(w.Name + ' - ' + w.AnnualRevenue);
            }
        }
        
    }
    
     //2.Way: Good
    public static void method02(String className){
        
        List<Account> q1 = new List<Account>();
        
        if(className.equals('Class1')){
            q1 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating='HOT' AND AnnualRevenue>1000];
        }else if(className.equals('Class2')){
            q1 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating='WARM' AND AnnualRevenue>1000];
        }else{
            q1 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating=NULL];
        }
        
        for(Account w : q1){
            System.debug(w.Name + ' - ' + w.AnnualRevenue);
        }
        
    }
    //3.way the best
    public static void method03(string ClassName){
        //list <Account> q1 = new list <Account>();
        string benzerquery = 'SELECT Name,AnnualRevenue, Rating FROM Account WHERE Rating = ';//\'Hot\' AND AnnualRevenue>1000
        if(ClassName.equals('Class1')){
        benzerquery = benzerquery+ '\'Hot\' AND AnnualRevenue>1000';
        } 
        else if(ClassName.equals('Class2')){
       benzerquery = benzerquery+ '\'Warm\' AND AnnualRevenue>1000' ;
        }
	    else{
        benzerquery = benzerquery+ ' NULL' ;   
        }
        list <Account> q1 = database.query(benzerquery);//string query normal query'e çevirir.
        for(Account w:q1){
             system.debug('Name:'+w.name+' AnnualRevenue:'+w.AnnualRevenue+' Rating:'+w.rating);   
            }

    }
    
}