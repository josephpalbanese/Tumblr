//
//  LoginViewController.swift
//  Tumblr
//
//  Created by Joseph Perri Albanese on 6/12/16.
//  Copyright © 2016 Joseph Perri Albanese. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    


    @IBOutlet weak var loginCardView: UIView!
    @IBOutlet weak var cancelButton: UIButton!
   
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
        
        loginCardView.frame.origin.y = 568
        
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.8, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: {
           self.loginCardView.frame.origin.y = 218
        }) { (Bool) in}
  
        
    }
    
    
    @IBAction func loginCanceled(sender: AnyObject) {
          dismissViewControllerAnimated(true, completion: nil)
        
    }

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
