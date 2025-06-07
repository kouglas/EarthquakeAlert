//
//  TestData.swift
//  EarthquakeAlertTests
//
//  Created by Kari Douglas on 5/31/25.
//

import Foundation


let testFeature_nc73649170: Data = """
    
        {
          "mag": 0.34,
          "place": "5km NW of The Geysers, CA",
          "time": 1636129710550,
          "updated": 1636129809904,
          "tz": null,
          "url": "https://earthquake.usgs.gov/earthquakes/eventpage/nc73649170",
          "detail": "https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/nc73649170.geojson",
          "felt": null,
          "cdi": null,
          "mmi": null,
          "alert": null,
          "status": "automatic",
          "tsunami": 0,
          "sig": 2,
          "net": "nc",
          "code": "73649170",
          "ids": ",nc73649170,",
          "sources": ",nc,",
          "types": ",nearby-cities,origin,phase-data,",
          "nst": 11,
          "dmin": 0.001816,
          "rms": 0.03,
          "gap": 62,
          "magType": "md",
          "type": "earthquake",
          "title": "M 0.3 - 5km NW of The Geysers, CA"
        }
    

    """.data(using: .utf8)!

let testQuakesData: Data = """

{"type":"FeatureCollection","metadata":{"generated":1633380472000,"url":"https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.geojson","title":"USGS All Earthquakes, Past Month","status":200,"api":"1.10.3","count":11566},"features":[{"type":"Feature","properties":{"mag":2.4,"place":"83 km ESE of Denali Park, Alaska","time":1633379906738,"updated":1633380268967,"tz":null,"url":"https://earthquake.usgs.gov/earthquakes/eventpage/ak021cqg006b","detail":"https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/ak021cqg006b.geojson","felt":null,"cdi":null,"mmi":null,"alert":null,"status":"automatic","tsunami":0,"sig":89,"net":"ak","code":"021cqg006b","ids":",ak021cqg006b,","sources":",ak,","types":",origin,","nst":null,"dmin":null,"rms":0.68,"gap":null,"magType":"ml","type":"earthquake","title":"M 2.4 - 83 km ESE of Denali Park, Alaska"},"geometry":{"type":"Point","coordinates":[-147.2693,63.5771,0]},"id":"ak021cqg006b"},
{"type":"Feature","properties":{"mag":1.1,"place":"1 km WNW of Funny River, Alaska","time":1633379373332,"updated":1633380263550,"tz":null,"url":"https://earthquake.usgs.gov/earthquakes/eventpage/ak021cqfy385","detail":"https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/ak021cqfy385.geojson","felt":1,"cdi":0,"mmi":null,"alert":null,"status":"automatic","tsunami":0,"sig":19,"net":"ak","code":"021cqfy385","ids":",ak021cqfy385,","sources":",ak,","types":",dyfi,origin,","nst":null,"dmin":null,"rms":0.64,"gap":null,"magType":"ml","type":"earthquake","title":"M 1.1 - 1 km WNW of Funny River, Alaska"},"geometry":{"type":"Point","coordinates":[-150.7806,60.5055,53]},"id":"ak021cqfy385"},
{"type":"Feature","properties":{"mag":1.18,"place":"4km SE of Home Gardens, CA","time":1633379206960,"updated":1633379788888,"tz":null,"url":"https://earthquake.usgs.gov/earthquakes/eventpage/ci40062776","detail":"https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/ci40062776.geojson","felt":null,"cdi":null,"mmi":null,"alert":null,"status":"reviewed","tsunami":0,"sig":21,"net":"ci","code":"40062776","ids":",ci40062776,","sources":",ci,","types":",nearby-cities,origin,phase-data,scitech-link,","nst":33,"dmin":0.04926,"rms":0.2,"gap":76,"magType":"ml","type":"quarry blast","title":"M 1.2 Quarry Blast - 4km SE of Home Gardens, CA"},"geometry":{"type":"Point","coordinates":[-117.4895,33.85,-0.53]},"id":"ci40062776"},
{"type":"Feature","properties":{"mag":0.77,"place":"2km N of Loma Linda, CA","time":1633378711090,"updated":1633380164896,"tz":null,"url":"https://earthquake.usgs.gov/earthquakes/eventpage/ci40062768","detail":"https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/ci40062768.geojson","felt":null,"cdi":null,"mmi":null,"alert":null,"status":"reviewed","tsunami":0,"sig":9,"net":"ci","code":"40062768","ids":",ci40062768,","sources":",ci,","types":",nearby-cities,origin,phase-data,scitech-link,","nst":28,"dmin":0.05283,"rms":0.16,"gap":92,"magType":"ml","type":"earthquake","title":"M 0.8 - 2km N of Loma Linda, CA"},"geometry":{"type":"Point","coordinates":[-117.262,34.066,14.33]},"id":"ci40062768"},
{"type":"Feature","properties":{"mag":0.85,"place":"6km ENE of Ridgecrest, CA","time":1633378130030,"updated":1633379526425,"tz":null,"url":"https://earthquake.usgs.gov/earthquakes/eventpage/ci40062760","detail":"https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/ci40062760.geojson","felt":null,"cdi":null,"mmi":null,"alert":null,"status":"reviewed","tsunami":0,"sig":11,"net":"ci","code":"40062760","ids":",ci40062760,","sources":",ci,","types":",nearby-cities,origin,phase-data,scitech-link,","nst":21,"dmin":0.04532,"rms":0.14,"gap":84,"magType":"ml","type":"earthquake","title":"M 0.9 - 6km ENE of Ridgecrest, CA"},"geometry":{"type":"Point","coordinates":[-117.6091667,35.6345,11.99]},"id":"ci40062760"},
{"type":"Feature","properties":{"mag":0.84,"place":"3km SSE of Lake Henshaw, CA","time":1633377864650,"updated":1633379111761,"tz":null,"url":"https://earthquake.usgs.gov/earthquakes/eventpage/ci40062752","detail":"https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/ci40062752.geojson","felt":null,"cdi":null,"mmi":null,"alert":null,"status":"reviewed","tsunami":0,"sig":11,"net":"ci","code":"40062752","ids":",ci40062752,","sources":",ci,","types":",nearby-cities,origin,phase-data,scitech-link,","nst":39,"dmin":0.02111,"rms":0.16,"gap":32,"magType":"ml","type":"earthquake","title":"M 0.8 - 3km SSE of Lake Henshaw, CA"},"geometry":{"type":"Point","coordinates":[-116.7516667,33.2156667,9.63]},"id":"ci40062752"},
{"type":"Feature","properties":{"mag":1.18,"place":"7km WNW of Cobb, CA","time":1633377402040,"updated":1633378151544,"tz":null,"url":"https://earthquake.usgs.gov/earthquakes/eventpage/nc73633336","detail":"https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/nc73633336.geojson","felt":1,"cdi":0,"mmi":null,"alert":null,"status":"automatic","tsunami":0,"sig":21,"net":"nc","code":"73633336","ids":",nc73633336,","sources":",nc,","types":",dyfi,nearby-cities,origin,phase-data,scitech-link,","nst":21,"dmin":0.01127,"rms":0.03,"gap":48,"magType":"md","type":"earthquake","title":"M 1.2 - 7km WNW of Cobb, CA"},"geometry":{"type":"Point","coordinates":[-122.8033371,38.8446655,0.54]},"id":"nc73633336"},
{"type":"Feature","properties":{"mag":1.04,"place":"3km NNE of Rancho San Diego, CA","time":1633377241640,"updated":1633377701702,"tz":null,"url":"https://earthquake.usgs.gov/earthquakes/eventpage/ci40062744","detail":"https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/ci40062744.geojson","felt":null,"cdi":null,"mmi":null,"alert":null,"status":"reviewed","tsunami":0,"sig":17,"net":"ci","code":"40062744","ids":",ci40062744,","sources":",ci,","types":",nearby-cities,origin,phase-data,scitech-link,","nst":7,"dmin":0.04375,"rms":0.19,"gap":141,"magType":"ml","type":"quarry blast","title":"M 1.0 Quarry Blast - 3km NNE of Rancho San Diego, CA"},"geometry":{"type":"Point","coordinates":[-116.918,32.7743333,-0.43]},"id":"ci40062744"},
{"type":"Feature","properties":{"mag":1.81,"place":"33km NW of Bridgeport, CA","time":1633376242940,"updated":1633380435744,"tz":null,"url":"https://earthquake.usgs.gov/earthquakes/eventpage/nc73633331","detail":"https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/nc73633331.geojson","felt":null,"cdi":null,"mmi":null,"alert":null,"status":"reviewed","tsunami":0,"sig":50,"net":"nc","code":"73633331","ids":",nc73633331,nn00824652,","sources":",nc,nn,","types":",nearby-cities,origin,phase-data,scitech-link,","nst":17,"dmin":0.01024,"rms":0.07,"gap":79,"magType":"md","type":"earthquake","title":"M 1.8 - 33km NW of Bridgeport, CA"},"geometry":{"type":"Point","coordinates":[-119.4466667,38.4965,2.59]},"id":"nc73633331"},
{"type":"Feature","properties":{"mag":4.8,"place":"138 km S of Hihifo, Tonga","time":1633376198817,"updated":1633377350040,"tz":null,"url":"https://earthquake.usgs.gov/earthquakes/eventpage/us6000frmx","detail":"https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/us6000frmx.geojson","felt":null,"cdi":null,"mmi":null,"alert":null,"status":"reviewed","tsunami":0,"sig":354,"net":"us","code":"6000frmx","ids":",us6000frmx,","sources":",us,","types":",origin,phase-data,","nst":null,"dmin":3.812,"rms":1.03,"gap":157,"magType":"mb","type":"earthquake","title":"M 4.8 - 138 km S of Hihifo, Tonga"},"geometry":{"type":"Point","coordinates":[-173.7991,-17.2081,180.99]},"id":"us6000frmx"},
{"type":"Feature","properties":{"mag":0.67,"place":"9km ENE of Coso Junction, CA","time":1633375689920,"updated":1633379532863,"tz":null,"url":"https://earthquake.usgs.gov/earthquakes/eventpage/ci40062736","detail":"https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/ci40062736.geojson","felt":null,"cdi":null,"mmi":null,"alert":null,"status":"reviewed","tsunami":0,"sig":7,"net":"ci","code":"40062736","ids":",ci40062736,","sources":",ci,","types":",nearby-cities,origin,phase-data,scitech-link,","nst":12,"dmin":0.03255,"rms":0.05,"gap":75,"magType":"ml","type":"earthquake","title":"M 0.7 - 9km ENE of Coso Junction, CA"},"geometry":{"type":"Point","coordinates":[-117.8568333,36.085,4.11]},"id":"ci40062736"},
{"type":"Feature","properties":{"mag":0.84,"place":"4km NNW of The Geysers, CA","time":1630788521900,"updated":1630788618769,"tz":null,"url":"https://earthquake.usgs.gov/earthquakes/eventpage/nc73620171","detail":"https://earthquake.usgs.gov/earthquakes/feed/v1.0/detail/nc73620171.geojson","felt":null,"cdi":null,"mmi":null,"alert":null,"status":"automatic","tsunami":0,"sig":11,"net":"nc","code":"73620171","ids":",nc73620171,","sources":",nc,","types":",nearby-cities,origin,phase-data,","nst":8,"dmin":0.007673,"rms":0.01,"gap":128,"magType":"md","type":"earthquake","title":"M 0.8 - 4km NNW of The Geysers, CA"},"geometry":{"type":"Point","coordinates":[-122.7720032,38.8096657,1.16]},"id":"nc73620171"}],"bbox":[-179.9797,-62.3889,-3.46,179.9958,86.0617,638.39]}

""".data(using: .utf8)!
