//
//  ViewController.swift
//  15039352_MobileComputingCW1
//
//  Created by Steven Gatt on 31/10/2016.
//  Copyright © 2016 Steven Gatt. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //Declaring the Apple images
    @IBOutlet weak var Apple1: UIImageView!
    @IBOutlet weak var Apple2: UIImageView!
    @IBOutlet weak var Apple3: UIImageView!
    @IBOutlet weak var Apple4: UIImageView!
    @IBOutlet weak var Apple5: UIImageView!
    @IBOutlet weak var Apple6: UIImageView!
    @IBOutlet weak var Apple7: UIImageView!
    @IBOutlet weak var Apple8: UIImageView!
    
    @IBOutlet weak var viewAnswer: UIView!
    
    //Declaring number number variable
    var AudioPlayer = AVAudioPlayer()
    
    // Declare alertSound* at the instance level for use by other functions.
    let alertSound0 = URL(fileURLWithPath: Bundle.main.path(forResource: "zero", ofType: "mp3")!)
    let alertSound1 = URL(fileURLWithPath: Bundle.main.path(forResource: "one", ofType: "mp3")!)
    let alertSound2 = URL(fileURLWithPath: Bundle.main.path(forResource: "two", ofType: "mp3")!)
    let alertSound3 = URL(fileURLWithPath: Bundle.main.path(forResource: "three", ofType: "mp3")!)
    let alertSound4 = URL(fileURLWithPath: Bundle.main.path(forResource: "four", ofType: "mp3")!)
    let alertSound5 = URL(fileURLWithPath: Bundle.main.path(forResource: "five", ofType: "mp3")!)
    let alertSound6 = URL(fileURLWithPath: Bundle.main.path(forResource: "six", ofType: "mp3")!)
    let alertSound7 = URL(fileURLWithPath: Bundle.main.path(forResource: "seven", ofType: "mp3")!)
    let alertSound8 = URL(fileURLWithPath: Bundle.main.path(forResource: "eight", ofType: "mp3")!)
    let alertSound9 = URL(fileURLWithPath: Bundle.main.path(forResource: "nine", ofType: "mp3")!)
    
    
    //Declaring the labels which will be used for the addition
    @IBOutlet weak var lblNoOne: UILabel!
    @IBOutlet weak var lblNoTwo: UILabel!
    @IBOutlet weak var lblAns: UILabel!
    @IBOutlet weak var lblResult: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        print(alertSound0)
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
    
        print(alertSound1)
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
        
        print(alertSound2)
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
        
        print(alertSound3)
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
        
        print(alertSound4)
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
        
        print(alertSound5)
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
        
        print(alertSound6)
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
        
        print(alertSound7)
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
        
        print(alertSound8)
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
        
        print(alertSound9)
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
        
        //Generating a random number to be displayed in both labels
        lblNoOne.text = String(arc4random_uniform(4))
        lblNoTwo.text = String(arc4random_uniform(4))
    }
    
    
   
    //Declaring the numbers as buttons and playing the sound when clicked
    @IBAction func Number0(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
        
        do {
            AudioPlayer = try AVAudioPlayer(contentsOf: alertSound0)
            AudioPlayer.prepareToPlay()
            AudioPlayer.play()
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }

        
    }
    
    @IBAction func Number1(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
        
        do {
            AudioPlayer = try AVAudioPlayer(contentsOf: alertSound1)
            AudioPlayer.prepareToPlay()
            AudioPlayer.play()
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }

    }
    @IBAction func Number2(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
        
        do {
            AudioPlayer = try AVAudioPlayer(contentsOf: alertSound2)
            AudioPlayer.prepareToPlay()
            AudioPlayer.play()
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
    @IBAction func Number3(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
        
        do {
            AudioPlayer = try AVAudioPlayer(contentsOf: alertSound3)
            AudioPlayer.prepareToPlay()
            AudioPlayer.play()
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
    @IBAction func Number4(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
        
        do {
            AudioPlayer = try AVAudioPlayer(contentsOf: alertSound4)
            AudioPlayer.prepareToPlay()
            AudioPlayer.play()
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
    @IBAction func Number5(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
        
        do {
            AudioPlayer = try AVAudioPlayer(contentsOf: alertSound5)
            AudioPlayer.prepareToPlay()
            AudioPlayer.play()
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
    @IBAction func Number6(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
        
        do {
            AudioPlayer = try AVAudioPlayer(contentsOf: alertSound6)
            AudioPlayer.prepareToPlay()
            AudioPlayer.play()
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
    @IBAction func Number7(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
        
        do {
            AudioPlayer = try AVAudioPlayer(contentsOf: alertSound7)
            AudioPlayer.prepareToPlay()
            AudioPlayer.play()
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
    @IBAction func Number8(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
        
        do {
            AudioPlayer = try AVAudioPlayer(contentsOf: alertSound8)
            AudioPlayer.prepareToPlay()
            AudioPlayer.play()
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
    @IBAction func Number9(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
        
        do {
            AudioPlayer = try AVAudioPlayer(contentsOf: alertSound9)
            AudioPlayer.prepareToPlay()
            AudioPlayer.play()
        }
        catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
    
    
    
    @IBAction func calcAns(userAnswer : Int)
    {
        
        let value1 = Int(lblNoOne.text!)
        let value2 = Int(lblNoTwo.text!)
        
        let sum = Int(value1! + value2!)
        
        //lblAns.text = String(sum)
        
        if ( Int(sum) == Int(userAnswer)){
           self.viewAnswer.isHidden = false
            
        }
        else {
            lblResult.text = "fail"
        }
    }
    
   
    
       
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches) {
            let location = touch.location(in: self.view)
            
            if Apple1.frame.contains(location){
                Apple1.center = location
            }
            else if Apple2.frame.contains(location){
                Apple2.center = location
            }
            else if Apple3.frame.contains(location){
                Apple3.center = location
            }
            else if Apple4.frame.contains(location){
                Apple4.center = location
            }
            else if Apple5.frame.contains(location){
                Apple5.center = location
            }
            else if Apple6.frame.contains(location){
                Apple6.center = location
            }
            else if Apple7.frame.contains(location){
                Apple7.center = location
            }
            else if Apple8.frame.contains(location){
                Apple8.center = location
            }
        }
    }
    
  //  @IBOutlet weak var viewAnswer: UIView!
    
 //   @IBAction func btnPlayAgain(_ sender: AnyObject) {
        
  //      self.viewAnswer.isHidden = true
        //self.loadView()
 //   }
 
  
    @IBAction func btnPlayAgain(_ sender: UIButton) {
        self.viewAnswer.isHidden = true
        self.loadView()
        viewDidLoad()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

