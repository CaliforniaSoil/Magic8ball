//
//  ViewController.swift
//  Magic8ball
//
//  Created by Jason Lee on 2/7/18.
//  Copyright © 2018 Jason Lee. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var ballImage: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        updateBalls()
    }
    
    func updateBalls() {
        ballImage = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[ballImage])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBalls()
    }
    
}

