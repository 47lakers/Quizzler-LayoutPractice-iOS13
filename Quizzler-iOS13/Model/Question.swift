//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Ira Xavier Porchia on 9/14/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: Array<String>
    let correct: String
    
    
    init(q: String, a: Array<String>, correctAnswer: String){
        text = q
        answer = a
        correct = correctAnswer
    }
}
