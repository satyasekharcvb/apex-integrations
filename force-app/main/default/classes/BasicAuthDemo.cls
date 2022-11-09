public with sharing class BasicAuthDemo {
    public static HttpResponse makeGetCallout() {
        Http http = new Http();

        //Create HTTP request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://demo-basic-app.herokuapp.com/api/birds');
        request.setMethod('GET');
        System.debug(request);
        
        //Send the request and get the HTTP response
        String username = 'admin';
        String password = 'supersecret';
        Blob headerValue = Blob.valueOf(username + ':' +password);
        String authorizationHeader = 'BASIC ' + EncodingUtil.base64Encode(headerValue);
        request.setHeader('Authorization', authorizationHeader);
        
        HttpResponse response = http.send(request);
        System.debug(response);
        
        // Process the success response
        if(response.getStatusCode() == 200) {
            System.debug(response.getBody());            
        }
        return response;
    }
}

