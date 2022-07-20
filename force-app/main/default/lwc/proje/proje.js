import { LightningElement,wire,api,track } from 'lwc';
/* import getExam from '@salesforce/apex/contactnamereturn.getExam'
 */import getQuestion from '@salesforce/apex/contactnamereturn.getQuestion'

export default class Proje extends LightningElement {
@track data=[];
@track columns = [
    { label: 'Label', fieldName: 'Name' },
    { label: 'Total Score', fieldName: 'Total_Score__c'},
    
];
@api recordId;
/* @wire(getExam, {contactId:'$recordId'}) exams; */

connectedCallback(){
getQuestion({contactId:this.recordId})
.then(response => {
    this.data=response;
})
.catch(err =>{
    console.log(err);
})
    
}

}