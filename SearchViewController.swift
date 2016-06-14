//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Joseph Perri Albanese on 6/11/16.
//  Copyright © 2016 Joseph Perri Albanese. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var loadingImage: UIImageView!
    @IBOutlet weak var searchImageView: UIImageView!
    
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    var images: [UIImage]!
    var animatedImage: UIImage!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchImageView.alpha = 0
        loadingImage.alpha = 1
        
        
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        
        animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)
        
        loadingImage.image = animatedImage
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        delay(1.0) { 
            
            UIView.animateWithDuration(0.8, animations: { 
                 self.searchImageView.alpha = 1
                 self.loadingImage.alpha = 0
                }, completion: { (Bool) in
                
            })
           
        }
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
