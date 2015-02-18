@RestResource(urlMapping='/Shoes/*')
global with sharing class ShoesDBController {
	
	@HttpGet
	global static List<Shoes__c> getShoes() {
		List<Shoes__c> shoes = [SELECT Name from Shoes__c];
		return shoes;
	}
	
	@HttpPost
	global static String addShoes(String name) {
		Shoes__c shoes = new Shoes__c();
		shoes.Name = name;
		insert shoes;
		return shoes.Id;
	}
	
	@HttpDelete
	global static String deleteShoes() {
	    String Id = RestContext.request.params.get('Id');
		List<Shoes__c> shoes = [ Select ID from Shoes__c where Id= :Id];

		delete shoes;
		return('removed shoes');
	}
	
}