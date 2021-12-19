Riders' Management APIs
=======================

This project contains endpoints you can use to integrate Rider's Management APIs in your application

Setup
=====
1. Ensure `node (>8.6 and <= 10)` and `npm` are installed
2. Run `npm install`
3. Run `npm test`
4. Run `npm start`

Health Check
============
Hit the server to test health `curl localhost:8010/health` and expect a `200` response

Create Trip
===========
`curl --location --request POST 'localhost:8010/rides' \
--header 'Content-Type: application/json' \
--data-raw '{ 
    "start_lat" : "-42.9",
    "start_long" : "147.43333",
    "end_lat" : "-37.814",
    "end_long" : "144.96332",
    "rider_name" : "John Smith",
    "driver_name" : "Andrew Cole",
    "driver_vehicle" : "ERS8579"
}
'`

List Trips
==========
`curl --location --request GET 'localhost:8010/rides'`

List Single Trip
================
`curl --location --request GET 'localhost:8010/rides/2'`

Swagger Specifications
======================
https://app.swaggerhub.com/apis/mengteck6/Rider/0.1
