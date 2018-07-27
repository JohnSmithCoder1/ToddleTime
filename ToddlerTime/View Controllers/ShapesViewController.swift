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
        
        // refactor this code duplication
        let card0 = self.view.viewWithTag(400) as? UIButton
        let card1 = self.view.viewWithTag(401) as? UIButton
        let card2 = self.view.viewWithTag(402) as? UIButton
        let card3 = self.view.viewWithTag(403) as? UIButton
        let card4 = self.view.viewWithTag(404) as? UIButton
        let card5 = self.view.viewWithTag(405) as? UIButton
        
        primaryVC.setupButtonStyle(button: card0!)
        primaryVC.setupButtonStyle(button: card1!)
        primaryVC.setupButtonStyle(button: card2!)
        primaryVC.setupButtonStyle(button: card3!)
        primaryVC.setupButtonStyle(button: card4!)
        primaryVC.setupButtonStyle(button: card5!)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        primaryVC.playSound(forObject: "pageTurnSound")
        resetShapesCards()
    }
    
    
    // MARK: - Functions
    @objc func appDidEnterBackground() {
        resetShapesCards()
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
    
    func resetShapesCards() {
        if let button0 = self.view.viewWithTag(400) as? UIButton {
            button0.setImage(nil, for: .normal)
            button0.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        }
        if let button1 = self.view.viewWithTag(401) as? UIButton {
            button1.setImage(nil, for: .normal)
            button1.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        }
        if let button2 = self.view.viewWithTag(402) as? UIButton {
            button2.setImage(nil, for: .normal)
            button2.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        }
        if let button3 = self.view.viewWithTag(403) as? UIButton {
            button3.setImage(nil, for: .normal)
            button3.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        }
        if let button4 = self.view.viewWithTag(404) as? UIButton {
            button4.setImage(nil, for: .normal)
            button4.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        }
        if let button5 = self.view.viewWithTag(405) as? UIButton {
            button5.setImage(nil, for: .normal)
            button5.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        }
    }
}
