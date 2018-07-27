//
//  MarketViewController.swift
//  ToddlerTime
//
//  Created by Banana Viking on 4/27/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class MarketViewController: UIViewController {
    
    let primaryVC = FarmViewController()
    
    @IBAction func touchCard0(_ sender: UIButton) {
        flipCard(withEmoji: "🍎", on: sender)
    }
    
    @IBAction func touchCard1(_ sender: UIButton) {
        flipCard(withEmoji: "🍌", on: sender)
    }
   
    @IBAction func touchCard2(_ sender: UIButton) {
        flipCard(withEmoji: "🥕", on: sender)
    }
    
    @IBAction func touchCard3(_ sender: UIButton) {
        flipCard(withEmoji: "🥦", on: sender)
    }
  
    @IBAction func touchCard4(_ sender: UIButton) {
        flipCard(withEmoji: "🍓", on: sender)
    }
    
    @IBAction func touchCard5(_ sender: UIButton) {
        flipCard(withEmoji: "🌶", on: sender)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: .UIApplicationDidEnterBackground, object: nil)
        
        // refactor this code duplication
        let card0 = self.view.viewWithTag(200) as? UIButton
        let card1 = self.view.viewWithTag(201) as? UIButton
        let card2 = self.view.viewWithTag(202) as? UIButton
        let card3 = self.view.viewWithTag(203) as? UIButton
        let card4 = self.view.viewWithTag(204) as? UIButton
        let card5 = self.view.viewWithTag(205) as? UIButton
        
        setupButtonStyle(button: card0!)
        setupButtonStyle(button: card1!)
        setupButtonStyle(button: card2!)
        setupButtonStyle(button: card3!)
        setupButtonStyle(button: card4!)
        setupButtonStyle(button: card5!)
    }
    
    @objc func appDidEnterBackground() {
        resetMarketCards()
    }
    
    func setupButtonStyle(button: UIButton) {
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4.5, height: 4.5)
        button.layer.shadowRadius = 4.5
        button.layer.shadowOpacity = 1
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        primaryVC.playSound(forObject: "pageTurnSound")
        resetMarketCards()
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            primaryVC.playSound(forObject: "flipCardSound")
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            if emoji == "🍎" {
                primaryVC.playSound(forObject: "apple")
            }
            
            if emoji == "🍌" {
                primaryVC.playSound(forObject: "banana")
            }
            
            if emoji == "🥕" {
                primaryVC.playSound(forObject: "carrot")
            }
            
            if emoji == "🥦" {
                primaryVC.playSound(forObject: "broccoli")
            }
            
            if emoji == "🍓" {
                primaryVC.playSound(forObject: "strawberry")
            }
           
            if emoji == "🌶" {
                primaryVC.playSound(forObject: "pepper")
            }
        }
    }
    
    func resetMarketCards() {
        if let button0 = self.view.viewWithTag(200) as? UIButton {
            button0.setTitle("", for: .normal)
            button0.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        }
        if let button1 = self.view.viewWithTag(201) as? UIButton {
            button1.setTitle("", for: .normal)
            button1.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        }
        if let button2 = self.view.viewWithTag(202) as? UIButton {
            button2.setTitle("", for: .normal)
            button2.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        }
        if let button3 = self.view.viewWithTag(203) as? UIButton {
            button3.setTitle("", for: .normal)
            button3.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        }
        if let button4 = self.view.viewWithTag(204) as? UIButton {
            button4.setTitle("", for: .normal)
            button4.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        }
        if let button5 = self.view.viewWithTag(205) as? UIButton {
            button5.setTitle("", for: .normal)
            button5.backgroundColor = #colorLiteral(red: 0.9254901961, green: 0.1098039216, blue: 0.1411764706, alpha: 1)
        }
    }
}
