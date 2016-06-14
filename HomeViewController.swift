//
//  HomeViewController.swift
//  Tumblr
//
//  Created by Joseph Perri Albanese on 6/11/16.
//  Copyright © 2016 Joseph Perri Albanese. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var homeSpinner: UIImageView!

    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        
        UIView.animateWithDuration(6.0, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [.Repeat], animations: {
           
            self.homeSpinner.transform = CGAffineTransformMakeRotation(180.0 * CGFloat(M_PI_4))
            
        }) { (Bool) in}
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func didTapLogin(sender: AnyObject) {
        
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        var destinationViewController = segue.destinationViewController
        
        // Set the modal presentation style of your destinationViewController to be custom.
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        destinationViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 0.4
    }

}
