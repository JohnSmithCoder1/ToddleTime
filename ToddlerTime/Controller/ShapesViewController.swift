//
//  ShapesViewController.swift
//  ToddlerTime
//
//  Created by Banana Viking on 4/30/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class ShapesViewController: UIViewController {
    
    let primaryVC = FarmViewController()
    
    @IBAction func touchCard(_ sender: AnyObject) {
        guard let card = sender as? UIButton else { return }
        
        switch card.tag {
        case 400:
            flipCard(withImage: circle.image, on: card)
        case 401:
            flipCard(withImage: square.image, on: card)
        case 402:
            flipCard(withImage: triangle.image, on: card)
        case 403:
            flipCard(withImage: diamond.image, on: card)
        case 404:
            flipCard(withImage: star.image, on: card)
        case 405:
            flipCard(withImage: heart.image, on: card)
        default:
            print("unkown card touched")
            return
        }
    }
    
    
    // MARK: - Function Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: .UIApplicationDidEnterBackground, object: nil)
        
        primaryVC.setupButtonStyle(button: (view.viewWithTag(400) as? UIButton)!)
        primaryVC.setupButtonStyle(button: (view.viewWithTag(401) as? UIButton)!)
        primaryVC.setupButtonStyle(button: (view.viewWithTag(402) as? UIButton)!)
        primaryVC.setupButtonStyle(button: (view.viewWithTag(403) as? UIButton)!)
        primaryVC.setupButtonStyle(button: (view.viewWithTag(404) as? UIButton)!)
        primaryVC.setupButtonStyle(button: (view.viewWithTag(405) as? UIButton)!)
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
            button.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        } else {
            button.setImage(image, for: .normal)
            
            switch image {
            case circle.image:
                primaryVC.playSound(forObject: circle.sound)
            case square.image:
                primaryVC.playSound(forObject: square.sound)
            case triangle.image:
                primaryVC.playSound(forObject: triangle.sound)
            case diamond.image:
                primaryVC.playSound(forObject: diamond.sound)
            case star.image:
                primaryVC.playSound(forObject: star.sound)
            case heart.image:
                primaryVC.playSound(forObject: heart.sound)
            default:
                print("error finding sound")
            }
        }
    }
    
    func resetCards() {
        let cards = [view.viewWithTag(400) as? UIButton,
                     view.viewWithTag(401) as? UIButton,
                     view.viewWithTag(402) as? UIButton,
                     view.viewWithTag(403) as? UIButton,
                     view.viewWithTag(404) as? UIButton,
                     view.viewWithTag(405) as? UIButton]
        
        for card in cards {
            card?.setImage(nil, for: .normal)
            card?.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        }
    }
}
