public class test1 {

    public static void method1(){
      List <Contact> mylist = [SELECT FirstName,LastName,Phone FROM Contact WHERE Phone LIKE '(65%'];
       //system.debug(mylist);
        for(Contact w:mylist){
         system.debug('FirstName:'+w.FirstName+'--LastName:'+w.LastName+'--Phone:'+w.Phone);   
        }
    }
    public static void method02(){
       List <Account> mylist2 = [SELECT Name, 
                                 		AnnualRevenue 
                                 FROM Account 
                                 WHERE AnnualRevenue<500000000 AND AnnualRevenue !=NULL 
                                 ORDER BY AnnualRevenue DESC];
       //system.debug(mylist2); 
        for(Account w:mylist2){
            system.debug('Account Name:'+w.Name+'--AnnualRevenue:'+w.Annualrevenue);
                }
    }
    
    
    public static void method03(){
     AggregateResult[] aggregate = [SELECT 
         MAX(NumberofEmployees) max, 
         MIN(NumberofEmployees) min, 
         AVG(NumberofEmployees) avg 
         FROM Account];
     system.debug('Max:'+aggregate[0].get('max')+' Min:'+aggregate[0].get('min')+' Avarage:'+aggregate[0].get('avg'));   
    } 
    
 public static void method04(){
     AggregateResult[] aggregate = [SELECT  
         Industry,                           
         AVG(NumberofEmployees) avg 
         FROM Account Group BY Industry];
     for(AggregateResult w:aggregate){
         system.debug('Industry:'+w.get('Industry') + ' Avarage:' + w.get('avg'));
     }
     
    } 
    
    public static void method05(){

        for(AggregateResult w : [SELECT AVG(NumberOfEmployees) AvgByIndustry, Industry FROM Account GROUP BY Industry] ){
            
            //system.debug(w);
            
            system.debug('Industry :' + w.get('Industry') + ' ===> ' + 'Average Number Of Employess :' + w.get('AvgByIndustry'));            
                
        }
    }

    
}