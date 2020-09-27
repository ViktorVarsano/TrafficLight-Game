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
    @IBOutlet weak var myFirstView: UIView!
    @IBOutlet weak var mySecondView: UIView!
    @IBOutlet weak var myThirdView: UIView!
    @IBOutlet weak var startButtonTapped: UIButton!
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
      updateCounter()
        }
    
    var timer = Timer()
    var scoreTimer = Timer()
    
    var timerInt = 0
    var scoreInt = 0
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
            myFirstView.layer.cornerRadius = myFirstView.frame.size.height/2
            myFirstView.layer.masksToBounds = true
            
            mySecondView.layer.cornerRadius = mySecondView.frame.size.height/2
            mySecondView.layer.masksToBounds = true
            
            myThirdView.layer.cornerRadius = myThirdView.frame.size.height/2
            myThirdView.layer.masksToBounds = true
            
            view.setGradientBackground(colorOne: Colors.veryDarkGrey, colorTwo: Colors.green )
            
            myFirstView.setGradientBackground(colorOne: Colors.red, colorTwo: Colors.red)
            mySecondView.setGradientBackground(colorOne: Colors.orange, colorTwo: Colors.orange)
            myThirdView.setGradientBackground(colorOne: Colors.green, colorTwo: Colors.green)
            
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
            trafficLight.image = UIImage(named: "TrafficLight3")
            
        } else if timerInt == 8 {
            trafficLight.image = UIImage(named: "TrafficLight")
            
        } else if timerInt == 7 {
            trafficLight.image = UIImage(named: "TrafficLight2")
        
        } else if timerInt == 6 {
            trafficLight.image = UIImage(named: "TrafficLight")

        } else if timerInt == 5 {
             trafficLight.image = UIImage(named: "TrafficLight1")
            
        } else if timerInt == 1 {
            trafficLight.image = UIImage(named: "TrafficLight")
         
        }
        
  }
     // refactoring is preferred I am going to refactor this if needed
    
}


