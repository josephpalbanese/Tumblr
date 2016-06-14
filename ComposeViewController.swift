//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Joseph Perri Albanese on 6/11/16.
//  Copyright © 2016 Joseph Perri Albanese. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var nevermindButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UIApplication.sharedApplication().statusBarStyle = .LightContent
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        textButton.frame.origin.y = 568
        photoButton.frame.origin.y = 568
        quoteButton.frame.origin.y = 568
        linkButton.frame.origin.y = 568
        chatButton.frame.origin.y = 568
        videoButton.frame.origin.y = 568
        
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.8, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: {
            self.textButton.frame.origin.y = 140
            self.photoButton.frame.origin.y = 140
            self.quoteButton.frame.origin.y = 140
            
            }) { (Bool) in
        }
        UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: {
            self.linkButton.frame.origin.y = 310
            self.chatButton.frame.origin.y = 310
            self.videoButton.frame.origin.y = 310
            
        }) { (Bool) in
        }

    }
    
    
    @IBAction func didTapPhotoButton(sender: AnyObject) {
            
        
    }
    
    
    // Sends me back to tab bar
    @IBAction func didCancelCompose(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    

}
