//
//  ViewController.swift
//  CardGame
//
//  Created by Jonni Akesson on 2022-01-24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playingCardView: PlayingCardView!
    
    @IBAction func flipCard(_ sender: UITapGestureRecognizer) {
        switch sender.state {
        case .ended:
            playingCardView.isFaceUp = !playingCardView.isFaceUp
        default: break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}
