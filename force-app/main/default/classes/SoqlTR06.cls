public class SoqlTR06 {

    //1.Database'e bir tane Lead objesi  oluşturalım
    //2.Insert ettiğiniz lead objesinin LastName'ni Xyz yapın
    public static void method01(){
       // Lead obj = new Lead(FirstName = 'Ali', LastName = 'Can', Company = 'Techpro', Status = 'Open');
        //insert obj;
        //note:Delete,Update ve Undelete operasyonları kritik operasyonlardır. 
        //Bu op. lar ID olmadan yapılamazlar.
        list <lead> ids = [SELECT Id FROM Lead WHERE FirstName = 'Ali'];
        for(lead w:ids){
            w.Lastname = 'Xyz';
        }
        update ids;
    }
}