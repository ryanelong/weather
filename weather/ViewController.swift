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
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var mainWeatherImg: UIImageView!
    @IBOutlet weak var currentTempLbl: UILabel!
    @IBOutlet weak var currentTimeLbl: UILabel!
    @IBOutlet weak var currentDayLbl: UILabel!
    @IBOutlet weak var highTempLbl: UILabel!
    @IBOutlet weak var lowTempLbl: UILabel!
    @IBOutlet weak var currentWindSpeedLbl: UILabel!
    @IBOutlet weak var cloudPercentageLbl: UILabel!
    
    var weather: Weather!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weather = Weather()
        
        weather.downloadWeatherDetails { () -> () in
            // this will be called when the downloading is done
            self.updateUI()
        }
        
    }

    func updateUI() {
        
        cityLbl.text = weather.city
        descLbl.text = weather.desc
        currentTempLbl.text = weather.currentTemp
        currentTimeLbl.text = weather.currentTime
        currentDayLbl.text = weather.currentDay
        highTempLbl.text = weather.highTemp
        lowTempLbl.text = weather.lowTemp
        currentWindSpeedLbl.text = weather.currentWindSpeed
        cloudPercentageLbl.text = weather.cloudPercentage
        
//        if weather.mainDesc == "Clouds" {
//            mainWeatherImg.image = UIImage(named: "cloud")
//        } else if weather.mainDesc == "Snow" {
//            mainWeatherImg.image = UIImage(named: "snowflake")
//        }
        
        switch weather.mainDesc {
        case "Clouds":
            mainWeatherImg.image = UIImage(named: "cloud")
        case "Snow":
            mainWeatherImg.image = UIImage(named: "snowflake")
        case "Rain":
            mainWeatherImg.image = UIImage(named: "rain")
        default:
            mainWeatherImg.image = UIImage(named: "sun")
        }
        
//        descLbl.text = pokemon.description
//        typeLbl.text = pokemon.type
//        defenseLbl.text = pokemon.defense
//        heightLbl.text = pokemon.height
//        weightLbl.text = pokemon.weight
//        baseAttackLbl.text = pokemon.baseAttack
//        pokedexLbl.text = "\(pokemon.pokedexId)"
//        movesLbl.text = pokemon.movesTxt
//        
//        if pokemon.nextEvolutionId == "" {
//            evoLbl.text = "No Evolutions"
//            nextEvoImg.isHidden = true
//        } else {
//            nextEvoImg.isHidden = false
//            nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
//            var str = "Next Evolution: \(pokemon.nextEvolutionTxt)"
//            
//            if pokemon.nextEvolutionLvl != "" {
//                str += " - LVL \(pokemon.nextEvolutionLvl)"
//            }
//        }
        
        
        
    }

}

