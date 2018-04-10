//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation //Adds audio toolbox library

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var soundArray = ["note1","note2","note3","note4","note6","note6","note7","All Shook Up Short", "Dreamweaver short"]
    var audioPlayer : AVAudioPlayer!
    var soundFileName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
         playSound(soundFileName: soundArray[7])
        
    }



    @IBAction func notePressed(_ sender: UIButton) {
    
        playSound(soundFileName: soundArray[sender.tag - 1])
       
    }
    
    func playSound(soundFileName: String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
            
            //            guard let player = player else { return }
            //
            //            player.prepareToPlay()
            //            player.play();
        }
            
        catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
    
}
