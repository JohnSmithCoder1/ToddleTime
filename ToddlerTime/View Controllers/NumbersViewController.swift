//
//  NumbersViewController.swift
//  ToddlerTime
//
//  Created by Banana Viking on 4/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class NumbersViewController: UIViewController {
    
    let primaryVC = FarmViewController()
    
    @IBAction func touchCard(_ sender: AnyObject) {
        guard let card = sender as? UIButton else { return }
        
        switch card.tag {
        case 300:
            flipCard(withImage: one.image, on: card)
        case 301:
            flipCard(withImage: two.image, on: card)
        case 302:
            flipCard(withImage: three.image, on: card)
        case 303:
            flipCard(withImage: four.image, on: card)
        case 304:
            flipCard(withImage: five.image, on: card)
        case 305:
            flipCard(withImage: six.image, on: card)
        default:
            print("unkown card touched")
            return
        }
    }
    
    
    // MARK: - Function Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: .UIApplicationDidEnterBackground, object: nil)
        
        // refactor this code duplication
        let card0 = self.view.viewWithTag(300) as? UIButton
        let card1 = self.view.viewWithTag(301) as? UIButton
        let card2 = self.view.viewWithTag(302) as? UIButton
        let card3 = self.view.viewWithTag(303) as? UIButton
        let card4 = self.view.viewWithTag(304) as? UIButton
        let card5 = self.view.viewWithTag(305) as? UIButton
        
        primaryVC.setupButtonStyle(button: card0!)
        primaryVC.setupButtonStyle(button: card1!)
        primaryVC.setupButtonStyle(button: card2!)
        primaryVC.setupButtonStyle(button: card3!)
        primaryVC.setupButtonStyle(button: card4!)
        primaryVC.setupButtonStyle(button: card5!)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        primaryVC.playSound(forObject: "pageTurnSound")
        resetCards()
    }
    
    
    // MARK: - Functions
    @objc func appDidEnterBackground() {
        resetCards()
    }
    
    func flipCard(withImage image: UIImage, on button: UIButton) {
        if button.currentImage == image {
            primaryVC.playSound(forObject: "flipCardSound")
            button.setImage(nil, for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1)
        } else {
            button.setImage(image, for: .normal)
            
            switch image {
            case one.image:
                primaryVC.playSound(forObject: one.sound)
            case two.image:
                primaryVC.playSound(forObject: two.sound)
            case three.image:
                primaryVC.playSound(forObject: three.sound)
            case four.image:
                primaryVC.playSound(forObject: four.sound)
            case five.image:
                primaryVC.playSound(forObject: five.sound)
            case six.image:
                primaryVC.playSound(forObject: six.sound)
            default:
                print("error finding sound")
            }
        }
    }
    
    func resetCards() {
        let card0 = self.view.viewWithTag(300) as? UIButton
        let card1 = self.view.viewWithTag(301) as? UIButton
        let card2 = self.view.viewWithTag(302) as? UIButton
        let card3 = self.view.viewWithTag(303) as? UIButton
        let card4 = self.view.viewWithTag(304) as? UIButton
        let card5 = self.view.viewWithTag(305) as? UIButton
        
        let cards = [card0, card1, card2, card3, card4, card5]
        
        for card in cards {
            card?.setImage(nil, for: .normal)
            card?.backgroundColor = #colorLiteral(red: 0.003921568627, green: 0.462745098, blue: 0.7647058824, alpha: 1)
        }
    }
}
