trigger deneme on Account (before insert) {
    for(Account acc:trigger.new){
        if(acc.Industry==null){
            acc.Industry='Education';
        }
    }
}