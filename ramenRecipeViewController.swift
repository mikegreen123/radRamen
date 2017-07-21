//
//  ramenRecipeViewController.swift
//  ramenHackathon
//
//  Created by Michael Green on 7/19/17.
//  Copyright © 2017 Michael Green. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

var rap: AVAudioPlayer?

class ramenRecipeViewController: UIViewController{

    func playRamenRap(){
        let url = Bundle.main.url(forResource: "ramenrap", withExtension: "mp3")!
        do{
            let sound = try AVAudioPlayer(contentsOf: url)
            rap = sound
            sound.play()
        }catch{
        }
    }
    
    
    
    @IBOutlet weak var titleOfRecipeLael: UILabel!
    @IBOutlet weak var ramenRecipeLabel: UILabel!
    @IBOutlet weak var ramenEmojiImage: UIImageView!
    
    @IBOutlet weak var goBackButton: UIButton!

    override func viewDidLoad() {
        playRamenRap()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        rap = nil
    }
}
