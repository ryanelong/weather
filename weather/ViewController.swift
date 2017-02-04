//
//  ViewController.swift
//  weather
//
//  Created by ryan on 2/2/17.
//  Copyright © 2017 ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var mainWeatherImg: UIImageView!
    @IBOutlet weak var currentTempLbl: UILabel!
    @IBOutlet weak var currentTimeLbl: UILabel!
    @IBOutlet weak var currentDayLbl: UILabel!
    @IBOutlet weak var highTempLbl: UILabel!
    @IBOutlet weak var lowTempLbl: UILabel!
    @IBOutlet weak var currentWindSpeedLbl: UILabel!
    @IBOutlet weak var percentChanceRainLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var weather = Weather(locationID: "ID")
        
    }


}

