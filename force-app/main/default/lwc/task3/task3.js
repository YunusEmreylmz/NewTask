import {LightningElement,api,wire,track} from 'lwc';
import getExam from '@salesforce/apex/contactnamereturn.getExam'

export default class AccordionEx extends LightningElement {
@track multiple = true;
@track exams ;
@api recordId;

@wire(getExam ,{contactId:'$recordId'}) 
wiredAccountss({
    error,
    data
}) {
    if (data) {
        this.exams = data;
        console.log(data);
        console.log(JSON.stringify(data, null, '\t'));
        
        data.forEach(function (item, key) {
            console.log(key); 
            console.log(item); 
        });
        
    } else if (error) {
        this.error = error;
    }
}

}