public class Myclass1 {
//rastgele bir harf üreten bir fonksiyon olusturun.

    public static String rastgelebirharfver(){
     string alfabe = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
integer maxindex=alfabe.length()-1;
integer rastgeleindex=integer.valueof(math.random()*maxindex);
system.debug(maxindex);        
 return alfabe.substring(rastgeleindex,rastgeleindex+1);      
        
    }    
   }