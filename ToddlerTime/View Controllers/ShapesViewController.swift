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
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: .UIApplicationDidEnterBackground, object: nil)
    }
    
    @objc func appDidEnterBackground() {
        resetShapesCards()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        playSound(forObject: "pageTurnSound")
        resetShapesCards()
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            playSound(forObject: "flipCardSound")
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.4745098039, green: 0.1764705882, blue: 0.5725490196, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
            if emoji == "🔵" {
                playSound(forObject: "circle")
            }
            if emoji == "⬛️" {
                playSound(forObject: "square")
            }
            if emoji == "🔺" {
                playSound(forObject: "triangle")
            }
            if emoji == "🔶" {
                playSound(forObject: "diamond")
            }
            if emoji == "⭐️" {
                playSound(forObject: "star")
            }
            if emoji == "♥️" {
                playSound(forObject: "heart")
            }
        }
    }
    
    func playSound(forObject: String) {
        guard let url = Bundle.main.url(forResource: forObject, withExtension: "wav") else {
            print("url not found")
            return
        }
        
        do {
            /// this codes for making this app ready to takeover the device audio
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            player!.play()
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
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
