//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let story = [
        Story(
            title: "Seu carro furou um pneu em uma estrada sinuosa no meio do nada, sem recepção de telefone celular. Você decide pegar carona. Uma caminhonete enferrujada pára ao seu lado. Um homem com um chapéu de abas largas e olhos sem alma abre a porta do passageiro e pergunta: 'Precisa de uma carona, garoto?'.",
            choice1: "Vou entrar. Obrigado pela ajuda!", choiceDestination1: 2,
            choice2: "Melhor perguntar se ele é um assassino primeiro.", choiceDestination2: 1
        ),
        Story(
            title: "Ele assente lentamente, imperturbável com a pergunta.",
            choice1: "Pelo menos ele é honesto. Eu vou subir.", choiceDestination1: 2,
            choice2: "Espere, eu sei como trocar um pneu.", choiceDestination2: 3
        ),
        Story(
            title: "Quando você começa a dirigir, o estranho começa a falar sobre o relacionamento dele com a mãe. Ele fica cada vez mais irritado a cada minuto. Ele pede para você abrir o porta-luvas. Dentro, você encontra uma faca ensanguentada, dois dedos decepados e uma fita cassete de Elton John. Ele pega o porta-luvas.",
            choice1: "Eu amo Elton John! Entregue-lhe a fita cassete.", choiceDestination1: 5,
            choice2: "Sou ele ou eu! Você pega a faca e o esfaqueia.", choiceDestination2: 4
        ),
        Story(
            title: "O que? Que otima habilidade para se ter! Você sabia que os acidentes de trânsito são a segunda principal causa de morte acidental na maioria dos grupos etários adultos? ",
            choice1: "Fim da", choiceDestination1: 0,
            choice2: "História", choiceDestination2: 0
        ),
        Story(
            title: "Ao atravessar o corrimão e seguir em direção às rochas irregulares abaixo, você reflete sobre a duvidosa sabedoria de esfaquear alguém enquanto ele dirige um carro em que você está.",
            choice1: "Fim da", choiceDestination1: 0,
            choice2: "História", choiceDestination2: 0
        ),
        Story(
            title: "Você se une ao assassino enquanto canta versos de 'Você pode sentir o amor hoje à noite`'? Ele deixa você na próxima cidade. Antes de você ir, ele pergunta se você conhece bons lugares para despejar corpos. Você responde: 'Experimente o píer.'",
            choice1: "Fim da", choiceDestination1: 0,
            choice2: "Historia", choiceDestination2: 0
        )]

    var questionNumber = 0
    
    func getTitle() -> String{
        story[questionNumber].title
    }
    
    func getChoice1() -> String{
        story[questionNumber].choice1
    }
    
    func getChoice2() -> String{
        story[questionNumber].choice2
    }
    
    mutating func nextStory(_ userChoice: String)  {
        if userChoice == getChoice1(){
            questionNumber = story[questionNumber].choice1Destination
        }else {
            questionNumber = story[questionNumber].choice2Destination
        }
    }
}


