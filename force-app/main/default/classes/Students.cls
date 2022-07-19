public class Students {

  private  string name = 'Ali Can';
  integer age = 13;//eğer access modifier koymazsanız Apex onu otomatik olarak private kabul eder.
  private boolean successful = true;  
  //name,age ve successful datalarini okunabilir yapmak;
    public string getName(){ //get yazarsın istediğin datanın adını yazarsın
 	    return name;    
    }  
    public integer getAge(){
        return age;
    }
    public boolean isSuccessful(){
        return successful;
    }
  //name,age ve successful datalarini değiştirilebilir yapmak;
  //yeni data üretmeyen methodların return type'ları void olur
  //set method yeni data üretmez,varolan datayı değiştirir.bu yüzden return type'ları hep void olmalıdır
    public void setName(string name){
      this.name = name;  
    }
    public void setAge(integer age){
        this.age=age;
    }
    public void setSuccessful(Boolean successful){
        this.successful = successful;
    }
}