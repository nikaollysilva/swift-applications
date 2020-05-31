//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(tipeSound: sender.currentTitle!)
        
//        Mudando a opacidade em 50%
        sender.alpha = 0.5
        
//        Atrasando a execucao do codigo em 2 segundos
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            
//        Voltando ao normal
        sender.alpha = 1.0}
        
    }
    
    func playSound(tipeSound: String) {
        let url = Bundle.main.url(forResource: tipeSound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        
        player.play()
    }
}

