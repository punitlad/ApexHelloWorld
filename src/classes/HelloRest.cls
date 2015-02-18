@RestResource(urlMapping='/HelloRest/*')
                
global with sharing class HelloRest {
    
    @HttpGet
    global static List<World__c> getWorlds() {
    	List<World__c> worlds = [SELECT Name from World__c];
        return worlds;
    }
    
    @HttpPost
    global static String createNewWorld(String name) {
        World__c world = new World__c();
        world.Name = name;
        insert world;
        return world.Id;
    }    
}