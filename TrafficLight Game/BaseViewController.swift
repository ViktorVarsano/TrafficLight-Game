//
//  ViewController.swift
//  TrafficLight Game
//
//  Created by Viktor Varsano on 27.09.20.
//  Copyright © 2020 Viktor Varsano. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var trafficLight: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var startButtonTapped: UIButton!
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        timerInt = 14
        updateCounter()
        }
    
    var timer = Timer()
    var scoreTimer = Timer()
    
    var timerInt = 0
    var scoreInt = 0
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
              view.setGradientBackground(colorOne: Colors.veryDarkGrey, colorTwo: Colors.green )
            
            scoreInt = 0
            myLabel.text = String(scoreInt)
            
            func startButtonTapped() {
                
        if scoreInt == 0 {
                      
           timerInt = 14
                      
           trafficLight.image = UIImage(named: "TrafficLight")
                      
           timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(BaseViewController.updateCounter), userInfo: nil, repeats: true)

               }
                
          }
          startButtonTapped()
    }
    
    @objc func updateCounter() {
        
        timerInt -= 1
        
        if timerInt == 13 {
            trafficLight.image = UIImage(named: "TrafficLightRed")
            
        } else if timerInt == 8 {
            trafficLight.image = UIImage(named: "TrafficLight")
            
        } else if timerInt == 7 {
            trafficLight.image = UIImage(named: "TrafficLightYellow")
            
        } else if timerInt == 6 {
            trafficLight.image = UIImage(named: "TrafficLight")
            
        } else if timerInt == 5 {
            trafficLight.image = UIImage(named: "TrafficLightGreen")
            
        } else if timerInt == 1 {
            trafficLight.image = UIImage(named: "TrafficLight")
            
        }
        
    }
    
}
    



