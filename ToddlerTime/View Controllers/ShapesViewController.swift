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
    
    @IBAction func touchCard0(_ sender: UIButton) {
        flipCard(withEmoji: "🔵", on: sender)
    }
    
    @IBAction func touchCard1(_ sender: UIButton) {
        flipCard(withEmoji: "⬛️", on: sender)
    }
    
    @IBAction func touchCard2(_ sender: UIButton) {
        flipCard(withEmoji: "🔺", on: sender)
    }
    
    @IBAction func touchCard3(_ sender: UIButton) {
        flipCard(withEmoji: "🔶", on: sender)
    }
   
    @IBAction func touchCard4(_ sender: UIButton) {
        flipCard(withEmoji: "⭐️", on: sender)
    }
    
    @IBAction func touchCard5(_ sender: UIButton) {
        flipCard(withEmoji: "♥️", on: sender)
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
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            primaryVC.playSound(forObject: "flipCardSound")
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
            if emoji == "🔵" {
                primaryVC.playSound(forObject: "circle")
            }
            if emoji == "⬛️" {
                primaryVC.playSound(forObject: "square")
            }
            if emoji == "🔺" {
                primaryVC.playSound(forObject: "triangle")
            }
            if emoji == "🔶" {
                primaryVC.playSound(forObject: "diamond")
            }
            if emoji == "⭐️" {
                primaryVC.playSound(forObject: "star")
            }
            if emoji == "♥️" {
                primaryVC.playSound(forObject: "heart")
            }
        }
    }
    
    func resetShapesCards() {
        if let button0 = self.view.viewWithTag(400) as? UIButton {
            button0.setTitle("", for: .normal)
            button0.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        }
        if let button1 = self.view.viewWithTag(401) as? UIButton {
            button1.setTitle("", for: .normal)
            button1.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        }
        if let button2 = self.view.viewWithTag(402) as? UIButton {
            button2.setTitle("", for: .normal)
            button2.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        }
        if let button3 = self.view.viewWithTag(403) as? UIButton {
            button3.setTitle("", for: .normal)
            button3.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        }
        if let button4 = self.view.viewWithTag(404) as? UIButton {
            button4.setTitle("", for: .normal)
            button4.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        }
        if let button5 = self.view.viewWithTag(405) as? UIButton {
            button5.setTitle("", for: .normal)
            button5.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        }
    }
}
