//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        updateUI()
    }
    
    @IBAction func aswerButtonPressed(_ sender: UIButton) {
//Adicionei um novo botao e conectei todos ao "sender"
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight{
                 sender.backgroundColor = UIColor.green
             }else{
                 sender.backgroundColor = UIColor.red
             }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        
//        Criei a answerChoices, que pega a respostas disponiveis
        let answerChoices = quizBrain.getAnswers()
//        Mudei os textos de acordos com o index da answerChoices
        self.aButton.setTitle(answerChoices[0], for: .normal)
        self.bButton.setTitle(answerChoices[1], for: .normal)
        self.cButton.setTitle(answerChoices[2], for: .normal)
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score \(quizBrain.getScore())"
        self.aButton.backgroundColor = UIColor.clear
        self.bButton.backgroundColor = UIColor.clear
        self.cButton.backgroundColor = UIColor.clear
    }
}

