trigger DuplicateValidation on Account (before insert) {
    if(trigger.isbefore && trigger.isinsert){  
        set<string> accName = new set<string>();   
        list<account> acclist=[select id,name from account];   
        for(Account acc : acclist){   
            accName.add(acc.Name);   
        }   
        for(Account Ac : trigger.new){   
            if(accName.contains(Ac.Name)){   
                Ac.Name.addError('Duplicate Name found');   
            }   
        }  
    }   
    }