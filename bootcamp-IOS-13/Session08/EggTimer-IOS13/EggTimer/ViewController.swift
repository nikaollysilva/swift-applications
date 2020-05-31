//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var titlleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var player: AVAudioPlayer! = nil
    
    //        Estamos fazendo um dicionario
    let eggTimes = ["Soft":300, "Medium":420, "Hard":720]
    
    var timer = Timer()
    var totalTime : Int = 0
    var secondsPassed : Int = 0
    
    @IBAction func ImageViewChange(_ sender: UIButton) {
        timer.invalidate()

        let hardness = sender.currentTitle!
        
         totalTime = 0
         secondsPassed = 0
         titlleLabel.text = hardness
            
        totalTime = eggTimes[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
        if secondsPassed <= totalTime{
            
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            print(Float(secondsPassed) / Float(totalTime))
            
            secondsPassed+=1
        }else{
            timer.invalidate()
            titlleLabel.text = "Done!"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
                 
            player.play()
        }
    }
}
