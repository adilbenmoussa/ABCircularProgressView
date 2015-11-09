//
//  ViewController.swift
//  ABCircularProgressViewExample
//
//  Created by A Ben Moussa on 11/9/15.
//  Copyright © 2015 Adil Ben Moussa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressIndicatorView: ABCircularProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func start(sender: AnyObject) {
        // Test the ABCircularProgressView component
        var progress: CGFloat = 0
        for i in 0..<101 {
            progress = CGFloat(Float(i) / 100.0)
            progressIndicatorView.progress = progress
        }
    }

    @IBAction func changeProgress(sender: UISlider) {
        progressIndicatorView.progress = CGFloat(CGFloat(sender.value) / 100.0)
    }
}

