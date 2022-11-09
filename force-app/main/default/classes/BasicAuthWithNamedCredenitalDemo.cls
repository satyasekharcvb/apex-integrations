public with sharing class BasicAuthWithNamedCredenitalDemo {
    public static HttpResponse makeGetCallout() {
        Http http = new Http();

        //Create HTTP request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:Basic_Apex_Callout/api/birds');
        request.setMethod('GET');
        System.debug(request);
        
        //Send the request and get the HTTP response
        HttpResponse response = http.send(request);
        System.debug(response);
        
        // Process the success response
        if(response.getStatusCode() == 200) {
            System.debug(response.getBody());            
        }
        return response;
    }
}
