public class SoqlTr02 {
//Aggregate functionlar genelde Array'in içine konulur
//Acoount objectlerinin minimum, maximum, ve ortalama isci 
    //sayilarini veren method olusturunuz. 
    public static void method01(){
        
        AggregateResult[] result = [SELECT MIN(NumberOfEmployees), MAX(NumberOfEmployees), AVG(NumberOfEmployees) FROM Account];
           //'expr0' ,'expr1' bunlar arrayin içindeki parça parça bilgiler get('expr0') bu şekilde her parçayı çeekbiliriz
        System.debug('Minimum number of employees = ' + result[0].get('expr0'));//Minimum number of employees = 120
        System.debug('Maximum number of employees = ' + result[0].get('expr1'));//Maximum number of employees = 145000
        System.debug('Average number of employees = ' + result[0].get('expr2'));//Average number of employees = 21996.818181818
        
    }
    //2.way
     public static void method02(){
        
        AggregateResult[] result = [SELECT MIN(NumberOfEmployees) min, MAX(NumberOfEmployees) max, AVG(NumberOfEmployees) avg FROM Account];
           //artık çıktılarda min = min deger max=max deger şeklinde çıktı. bu min maxlara Alies denir istediğimiz takma ismi atayabiliriz.
        System.debug('Minimum number of employees = ' + result[0].get('min'));//Minimum number of employees = 120
        System.debug('Maximum number of employees = ' + result[0].get('max'));//Maximum number of employees = 145000
        System.debug('Average number of employees = ' + result[0].get('avg'));//Average number of employees = 21996.818181818
        
    }
    //Account ortalama işçi sayılarını Industrylere göre veren method
    public static void method03(){
    AggregateResult[] result = [SELECT Industry, AVG(NumberofEmployees) avgByIndustry FROM Account GROUP BY Industry ORDER BY Industry NULLs LAST];
       // system.debug(result); //çok kalabalık bir sonuç aldık
       
        for(AggregateResult w: result){
            if(w.get('Industry')!=null){
         system.debug('Industry:' + w.get('Industry') + '--->Avg Number of Employees'+ w.get('avgByIndustry'));

            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }