public without sharing class ModeUserSystemControl{

    public List<Read__c> reads  {get;set;} 
    public List<update__c> updates  {get;set;} 
    public List<Noright__c> norights  {get;set;} 
    public List<update__c> fakenorights  {get;set;} 
    
    public static void createData()
    {
        Integer randomNumber = Integer.valueof((Math.random() * 100));
        
        List<SObject> toInsert = new  List<SObject>();
        toInsert.add( new update__c( Name = 'update__c1' , Read__c= 'update__c1' ,Edit__c='update__c1' )); 
        toInsert.add(new Read__c (Name='Read__c1', Read__c='Read__c1',Edit__c='Read__c1',Noright__c='Read__c1') );
        toInsert.add(new Noright__c (Name='Noright__c1'));
        
        insert toInsert;
    }
    
    public ModeUserSystemControl() {
        Reads= new List<SObject>();
        updates= new List<SObject>();
        norights= new List<SObject>();
        fakenorights= new List<SObject>();
    }

    public void readData()
    {
        Map<string,List<Sobject>> datas=ModeUserSystem.readTest();
        
        norights= datas.get('Noright__c');
        fakenorights= new List<SObject>();
        for(noright__c n : norights)
        {
            fakenorights.add(new update__c( Name = n.Name ));
        }
        System.debug(norights);
        Reads=  datas.get('Read__c');
        updates=  datas.get('Update__c');
    }

}