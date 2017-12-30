//
//  cafe.swift
//  CoffeeShop
//
//  Created by Alex Hsieh on 2017/12/14.
//  Copyright © 2017年 Alex Hsieh. All rights reserved.
//

import Foundation

struct cafe {
    var cafeName: String
    var cafeAddress: String
    var cafeWifi: Float
    var cafeSeat: Float
    var cafeQuiet: Float
    var cafeTasty: Float
    var cafeCheap: Float
    var cafeMusic: Float
    var cafeURL: URL?
    var cafeLatitude: String
    var cafeLongitude:String
    var cafeOpenTime: String?
    var cafeMRT:String?
    
    init?(json: [String:Any]){
        guard let cofeName = json["name"] as? String,
            let cafeAddress = json["address"] as? String,
            let cafeWifi = json["wifi"] as? Float,
            let cafeSeat = json["seat"] as? Float,
            let cafeQuiet = json["quiet"] as? Float,
            let cafeTasty = json["tasty"] as? Float,
            let cafeCheap = json["cheap"] as? Float,
            let cafeMusic = json["music"] as? Float,
            let urlstr = json["url"] as? String,
            let cafeURL = URL(string: urlstr),
            let cafeLatitude = json["latitude"] as? String,
            let cafeLongitude = json["longitude"] as? String,
            let cafeOpenTime = json["open_time"] as? String,
            let cafeMRT = json["mrt"] as? String
            else{
               // print("Error")
                return nil
        }
        self.cafeName = cofeName
        self.cafeAddress = cafeAddress
        self.cafeWifi = cafeWifi
        self.cafeSeat = cafeSeat
        self.cafeQuiet = cafeQuiet
        self.cafeTasty = cafeTasty
        self.cafeCheap = cafeCheap
        self.cafeMusic = cafeMusic
        self.cafeURL = cafeURL
        self.cafeLatitude = cafeLatitude
        self.cafeLongitude = cafeLongitude
        self.cafeOpenTime = cafeOpenTime
        self.cafeMRT = cafeMRT
        
    }
}
