public class deneme6 {
	//update Account-->Name
    public static void method01(){
   list <Contact> cnt = [SELECT Id FROM Contact WHERE LastName LIKE '%Yilmaz%'];

    for( Contact w:cnt ){
       w.phone = '532135463'; 
    }
	update cnt;
 }   
}