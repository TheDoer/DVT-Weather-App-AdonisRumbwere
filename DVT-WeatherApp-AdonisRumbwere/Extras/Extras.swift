//
//  Extras.swift
//  DVT-WeatherApp-AdonisRumbwere
//
//  Created by adonis rumbwere on 10/12/2019.
//  Copyright © 2019 Adonis Rumbwere. All rights reserved.
//

import Foundation

let API_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=851f7683ca3f4d7773872ae4febc6bdb"
let FORECAST_API_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=8&appid=851f7683ca3f4d7773872ae4febc6bdb"

typealias DownloadComplete = () -> ()
 
