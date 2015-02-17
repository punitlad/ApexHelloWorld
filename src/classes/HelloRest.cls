@RestResource(urlMapping='/HelloRest/*')
                
global with sharing class HelloRest {
  
    @HttpGet
    global static String getHelloFromWorld() { 
        return HelloWorld.getHello();
    }
}