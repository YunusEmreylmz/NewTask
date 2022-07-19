import { LightningElement } from 'lwc';
import getAccounts from '@salesforce/apex/AccountController.getAccounts'

export default class GetAccount extends LightningElement {
    filterWord='';
accounts;
error;
                                                            //$filterWord kelimesindeki dolar işareti property i dinamik hale getirir.
                                                            //Dinamik demek data değiştiğinde otomatik olarak yansıtılıyor demektir.
//@wire(getAccounts, {filter:'$filterWord'}) accounts;    // filter kelimesi Apex metotunun parametre adı olmalıdır
// accounts içinde data ve error diye iki farklı veriyi barındırır.
// accounts.data ve accounts.error olarak kullaılır. 
// data ve error'ün ikisinden biri doludur.
    handleInput(event){
        this.filterWord = event.target.value;
    
    }

     handleGetAccount(){
        getAccounts({filter:this.filterWord})
            .then((result) => {
                this.accounts=result;
                this.error=undefined;
            })
            .catch((error) => {
                this.accounts=undefined;
            });
    }

}