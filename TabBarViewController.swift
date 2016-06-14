//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Joseph Perri Albanese on 6/11/16.
//  Copyright © 2016 Joseph Perri Albanese. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
   
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var explorePopup: UIImageView!
    
    @IBOutlet weak var composeButton: UIButton!
    
    // These variables will hold my tabs in my TabViewController Frame
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
//  var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    // This variable will hold the ViewControllers
    var viewControllers: [UIViewController]!
    
    // This variable will keep track of the selected view
    var selectedIndex: Int = 0
    
    
    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        
        // Animation for my pop up
        
        print("this working?")
        
        UIView.animateWithDuration(0.6, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [.Repeat, .Autoreverse], animations: {
            
            self.explorePopup.frame.origin.y = 460
            
            }) { (Bool) in
                
        }
        
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Iniating my view controllers
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
//      composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        

        // Setting the Initial Tab
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didPressCompose(sender: AnyObject) {
        
        performSegueWithIdentifier("compose", sender: self)
    }
    
    
    @IBAction func didPressTab(sender: UIButton) {
        print("tab tapped")
        
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        buttons[previousIndex].selected = false
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        
        let vc = viewControllers[selectedIndex]
        
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        vc.didMoveToParentViewController(self)
    }

    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destinationViewController = segue.destinationViewController
        
        print("compose")
        
        // Modal presentation style
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        
        // New instance of transition
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        destinationViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 0.4
    }
    
    @IBAction func exploreTap(sender: AnyObject) {
        
        UIView.animateWithDuration(0.6, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { 
            self.explorePopup.alpha = 0
            }) { (Bool) in
                
        }
        
            

        
        
    }


}
    
    
    


