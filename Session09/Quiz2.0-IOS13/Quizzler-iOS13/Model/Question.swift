//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Nikolly Santos Da Silva on 27/05/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let text: String
    let options: [String]
    let answer: String
    
//    Adicionei o novo parametros e mudei os nomes para ficar mais legivel
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        options = a
        answer = correctAnswer
    }
}
