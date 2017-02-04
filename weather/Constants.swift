//
//  Constants.swift
//  weather
//
//  Created by ryan on 2/4/17.
//  Copyright © 2017 ryan. All rights reserved.
//

import Foundation

let URL_CURRENT_MANLIUS = "http://api.openweathermap.org/data/2.5/weather?zip=13104,us&units=imperial&appid=d6428912e36ef78904e9309f75f392c2"
let URL_FORCAST_MANLIUS = "http://api.openweathermap.org/data/2.5/forecast/city?id=524901&APPID=d6428912e36ef78904e9309f75f392c2"

let URL_BASE = "http://api.openweathermap.org/data/2.5/"
let URL_CURRENT = "weather?zip="
let URL_FORCAST = "forecast/city?id="
let URL_UNITS = "&units=imperial"
let WEATHER_APPID = "&appid=d6428912e36ef78904e9309f75f392c2"

typealias DownloadComplete = () -> ()
