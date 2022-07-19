import { LightningElement,wire,api,track } from 'lwc';
import getExam from '@salesforce/apex/contactnamereturn.getExam'

export default class Proje extends LightningElement {
@track data=[];
@track columns = [
    { label: 'Label', fieldName: 'Name' },
    { label: 'Total Score', fieldName: 'Score__c'},
    
];
@api recordId;
connectedCallback(){
getExam({contactId:this.recordId})
.then(response => {
    this.data=response;
})
.catch(err =>{
    console.log(err);
})
    
}

}