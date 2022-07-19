import { LightningElement } from 'lwc';

export default class SetterPracrise extends LightningElement {
    name='dog';
    age=2;
    newAge=0;
    updateAge(event){
        this.newAge=event.target.value
    }
    updateOriginalAge(){
        this.age=this.newAge
    }
}