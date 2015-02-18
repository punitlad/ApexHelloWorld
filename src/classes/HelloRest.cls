@RestResource(urlMapping='/HelloRest/*')      
global with sharing class HelloRest {
    
    @HttpGet
    global static String getWorlds() {
    	String hello = HelloWorld.getHello();
    	return hello;
    }
    
    @HttpPost
    global static String createNewWorld(String name) {
        World__c world = new World__c();
        world.Name = name;
        insert world;
        return world.Id;
    }    
}