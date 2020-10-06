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
    @IBOutlet weak var Choice1: UIButton!
    @IBOutlet weak var Choice2: UIButton!
    @IBOutlet weak var Choice3: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! //True False
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
        Choice1.backgroundColor = UIColor.clear
        Choice2.backgroundColor = UIColor.clear
        Choice3.backgroundColor = UIColor.clear
        questionLabel.text = quizBrain.getQuestionText()
        Choice1.setTitle(quizBrain.getChoice1Text(), for: [])
        Choice2.setTitle(quizBrain.getChoice2Text(), for: [])
        Choice3.setTitle(quizBrain.getChoice3Text(), for: [])
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score \(quizBrain.getScore())"
    }
    

}

