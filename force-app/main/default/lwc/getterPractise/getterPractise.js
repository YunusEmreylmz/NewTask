import { LightningElement } from 'lwc';

export default class GetterPractise extends LightningElement {

    num1=1;
    num2=2;
    isimListesi = ['Ali','Ayşe','Hakan','Emre'];
    index=0;
    handleBlur(event){
        this.index = event.target.value;
    }
    get toplam(){
        return this.num1 + this.num2;
    }
      get cikar(){
        return this.num1 - this.num2;
    }
      get carpim(){
        return this.num1 * this.num2;
    }
      get bolme(){
        return this.num1 / this.num2;
    }
    get ilkisim(){
        return this.isimListesi[0];
    }
     get sonisim(){
        return this.isimListesi[this.isimListesi.length-1];
    }
    get indexdekiData(){
        if(this.index<this.isimListesi.length && this.index >= 0){
return this.isimListesi[this.index];
        }else{
            alert('Lütfen 0-5 deger girin');
        }
    }
}