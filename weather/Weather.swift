//
//  Weather.swift
//  weather
//
//  Created by ryan on 2/4/17.
//  Copyright © 2017 ryan. All rights reserved.
//

import Foundation
import UIKit

class Weather {
    
    private var _locationID: String!
    private var _city: String!
    private var _state: String!
    private var _mainImg: UIImageView!
    private var _currentTemp: String!
    private var _currentTime: String!
    private var _currentDay: String!
    private var _highTemp: String!
    private var _lowTemp: String!
    private var _currentWindSpeed: String!
    private var _precentChanceRain: String!
    private var _weatherUrl: String!
    
    var city: String {
        if _city == nil {
            _city = ""
        }
        return _city
    }
    
    var state: String {
        if _state == nil {
            _state = ""
        }
        return _state
    }
    
    var currentTemp: String {
        if _currentTemp == nil {
            _currentTemp = ""
        }
        return _currentTemp
    }
    
    var currentTime: String {
        if _currentTime == nil {
            _currentTime = ""
        }
        return _currentTime
    }
    
    var currentDay: String {
        if _currentDay == nil {
            _currentDay = ""
        }
        return _currentDay
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    var currentWindSpeed: String {
        if _currentWindSpeed == nil {
            _currentWindSpeed = ""
        }
        return _currentWindSpeed
    }
    
    var precentChanceRain: String {
        if _precentChanceRain == nil {
            _precentChanceRain = ""
        }
        return _precentChanceRain
    }
    
    init(locationID: String) {
        _locationID = locationID
        
        let date = Date()
        
//        let calendar = Calendar.current
//        let components = calendar.dateComponents([.year, .month, .day, .weekday, .hour, .minute], from: date)
//        
//        let weekday = components.weekday?.description
        
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm a"
        let curTime = formatter.string(from: date)
        
        let weekday = date.dayOfWeek()
        
        _currentDay = weekday
        _currentTime = curTime
        
        _weatherUrl = "\(URL_CURRENT_MANLIUS)"
        
        print(currentDay)
        print(currentTime)
        
        
//        let year = components.year
//        let month = components.month
//        let day = components.day
        
    }
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
    
        let url = URL(string: _weatherUrl)
        print(_weatherUrl)
    
        
    
    }
    
    
    
    
}
