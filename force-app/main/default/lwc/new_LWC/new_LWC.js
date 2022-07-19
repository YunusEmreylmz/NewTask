import { LightningElement } from 'lwc';

export default class New_LWC extends LightningElement {

greeting='World';
isim = 'John';
soyisim='';
ulke = 'Turkiye';
fname='Sam';
lname='Winchester';
num1;
num2;
handleinput(event){
    console.log('değşikliki var');
this.isim = event.target.value;
}
onchangehandler(event){
    this.soyisim = event.target.value;
}
onblurhandler(event){
   this.ulke = event.target.value; 
}
get fullUpperCase(){
    
    return `Ismim büyük harfle: ${this.fname.toUpperCase()} + ${this.lname.toUpperCase()}`
}

handleNum1(test){
this.num1 = test.target.value
}
handleNum2(test){
this.num2 = test.target.value
}

get toplam(){
        // string i numaraya cevirmek icin parseInt()
        // const sonuc = parseInt(this.num1)+parseInt(this.num2)
        // return sonuc;
        return `${parseInt(this.num1) + parseInt(this.num2)}`
    }

}