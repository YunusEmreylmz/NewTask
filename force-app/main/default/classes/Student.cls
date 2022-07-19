public class Student {

   public string name= 'Ali Can'; //bu datayı public yaparsak herkes görebilir.
 //public string name= 'Ali Can'; yapınca gizlemiş olduk ve bunu student class dışında kimse göremez
   integer age=13; //eğer hiç bişey yazmazsak apex otomatik olarak private algılar. 
   private boolean Successful= true;	
	
    //dataların okunabilir olmasını istiyorum.
    public string getName(){ //get methodu mutlaka public olmalı yoksa projedeki diğer insanlar göremez
	//get methodu oluşturmak için get ile başlayıp neyi çekmek istersek onu yazmalıyız
return name;
    }
    public integer getAge(){
        return age;
    }
    public boolean issuccessful(){ //data tip boolean olduğunda get methodlarda isim is ile başlar
       //getsuccessful() da yapabiliriz ama booleanlarda is daha çok tercih edilir.
        return successful;
    }
    
    
    //name,age ve successful datalarini değiştirilebilir yapın
    //set methodlar herzaman public olmalı
    public void setName(string name){//yeni bir data oluşturmuyor sadece değiştiriyorsanız return type void olmalı
    //set method yeni data üretmez varolan datayı değiştirir. bu yüzden return typeları hep void olmalı
    this.name = name; //eski name'i this.name
    }
    public void setAge(integer age){
        this.age = age;
    }
    
    public void setSuccessful(boolean successful){
    this.successful = successful;        
    }    
    
    //bu yaptığımız işlemde name,age ve successful u gizli data yapım ve
    //ardından get method ile okunabilir yaptım set method ile değiştirilebilir yaptım
    }