//
//  BookDetailViewController.swift
//  MyBook
//
//  Created by MF839-014 on 2016. 6. 23..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {

    @IBOutlet weak var coverImageView: UIImageView!
    
    
    @IBOutlet weak var bookTitle: UILabel!
    
    @IBOutlet weak var bookWriter: UILabel!
    
    @IBOutlet weak var bookDesc: UITextView!
    
    var book:BookInfoWeb?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        if let newBookInfo = book {
            self.coverImageView.image = newBookInfo.cover
            self.bookTitle.text = newBookInfo.title
            self.bookWriter.text = newBookInfo.writer
            self.bookDesc.text = newBookInfo.desc
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let webVC = segue.destinationViewController as? WebViewController
        
        if let vc = webVC {
            vc.bookURL = book?.bookURL
        }
    
    }

}
