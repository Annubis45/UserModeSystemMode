public with sharing class  ControllerExtensionWithoutSharing {

    public List<Read__c> reads  {get;set;} 
    public List<update__c> updates  {get;set;} 
    public List<Noright__c> norights  {get;set;} 
    public List<update__c> fakenorights  {get;set;} 
    
    public ControllerExtensionWithoutSharing() {
        Reads= new List<SObject>();
        updates= new List<SObject>();
        norights= new List<SObject>();
        fakenorights= new List<SObject>();
        
    }
    
    
    public void readtest() {
        
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
    public void updateTest() {
        

        ModeUserSystem.updateTest();
        
    }
    public void deleteTest() {
        

        ModeUserSystem.deleteTest();
        
    }
    
    public void createTest() {
        

        ModeUserSystem.createTest();
        
    }
    
    read__c read;

    public ControllerExtensionWithoutSharing(ApexPages.StandardController stdController) {
        this.read = (read__c)stdController.getRecord();
    }
}