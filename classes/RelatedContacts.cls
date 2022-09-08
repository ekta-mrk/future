public with sharing class RelatedContacts {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getAllContacts(string acName){
    if(String.isNotBlank(acName)){
    string str = '%'+acName+'%';
    
    return con;
    }else{
    List<Contact> con = [select id,email,phone,name, Account.Name,
    accountid, firstname,lastname from Contact];
    return con;
    }
    }
    }