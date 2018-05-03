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
        
    @IBAction func touchElephant(_ sender: UIButton) { //can connect all these buttons to same buttonTapped action?
        if let image = UIImage(named: "cow") as UIImage? {
            flipCard(withImage: image, on: sender)
        }
    }
    
    @IBAction func touchCow(_ sender: UIButton) {
        if let image = UIImage(named: "dog") as UIImage? {
            flipCard(withImage: image, on: sender)
        }
    }

    @IBAction func touchDog(_ sender: UIButton) {
        if let image = UIImage(named: "rooster") as UIImage? {
            flipCard(withImage: image, on: sender)
        }
    }

    @IBAction func touchPig(_ sender: UIButton) {
        if let image = UIImage(named: "pig") as UIImage? {
            flipCard(withImage: image, on: sender)
        }
    }

    @IBAction func touchChick(_ sender: UIButton) {
        if let image = UIImage(named: "horse") as UIImage? {
            flipCard(withImage: image, on: sender)
        }
    }

    @IBAction func touchOwl(_ sender: UIButton) {
        if let image = UIImage(named: "cat") as UIImage? {
            flipCard(withImage: image, on: sender)
        }
    }
    
    var player: AVAudioPlayer?
    
    func flipCard(withImage image: UIImage, on button: UIButton) {
        if button.currentImage == image {
            playSound(forObject: "card")
            button.setImage(nil, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6862745098, blue: 0, alpha: 1)
        } else {
            button.setImage(image, for: .normal)

            if image == UIImage(named: "cow") as UIImage? {
                playSound(forObject: "cow")
            }
            
            if image == UIImage(named: "dog") as UIImage? {
                playSound(forObject: "dog")
            }
            
            if image == UIImage(named: "rooster") as UIImage? {
                playSound(forObject: "rooster")
            }
            
            if image == UIImage(named: "pig") as UIImage? {
                playSound(forObject: "pig")
            }
            
            if image == UIImage(named: "horse") as UIImage? {
                playSound(forObject: "horse")
            }
            
            if image == UIImage(named: "cat") as UIImage? {
                playSound(forObject: "cat")
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

extension UITabBar {
    
    override open func sizeThatFits(_ size: CGSize) -> CGSize {
        var sizeThatFits = super.sizeThatFits(size)
        sizeThatFits.height = 100
        return sizeThatFits
    }
}





