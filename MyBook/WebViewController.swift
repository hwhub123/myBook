//
//  WebViewController.swift
//  MyBook
//
//  Created by MF839-014 on 2016. 6. 24..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    var bookURL:String?
    
    @IBOutlet weak var bookWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let url = bookURL {
            let urlRequest = NSURLRequest(URL: NSURL(string: url)!)
            bookWebView.loadRequest(urlRequest)
        }
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
