// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

/*
    Uncomment below line to test BasicCalloutDemo
    Make sure you set https://demo-basic-app.herokuapp.com in Remote Site Settings
**/
//HttpResponse response = BasicCalloutDemo.makeGetCallout();

/*
    Uncomment below line to test BasicAuthDemo
    Make sure you set https://demo-basic-app.herokuapp.com in Remote Site Settings
**/
//HttpResponse response = BasicAuthDemo.makeGetCallout();

/*
    Uncomment below line to test BasicAuthWithNamedCredenitalDemo
    Create External Credential with Custom Header and Named Credential
**/
HttpResponse response = BasicAuthWithNamedCredenitalDemo.makeGetCallout();
