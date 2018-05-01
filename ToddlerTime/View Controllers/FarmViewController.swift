//
//  FarmViewController.swift
//  ToddlerTime
//
//  Created by Banana Viking on 4/12/18.
//  Copyright © 2018 Banana Viking. All rights reserved.
//

import UIKit
import AVFoundation

class FarmViewController: UIViewController {
 
    @IBAction func touchElephant(_ sender: UIButton) { //can connect all these buttons to same buttonTapped action
        flipCard(withEmoji: "🐘", on: sender)
    }
    
    @IBAction func touchCow(_ sender: UIButton) {
        flipCard(withEmoji: "🐄", on: sender)
    }
    
    @IBAction func touchCat(_ sender: UIButton) {
        flipCard(withEmoji: "🐈", on: sender)
    }
    
    @IBAction func touchDog(_ sender: UIButton) {
        flipCard(withEmoji: "🐕", on: sender)
    }
    
    @IBAction func touchPig(_ sender: UIButton) {
        flipCard(withEmoji: "🐖", on: sender)
    }
    
    @IBAction func touchHorse(_ sender: UIButton) {
        flipCard(withEmoji: "🐎", on: sender)
    }
    
    @IBAction func touchChick(_ sender: UIButton) {
        flipCard(withEmoji: "🐓", on: sender)
    }
    
    @IBAction func touchOwl(_ sender: UIButton) {
        flipCard(withEmoji: "🦉", on: sender)
    }
    
    @IBAction func touchSheep(_ sender: UIButton) {
        flipCard(withEmoji: "🐑", on: sender)
    }
    
    var player: AVAudioPlayer?
    var backgroundMusicPlayer: AVAudioPlayer!
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            playSound(forObject: "closeDoor")
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.4941176471, green: 0.4078431373, blue: 0.3529411765, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

            if emoji == "🐘" {
                playSound(forObject: "elephant")
            }
            if emoji == "🐄" {
                playSound(forObject: "cow")
            }
            if emoji == "🐈" {
                playSound(forObject: "cat")
            }
            if emoji == "🐕" {
                playSound(forObject: "dog")
            }
            if emoji == "🐖" {
                playSound(forObject: "pig")
            }
            if emoji == "🐎" {
                playSound(forObject: "horse")
            }
            if emoji == "🐓" {
                playSound(forObject: "rooster")
            }
            if emoji == "🦉" {
                playSound(forObject: "owl")
            }
            if emoji == "🐑" {
                playSound(forObject: "sheep")
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
}

// adds the following settings in IB for all views under attributes inspector
extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {  //take out if don't use
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {  //take out if don't use
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
}

