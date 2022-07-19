public class AudiA4 implements Motor, Klima ,fren{
//extends keyword'u iki class arasında kullanılır. Motor class değil
//interface'tir bu yüzden extends yazarsak hata verir.
//interfaceleri parent yapmak için implements keywordu kullanılır.    
//methodların bas kismina override yazmak gerekmez bu yüzden yazmayın

    //motor interface'inden override edilenler    
	
      public  void eco(){
            system.debug('Audi A4 Eco motor kullanır');
       				    }

       public void turbo(){
		 	system.debug('Audi A4 Turbo motor kullanır');
           }
       public void gas(){
		 	system.debug('Audi A4 benzinli motor kullanır');
           }
    
    //Klima interface'inden override edilenler
    public void mevsimsel(){
        system.debug('Audi A4 mevsimsel klima kullanır');
    }	 
     public void digital(){
        system.debug('Audi A4 digital klima kullanır');
    }	
        //Fren interface'inden override edilenler

     public void abs(){
        system.debug('Audi A4 abs fren sistemi kullanır');
    }	
     public void secure(){
        system.debug('Audi A4 secure fren sistemi kullanır');
    }	
    
}