//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let title: String
    let choice1: String
    let choice1Destination: Int
    let choice2: String
    let choice2Destination: Int
    
    init(title: String, choice1: String, choiceDestination1: Int, choice2: String, choiceDestination2: Int) {
        self.title = title
        self.choice1 = choice1
        self.choice1Destination = choiceDestination1
        self.choice2 = choice2
        self.choice2Destination = choiceDestination2
    }
}
