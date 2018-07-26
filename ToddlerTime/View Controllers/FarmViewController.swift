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
    
    var player: AVAudioPlayer?
    
    
    //MARK: - Actions
    @IBAction func touchCard0(_ sender: UIButton) { //can connect all these buttons to same buttonTapped action?
        flipCard(withImage: cow.image, on: sender)
    }
    
    @IBAction func touchCard1(_ sender: UIButton) {
        flipCard(withImage: dog.image, on: sender)
    }
    
    @IBAction func touchCard2(_ sender: UIButton) {
        flipCard(withImage: chicken.image, on: sender)
    }
    
    @IBAction func touchCard3(_ sender: UIButton) {
        flipCard(withImage: pig.image, on: sender)
    }
    
    @IBAction func touchCard4(_ sender: UIButton) {
        flipCard(withImage: horse.image, on: sender)
    }
    
    @IBAction func touchCard5(_ sender: UIButton) {
        flipCard(withImage: cat.image, on: sender)
    }
    
    
    //MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBackground), name: .UIApplicationDidEnterBackground, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        playSound(forObject: "pageTurnSound")
        resetFarmCards()
    }
    
    
    //MARK: - Functions
    @objc func appDidEnterBackground() {
        resetFarmCards()
    }
    
    func flipCard(withImage image: UIImage, on button: UIButton) {
        if button.currentImage == image {
            playSound(forObject: "flipCardSound")
            button.setImage(nil, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.8235294118, blue: 0.01176470588, alpha: 1)
        } else {
            button.setImage(image, for: .normal)
            
            switch image {
            case cow.image:
                playSound(forObject: cow.sound)
            case dog.image:
                playSound(forObject: dog.sound)
            case chicken.image:
                playSound(forObject: chicken.sound)
            case pig.image:
                playSound(forObject: pig.sound)
            case horse.image:
                playSound(forObject: horse.sound)
            case cat.image:
                playSound(forObject: cat.sound)
            default:
                print("error finding sound")
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
            
            player?.play()  // this was player!.play()
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
    
    func resetFarmCards() {  // move this function to card.swift
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






