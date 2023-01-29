//
//  ViewController.swift
//  Qestion
//
//  Created by user on 28.01.23.
//

import UIKit
var quizBrain = QuizBrain()
class ViewController: UIViewController {

    @IBOutlet var choice1: UIButton!
    @IBOutlet var choice2: UIButton!
    @IBOutlet var choice3: UIButton!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var questionNumber: UILabel!
    
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func buttonPress(_ sender: UIButton) {

        let userAnswer = sender.currentTitle!
        if quizBrain.checkAnswer(userAnswer) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionNumber.text = quizBrain.getQuestionNumber()
        choice1.setTitle(quizBrain.getChoice1(), for: .normal)
        choice2.setTitle(quizBrain.getChoice2(), for: .normal)
        choice3.setTitle(quizBrain.getChoice3(), for: .normal)
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.progressBar()
    }
}

