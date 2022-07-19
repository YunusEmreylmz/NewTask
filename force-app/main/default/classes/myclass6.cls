public class myclass6 {
    public static integer yuvarlama(integer a){
      integer b=math.mod(a,10);
        if(b<5){
        return (a/10)*10;    
        } 
        else {
        return ((a/10)+1)*10;
        }
    } 
}