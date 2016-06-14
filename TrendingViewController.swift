//
//  TrendingViewController.swift
//  Tumblr
//
//  Created by Joseph Perri Albanese on 6/11/16.
//  Copyright © 2016 Joseph Perri Albanese. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {
    @IBOutlet weak var trendingScrollView: UIScrollView!
    @IBOutlet weak var trendingFeed: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        trendingScrollView.contentSize = trendingFeed.image!.size

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
