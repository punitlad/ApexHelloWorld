public class HelloWorld {
	
	public static String getHello() { 
		List<World__c> worlds = [ Select Name from World__c];
		
		String stringWorld = '';
		for (World__c world : worlds) { 
			stringWorld += world.Name + ',';
		}
		
		return('Hello. Welcome to the following worlds - ' + stringWorld);
	}
	
}