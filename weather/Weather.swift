//
//  Weather.swift
//  weather
//
//  Created by ryan on 2/4/17.
//  Copyright © 2017 ryan. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class Weather {
    
    private var _locationID: String!
    private var _desc: String!
    private var _mainDesc: String!
    private var _city: String!
    private var _state: String!
    private var _mainImg: UIImageView!
    private var _currentTemp: String!
    private var _currentTime: String!
    private var _currentDay: String!
    private var _highTemp: String!
    private var _lowTemp: String!
    private var _currentWindSpeed: String!
    private var _cloudPercentage: String!
    private var _weatherUrl: String!
    
    var locationID: String {
        if _locationID == nil {
            _locationID = ""
        }
        return _locationID
    }
    
    var desc: String {
        if _desc == nil {
            _desc = ""
        }
        return _desc
    }
    
    var mainDesc: String {
        if _mainDesc == nil {
            _mainDesc = ""
        }
        return _mainDesc
    }
    
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
    
    var cloudPercentage: String {
        if _cloudPercentage == nil {
            _cloudPercentage = ""
        }
        return _cloudPercentage
    }
    
    init() {
        //_locationID = locationID
        
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
    
        let url = URL(string: _weatherUrl)!
        print(_weatherUrl)
    
        Alamofire.request(url).responseJSON { response in
            let result = response.result
            
            print(result.value.debugDescription)
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let id = dict["id"] as? Int {
                    self._locationID = "\(id)"
                }
                
                if let weatherArr = dict["weather"] as? [Dictionary<String, AnyObject>], weatherArr.count > 0 {
                    
                    if let desc = weatherArr[0]["description"] as? String {
                        self._desc = desc.capitalized
                    }
                    
                    if let mainDesc = weatherArr[0]["main"] as? String {
                        self._mainDesc = mainDesc
                    }
                    
                }
                
                if let city = dict["name"] as? String {
                    self._city = city
                }
                
                
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    
                    if let temp = main["temp"] as? Double {
                        self._currentTemp = "\(Int(temp))°"
                    }
                    
                    if let temp_max = main["temp_max"] as? Double {
                        self._highTemp = "\(Int(temp_max))°"
                    }
                    
                    if let temp_min = main["temp_min"] as? Double {
                        self._lowTemp = "\(Int(temp_min))°"
                    }
                    
                }
                
                if let wind = dict["wind"] as? Dictionary<String, AnyObject> {
                    
                    if let windSpeed = wind["speed"] as? Double {
                        self._currentWindSpeed = "\(Int(windSpeed)) MPH"
                    }
                    
                }
                
                if let clouds = dict["clouds"] as? Dictionary<String, AnyObject> {
                    
                    if let cloudPercentage = clouds["all"] as? Int {
                        self._cloudPercentage = "\(cloudPercentage)%"
                    }
                    
                }

            }
            
            print(self._locationID)
            
            completed()
        }
    
    }
    
    
    
    
}
