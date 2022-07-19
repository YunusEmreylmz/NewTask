trigger deneme1 on Account (before insert,after insert,before update,after update) {
    if(trigger.isafter && trigger.isinsert){
            for(Account acc:trigger.new){
        Contact newcnt = new Contact(LastName='Contact of' + acc.Name,AccountId=acc.Id);
        insert newcnt;
    }

    }
    if(trigger.isafter && trigger.isupdate){
            for(Account acc:trigger.new){
        Contact newcnt = new Contact(LastName='Contact of' + acc.Name,AccountId=acc.Id);
        insert newcnt;
    }
    
}
    }