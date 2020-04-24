//
//  QuizViewController.swift
//  ScoutRankz
//
//  Created by Wayne Keith on 4/19/20.
//  Copyright © 2020 Wayne Keith. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            Feedback.selection.generate()
            sender.backgroundColor = UIColor.green
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                sender.backgroundColor = UIColor(red: 0.00, green: 0.10, blue: 0.58, alpha: 1.00)
            }
            
        } else {
            Feedback.warning.generate()
            sender.backgroundColor = UIColor.red
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                sender.backgroundColor = UIColor(red: 0.00, green: 0.10, blue: 0.58, alpha: 1.00)
            }
        }
        
        if (quizBrain.nextQuestion()) {
            updateUI()
        } else {
            goToResultsView(score: quizBrain.getScore())
        }
        
    }
    
    @objc func updateUI() {
        questionLbl.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLbl.text = "Score: \(quizBrain.getScore())"
    }
    
    private func goToResultsView(score: Int) {
        let resultVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResultVC") as! ResultViewController
        resultVC.score = score
        self.navigationController?.pushViewController(resultVC, animated: true)
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
