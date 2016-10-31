//
//  ViewController.swift
//  15039352_MobileComputingCW1
//
//  Created by Steven Gatt on 31/10/2016.
//  Copyright © 2016 Steven Gatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Apple1: UIImageView!
    @IBOutlet weak var Apple2: UIImageView!
    @IBOutlet weak var Apple3: UIImageView!
    @IBOutlet weak var Apple4: UIImageView!
    @IBOutlet weak var Apple5: UIImageView!
    @IBOutlet weak var Apple6: UIImageView!
    @IBOutlet weak var Apple7: UIImageView!
    @IBOutlet weak var Apple8: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

