public interface Motor {
  //1.interface içindeki methodlar otomatik olarak public tir. bu yüzden 
  //interfacelerde method oluştururken acccess modifier yazılmaz!
  //2.interface içindeki methodlar otomatik olarak abstract'tır. 
  //bu yüzden body konulmaz.
     void eco();
//eğer bir method bize data üretmiyorsa çıktı vs aldırıyorsa void yazılır.
	void turbo();

	void gas();    
}