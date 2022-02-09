//
//  ViewController.swift
//  CardGame
//
//  Created by Jonni Akesson on 2022-01-24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak private var playingCardView: PlayingCardView!
    
    @IBAction private func flipCard(_ sender: UITapGestureRecognizer) {
        switch sender.state {
        case .ended:
            animateCard()
        default: break
        }
    }
    
    private func animateCard() {
        let transitionOptions: UIView.AnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        UIView.transition(with: playingCardView, duration: 0.40, options: transitionOptions, animations: {
            self.playingCardView.isFaceUp = !self.playingCardView.isFaceUp
        })
    }
}
