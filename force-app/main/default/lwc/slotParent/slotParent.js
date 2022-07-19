import { LightningElement } from 'lwc';

export default class SlotParent extends LightningElement {

country;
city;
famousFor;

    handleCountry(event){
        this.country=event.target.value
    }
    handleCity(event){
        this.city=event.target.value
    }
    handleFamousFor(event){
        this.famousFor=event.target.value
    }

}