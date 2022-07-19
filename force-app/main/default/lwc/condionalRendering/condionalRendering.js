import { LightningElement } from 'lwc';
export default class ConditionalRendering extends LightningElement {
    flag=true;
    kabulEdildi=false;
    handleChange(event){
        // event.target.checked checkboxdaki degeri return edir
        // checked ise deger true dir
        // unchecked ise deger false dir
        this.kabulEdildi=event.target.checked;
    }
}