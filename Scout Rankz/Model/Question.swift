//
//  Question.swift
//  ScoutRankz
//
//  Created by Wayne Keith on 4/13/20.
//  Copyright © 2020 Wayne Keith. All rights reserved.
//

import Foundation

struct Question {
    let text : String
    let answer : String
    
    init(q : String, a : String) {
        text = q
        answer = a
    }
}
