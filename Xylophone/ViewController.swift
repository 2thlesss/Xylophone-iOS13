//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer : AVAudioPlayer?///sets up our audio player
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
        
    
    @IBAction func keyPressed(_ sender: UIButton) {
        setupAudioPlayer()
        playSound()
        
        
        func setupAudioPlayer(){
            guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.prepareToPlay()
            } catch {
                print("Error loading sound file: \(error.localizedDescription)")
                
                
            }
        }
        func playSound() {
                audioPlayer?.play()
            }
    }
    
    
    
    
}

