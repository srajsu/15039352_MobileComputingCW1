//
//  ViewController.swift
//  15039352_MobileComputingCW1
//
//  Created by Steven Gatt on 31/10/2016.
//  Copyright © 2016 Steven Gatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Declaring the numbers as buttons
    @IBAction func Number0(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
    }
    @IBAction func Number1(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
    }
    @IBAction func Number2(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
    }
    @IBAction func Number3(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
    }
    @IBAction func Number4(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
    }
    @IBAction func Number5(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
    }
    @IBAction func Number6(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
    }
    @IBAction func Number7(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
    }
    @IBAction func Number8(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
    }
    @IBAction func Number9(_ sender: UIButton) {let userInput = Int(sender.currentTitle!)
        calcAns(userAnswer: userInput!)
    }
    
    //Declaring the Apple images
    @IBOutlet weak var Apple1: UIImageView!
    @IBOutlet weak var Apple2: UIImageView!
    @IBOutlet weak var Apple3: UIImageView!
    @IBOutlet weak var Apple4: UIImageView!
    @IBOutlet weak var Apple5: UIImageView!
    @IBOutlet weak var Apple6: UIImageView!
    @IBOutlet weak var Apple7: UIImageView!
    @IBOutlet weak var Apple8: UIImageView!
    
    
    //Declaring the labels which will be used for the addition
    
    @IBOutlet weak var lblNoOne: UILabel!
    @IBOutlet weak var lblNoTwo: UILabel!
    @IBOutlet weak var lblAns: UILabel!
    @IBOutlet weak var lblResult: UILabel!
        
    @IBAction func calcAns(userAnswer : Int)
    {
        
        let value1 = Int(lblNoOne.text!)
        let value2 = Int(lblNoTwo.text!)
        
        let sum = Int(value1! + value2!)
        
        lblAns.text = String(sum)
        
        if ( Int(sum) == Int(userAnswer)){
            lblResult.text = "success"
            
        }
        else {
            lblResult.text = "fail"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Generating a random number to be displayed in both labels
        lblNoOne.text = String(arc4random_uniform(4))
        lblNoTwo.text = String(arc4random_uniform(4))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

