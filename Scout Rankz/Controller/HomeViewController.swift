//
//  HomeViewController.swift
//  ScoutRankz
//
//  Created by Wayne Keith on 4/19/20.
//  Copyright © 2020 Wayne Keith. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func playBtnPressed(_ sender: Any) {
        //Using this instead of Storyboard seques, doing this programmatically makes it easy for you to manage the navigation
        
        let quizVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "QuizVC") as! QuizViewController
        self.navigationController?.pushViewController(quizVC, animated: true)
    }
}
