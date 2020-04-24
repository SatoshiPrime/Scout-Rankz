//
//  ResultViewController.swift
//  ScoutRankz
//
//  Created by Wayne Keith on 4/19/20.
//  Copyright © 2020 Wayne Keith. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var rankImageView: UIImageView!
    
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Feedback.success.generate()
        rankImageView.image = getRankImage(forScrore: score)
    }
    
    
    private func getRankImage(forScrore score: Int)-> UIImage? {
        
        if (score >= 21) {
            return UIImage(named: "WebelosRank")
        } else if (score >= 16) {
            return UIImage(named: "BearRank")
        } else if (score >= 11) {
            return UIImage(named: "WolfRank")
        } else if (score >= 6) {
            return UIImage(named: "TigerRank")
        } else if (score > 0) {
            return UIImage(named: "BobcatRank")
        }

        return UIImage()
    }
    
    @IBAction func playAgainPressed(_ sender: Any) {
        
        let homeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
        let quizVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "QuizVC") as! QuizViewController
        let navigationVC = UINavigationController(rootViewController: homeVC)
        navigationVC.setNavigationBarHidden(true, animated: false)
        navigationVC.pushViewController(quizVC, animated: false)
        appDelegate.window?.rootViewController = navigationVC
    }
}
