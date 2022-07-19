public class SoqlTR04 {
    
    //Farkli durumlara farklilasan query'ler olusturunuz
    //Ornegin; 'Class1' icin Account Name ve Annual Revenue yu Rating'i 'Hot' ve Annual Revenue'su 1000 den buyuk olanlar icin secsin
    //         'Class2' icin Account Name ve Annual Revenue yu Rating'i 'Warm' ve Annual Revenue'su 1000 den buyuk olanlar icin secsin
    //          Digerleri icin Account Name ve Annual Revenue yu Rating'i 'Null'
    //deneme
    
    //1.Way:Not good
    public static void method01(String className){
        
        if(className.equals('Class1')){
            List<Account> q1 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating='HOT' AND AnnualRevenue>1000];
            for(Account w : q1){
                System.debug(w.Name + ' - ' + w.AnnualRevenue);
            }
        }else if(className.equals('Class2')){
            List<Account> q2 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating='WARM' AND AnnualRevenue>1000];
            for(Account w : q2){
                System.debug(w.Name + ' - ' + w.AnnualRevenue);
            }
        }else{
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
    
    //3.Way: The best
    public static void method03(String className){
        
        List<Account> q1 = new List<Account>();
        String anaQuery = 'SELECT Name, AnnualRevenue FROM Account';
        
        if(className.equals('Class1')){
            anaQuery = anaQuery + ' WHERE Rating=\'HOT\' AND AnnualRevenue>1000';
        }else if(className.equals('Class2')){
            anaQuery = anaQuery + ' WHERE Rating=\'WARM\' AND AnnualRevenue>1000';
        }else{
            anaQuery = anaQuery + ' WHERE Rating=NULL';
        }
        
        List<Account> result = Database.query(anaQuery);
        
        for(Account w : result){
            System.debug(w.Name + ' - ' + w.AnnualRevenue);
        }
        
    }    
}

/*Create - Read - Update - Delete ==> CRUD Operations
		Su ana kadar sadece ‘Read’ yaptik, ‘Read’ yapmak icin ‘SELECT FROM’ kullanilir.
        ‘SELECT FROM’ kullanilan Query’ler Data Query Language(DQL) kullaniyorlar demektir.
		Data Manipulation Language(DML) insert, update, ve delete operation’larda kullanilir.

	    Data Definition Language(DDL) SQL Database Developer’lar database olusturmak icin kullanir
        Data Control Language(DCL) SQL Database Developer’lar hangi data’ya hangi kullancinin ulasabilecegini belirlemek icin kullanir */