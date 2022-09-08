trigger CountofContact on contact (after insert,after update, after delete, after undelete) {
    list<account> acclist = new list<account>();
    set<id> setId = new set<id>();
    if(trigger.isafter){
        if(trigger.isinsert || trigger.isupdate|| trigger.isundelete){
            for(contact con : trigger.new){
                setId.add(con.AccountId);
            }
        }
        list<Account> acclist1 =[select id, Count_of_Contact__c,(select id, name from contacts)from account where id=:setId];
        for (account ac:Acclist1){
            ac.Count_of_Contact__c=ac.contacts.size();
            acclist.add(ac);
        }
        update acclist;
    }
}