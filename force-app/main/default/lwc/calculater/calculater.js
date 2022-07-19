import { LightningElement, track } from 'lwc';
export default class calculater extends LightningElement {
    // Modal view controller
    number1 =0;
    number2 =0;
    result = 0;
    showpreviousresult=false;
    @track previousResults = [];
    numberHandler(event){
        if(event.target.name === "number1"){
            this.number1 = event.target.value;
        } else if(event.target.name === "number2"){
            this.number2 = event.target.value;
        }
    }
 //   number1Handler(event){
 //       this.number1 = event.target.value;
//    }
//    number2Handler(event){
//        this.number2 = event.target.value;
 //   }
    toplaClickHandler(event){
        this.previousResults.push(this.result);
        this.result = parseInt(this.number1) + parseInt(this.number2);
    }
    cikartClickHandler(event){
        this.previousResults.push(this.result);
        this.result = parseInt(this.number1) - parseInt(this.number2);
    }
    carpClickHandler(event){
        this.previousResults.push(this.result);
        this.result = parseInt(this.number1) * parseInt(this.number2);
    }
    bolClickHandler(event){
        this.previousResults.push(this.result);
        this.result = parseInt(this.number1) / parseInt(this.number2);
    }
preresulthandler(event){
    this.showpreviousresult= event.target.checked;
}


}