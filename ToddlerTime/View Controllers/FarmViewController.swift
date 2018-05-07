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
        
    @IBAction func touchCard0(_ sender: UIButton) { //can connect all these buttons to same buttonTapped action?
        if let image = UIImage(named: "cow") as UIImage? {
            flipCard(withImage: image, on: sender)
        }
    }
    
    @IBAction func touchCard1(_ sender: UIButton) {
        if let image = UIImage(named: "dog") as UIImage? {
            flipCard(withImage: image, on: sender)
        }
    }

    @IBAction func touchCard2(_ sender: UIButton) {
        if let image = UIImage(named: "rooster") as UIImage? {
            flipCard(withImage: image, on: sender)
        }
    }

    @IBAction func touchCard3(_ sender: UIButton) {
        if let image = UIImage(named: "pig") as UIImage? {
            flipCard(withImage: image, on: sender)
        }
    }

    @IBAction func touchCard4(_ sender: UIButton) {
        if let image = UIImage(named: "horse") as UIImage? {
            flipCard(withImage: image, on: sender)
        }
    }

    @IBAction func touchCard5(_ sender: UIButton) {
        if let image = UIImage(named: "cat") as UIImage? {
            flipCard(withImage: image, on: sender)
        }
    }
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: .UIApplicationDidEnterBackground, object: nil)
    }
    
    @objc func appDidEnterBackground() {
        resetFarmCards()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        playSound(forObject: "page")
        resetFarmCards()
    }
   
    
    func flipCard(withImage image: UIImage, on button: UIButton) {
        if button.currentImage == image {
            playSound(forObject: "card")
            button.setImage(nil, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
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
    
    
    func resetFarmCards() {
        if let button0 = self.view.viewWithTag(100) as? UIButton {
            button0.setImage(nil, for: .normal)
            button0.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
        }
        if let button1 = self.view.viewWithTag(101) as? UIButton {
            button1.setImage(nil, for: .normal)
            button1.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
        }
        if let button2 = self.view.viewWithTag(102) as? UIButton {
            button2.setImage(nil, for: .normal)
            button2.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
        }
        if let button3 = self.view.viewWithTag(103) as? UIButton {
            button3.setImage(nil, for: .normal)
            button3.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
        }
        if let button4 = self.view.viewWithTag(104) as? UIButton {
            button4.setImage(nil, for: .normal)
            button4.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
        }
        if let button5 = self.view.viewWithTag(105) as? UIButton {
            button5.setImage(nil, for: .normal)
            button5.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
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





