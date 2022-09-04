public inherited sharing class ModeUserSystem{
    
    public static void updateTest()
    {
        Integer randomNumber = Integer.valueof((Math.random() * 100));
        
        
        system.debug('Start '+ randomNumber);    
        
        
        try{
            Update__c u = [Select Id, Name, Read__c,Edit__c from Update__c limit 1];
            u.Read__c='test'+randomNumber;
            u.Edit__c='test'+randomNumber;
            update u;
        }catch( Exception e)
        {
            system.debug('Update__c error : ' + e.getMessage());
        }
        
        
        
        
        try{
            Read__c r = [Select Id, Name from Read__c limit 1];
            r.Name='test' +randomNumber;
            update r;
        }catch( Exception e)
        {
            system.debug('Read__c error : ' + e.getMessage());
        }
        
        try{
            Read__c r2 = [Select Id, Name, Read__c,Edit__c from Read__c limit 1];
            r2.Read__c='test'+randomNumber;
            update r2;
        }catch( Exception e)
        {
            system.debug('Read__c 2 error : ' + e.getMessage());
        }
        
        try{
            Read__c r3 = [Select Id, Name, Read__c,Edit__c from Read__c limit 1];
            r3.Edit__c='test'+randomNumber;
            update r3;
        }catch( Exception e)
        {
            system.debug('Read__c 3 error : ' + e.getMessage());
        }
        
         try{
            Read__c r4 = [Select Id, Name, Read__c,Edit__c,Noright__c from Read__c limit 1];
            r4.Noright__c='test'+randomNumber;
            update r4;
        }catch( Exception e)
        {
            system.debug('Read__c 4 error : ' + e.getMessage());
        }
        
        try{
            Noright__c n = [Select Id, Name from Noright__c limit 1];
            n.Name='test' +randomNumber;
            update n;
        }catch( Exception e)
        {
            system.debug('Noright__c error : ' + e.getMessage());
        }
        
    }
    
    public static void createTest()
    {
        Integer randomNumber = Integer.valueof((Math.random() * 100));
        
        
        system.debug('Start '+ randomNumber);    
        
        
        try{
            Update__c u = new update__c( Name = 'test'+randomNumber , Read__c= 'test'+randomNumber,Edit__c='test'+randomNumber); 
            
            insert u;
        }catch( Exception e)
        {
            system.debug('Update__c error : ' + e.getMessage());
        }
        
         try{
            Read__c r4 = new Read__c (Name='test'+randomNumber, Read__c='test'+randomNumber,Edit__c='test'+randomNumber,Noright__c='test'+randomNumber) ;
            insert r4;
        }catch( Exception e)
        {
            system.debug('Read__c 4 error : ' + e.getMessage());
        }
        
        try{
            Noright__c n = new Noright__c();
            n.Name='test' +randomNumber;
            insert n;
        }catch( Exception e)
        {
            system.debug('Noright__c error : ' + e.getMessage());
        }
        
    }
    
    public static Map<string,List<Sobject>> readTest()
    {
        Map<string,List<Sobject>> returnMap = new Map<string,List<Sobject>>();

        system.debug('Start readTest');    
        List<Sobject> returnList= new List<Sobject> ();
        returnList.addAll([Select Id, Name from Noright__c]);
        for( SObject o : returnList)
        {
            system.debug(o);
        }
        returnMap.put('Noright__c', returnList);

        returnList= new List<Sobject> ();
        returnList.addAll([Select Id, Name, Read__c,Edit__c,Noright__c from Read__c]);
        for( SObject o : returnList)
        {
            system.debug(o);
        }
        returnMap.put('Read__c', returnList);

        returnList= new List<Sobject> ();
        returnList.addAll([Select Id, Name,Read__c,Edit__c from Update__c]);
        for( SObject o : returnList)
        {
            system.debug(o);
        }
        returnMap.put('Update__c', returnList);

        return returnMap;
    }
    
    public static void deleteTest()
    {
        try{
        Noright__c n = [Select Id, Name from Noright__c limit 1];
        delete n;	
        }catch( Exception e)
        {
            system.debug('deleteTest Noright__c error : ' + e.getMessage());
        }
        
            try{
        Update__c u = [Select Id, Name, Read__c,Edit__c from Update__c limit 1];
        delete u;
                }catch( Exception e)
        {
            system.debug(' deleteTest Update__c error : ' + e.getMessage());
        }
        
         try{
        	read__c r = [Select Id, Name, Read__c,Edit__c from read__c limit 1];
        		delete r;
                }catch( Exception e)
        {
            system.debug(' deleteTest read__c error : ' + e.getMessage());
        }
    }
}