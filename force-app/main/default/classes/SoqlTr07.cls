public class SoqlTr07 {

    public static void method01(){
        
        //Opportunity Object olusturunuz
        //Olusturdugunuz Opportunity Object'ini siliniz
        //bu şekilde de olur. Opportunity obj = new Opportunity (Name = 'New Techpro', StageName = 'Closed Won', CloseDate=date.newInstance(2022,05,15));

        Opportunity obj = new Opportunity();
        obj.Name='TechProEd';
        obj.StageName='Closed Won';
        obj.CloseDate=Date.today().addDays(2);
        Database.insert(obj);
        
        //Delete icin Id'ye ihtiyac var
        List<Opportunity> opps = [SELECT Id FROM Opportunity WHERE Name='TechProEd' AND StageName='Closed Won'];
        
        Database.delete(opps);
        
    }
}