//
//  ViewController.swift
//  ramenHackathon
//
//  Created by Michael Green on 7/18/17.
//  Copyright © 2017 Michael Green. All rights reserved.
//

import UIKit
import AVFoundation

var player: AVAudioPlayer?
var playingAudioPlayer: AVAudioPlayer?


class ViewController: UIViewController {
    
    func playSound(){
        let url = Bundle.main.url(forResource: "mysound", withExtension: "wav")!
        do{
            let sound = try AVAudioPlayer(contentsOf: url)
            player = sound
            sound.play()
        }catch{
        }
    }
    
    let images = [#imageLiteral(resourceName: "ramen1"), #imageLiteral(resourceName: "ramen2"), #imageLiteral(resourceName: "ramen3"), #imageLiteral(resourceName: "ramen4"), #imageLiteral(resourceName: "ramen5"), #imageLiteral(resourceName: "ramen6"), #imageLiteral(resourceName: "ramen7"), #imageLiteral(resourceName: "ramen8"), #imageLiteral(resourceName: "ramen9"), #imageLiteral(resourceName: "ramen10"), #imageLiteral(resourceName: "ramen11"), #imageLiteral(resourceName: "ramen12"), #imageLiteral(resourceName: "ramen13"), #imageLiteral(resourceName: "ramen14"), #imageLiteral(resourceName: "ramen15"), #imageLiteral(resourceName: "ramen16"),#imageLiteral(resourceName: "ramen17"), #imageLiteral(resourceName: "ramen18"), #imageLiteral(resourceName: "ramen19"), #imageLiteral(resourceName: "ramen20")]
    
    @IBOutlet weak var yummyLabel: UILabel! //Tells you to click winnie the pooh
    @IBOutlet weak var yummyInTummyImage: UIImageView! //winnie the pooh
    @IBOutlet weak var ramenPicturesImage: UIImageView! //image view that shows pictures of ramen on top of
    @IBOutlet weak var clickPictureUILabel: UILabel! //click picture label
    @IBAction func nextPictureButton(_ sender: Any) {
        //changes the picture of the ramen
        let randomImage = Int(arc4random_uniform(UInt32(images.count)))
        ramenPicturesImage.image = images[randomImage]
    }
    @IBAction func yummySoundButton(_ sender: Any) {
        //winnnie the pooh button
        playSound()
    }
    @IBAction func imageClickButton(_ sender: Any) {
        //segues you to a ramen recipe
    }
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        let randomImage = Int(arc4random_uniform(UInt32(images.count)))
        ramenPicturesImage.image = images[randomImage]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBackUnwind(_segue:UIStoryboardSegue)
    {
        
        
    }
    
    //prepare for segue
    //stop audio function
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        player = nil
    }
    
    
}

