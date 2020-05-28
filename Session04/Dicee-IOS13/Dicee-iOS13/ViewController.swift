//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    Insirindo pontos de contato com a tela IBOutlet
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
       
        let imagesDice = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = imagesDice.randomElement()
        diceImageView2.image = imagesDice[Int.random(in: 0...5)]
    
    }

}

//        MUDANDO CARACTERISTICAS
//        diceImageView1.alpha = 0.5
//         diceImageView1.image = #imageLiteral(resourceName: "DiceFive")
        
//        CONTENACAO
//        print("Text \(2+3) Text")
//        print("O resultado de 5 + 3 = \(5+3)")
