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
        
        progressIndicatorView.startSpinning()
        
        let dispatchTime: dispatch_time_t = dispatch_time(DISPATCH_TIME_NOW, Int64(2 * NSEC_PER_SEC));
        let dispatchQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)
        dispatch_after(dispatchTime, dispatchQueue) { () -> Void in
            var progress: CGFloat = 0
            for i in 0..<101 {
                progress = CGFloat(Float(i) / 100.0)
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.progressIndicatorView.progress = progress
                })
                usleep(10000)
            }
        }
        
        // Stop spinning in the main thread
//        dispatchTime = dispatch_time(DISPATCH_TIME_NOW, (Int64)(3 * NSEC_PER_SEC));
//        dispatch_after(dispatchTime, dispatchQueue) { () -> Void in
//            dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                self.progressIndicatorView.stopSpinning()
//            })
//        }
    }

    @IBAction func changeProgress(sender: UISlider) {
        progressIndicatorView.progress = CGFloat(CGFloat(sender.value) / 100.0)
    }
}

