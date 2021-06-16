public class AnimalLocator {
    public static String getAnimalNameById(Integer id) {

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        String jsonString;
        String animalName;
        
        if(response.getStatusCode() == 200){
            jsonString = response.getBody();
            Map<String, Object> r = (Map<String, Object>) JSON.deserializeUntyped(jsonString);  
            Map<String, Object> animal = (Map<String,Object>) r.get('animal');
            animalName = string.valueOf(animal.get('name'));
            System.debug(jsonString);
            
        }
            
        return animalName;
   }
   
}