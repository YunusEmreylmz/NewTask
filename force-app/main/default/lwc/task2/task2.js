import { LightningElement,wire,api,track } from 'lwc';
import getExam from '@salesforce/apex/contactnamereturn.getExam'
export default class LightningExampleAccordionMultiple extends LightningElement {
@api recordId;
@track data;
//@wire(getExam, {contactId:'$recordId'}) exams;
connectedCallback(){
getExam({contactId:this.recordId})
.then(response => {
    this.data=response;
})
.catch(err =>{
    console.log(err);
})
    
}
 handleSectionToggle(event){
        console.log(event.detail.openSections);
    }
  /*   handleSectionToggle(event) {
        const openSections = event.detail.openSections;

        if (openSections.length === 0) {
            this.activeSectionsMessage = 'All sections are closed';
        } else {
            this.activeSectionsMessage =
                'Open sections: ' + openSections.join(', ');
        }
    } */
}
