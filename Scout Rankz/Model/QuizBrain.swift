//
//  QuizBrain.swift
//  ScoutRankz
//
//  Created by Wayne Keith on 4/13/20.
//  Copyright © 2020 Wayne Keith. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "The Cub Scout motto is: \n\"Do Your Best!\"", a: "True"),
        Question(q: "A Scout is: \nTrustworthy, \nLoyal, \nHelpful, \nFriendly, \nCourteous, \nKind, \nObedient, \nCheerful, \nThrifty, \nBrave, \nClean, \n& Reverent.", a: "True"),
        Question(q: "The Scout Oath says: \n\n\"On my honor, I will do my best to do my duty to God & my country, & to obey the Scout Law; To help other people at all times; To keep myself physically strong, mentally awake, & morally straight.\"", a: "True"),
        Question(q: "A Teacher, a Den Leader, & your trusted adult are all examples of an AKELA.", a: "True"),
        Question(q: "The Scout Salute is similar to the U.S. military salute, but it only uses your first three fingers.", a: "False"),
        Question(q: "A pineapple is an example of a healthy vegetable.", a: "False"),
        Question(q: "Proper nutrition & exercise are important because they help you stay \"physically strong\".", a: "True"),
        Question(q: "While hiking in the woods, it is okay to take a plant home with you.  As long as you plant it in your yard.", a: "False"),
        Question(q: "Touching plants that you do not recognize while hiking in the woods is safe because plants are \"all natural\".", a: "False"),
        Question(q: "According to The Outdoor Code, it is important to \"be conservation minded\".", a: "True"),
        Question(q: "When displaying the United States flag horizontally or vertically; the blue field should always be on the TOP-LEFT.", a: "True"),
        Question(q: "You should always \"Trash Your Trash\" when enjoying the outdoors.", a: "True"),
        Question(q: "Speaking to your hiking buddy is the ONLY way to communicate.", a: "False"),
        Question(q: "To earn the rank of Wolf every cub scout must complete a solo hike of at least 1 mile.", a: "False"),
        Question(q: "To keep from spreading germs it is very important to wash your hands.", a: "True"),
        Question(q: "You can ONLY practice your Duty to God at home.", a: "False"),
        Question(q: "Composting vegetable waste is a great way to make fertilizer for a garden.", a: "True"),
        Question(q: "It is not important to check the weather before going on a hike.", a: "False"),
        Question(q: "You should hand a knife to someone with blade pointing toward them and not you.", a: "False"),
        Question(q: "The safe way to close a knife is with the palm of your hand and not your fingers.", a: "True"),
        Question(q: "Before going on a hike it is important to familiarize yourself with the poisonous plants and animals that you may encounter.", a: "True"),
        Question(q: "If you fall and get a cut just spit on it and you will be fine.", a: "False"),
        Question(q: "It is important to have a budget.", a: "True"),
        Question(q: "Basic first aid knowledge is not important when enjoying the outdoors.", a: "False"),
        Question(q: "When on a cub scout outing it is important to always stay where at least two trusting adults can see you at all times.", a: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    
    func getScore() -> Int {
        return score
    }
    
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    
    mutating func nextQuestion()-> Bool {
        if questionNumber + 1 < quiz.count - 1 {
            questionNumber += 1
            return true
        } else {
            return false
        }
    }
    
}

