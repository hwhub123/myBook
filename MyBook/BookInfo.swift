//
//  BookInfo.swift
//  MyBook
//
//  Created by MF839-014 on 2016. 6. 23..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

import Foundation
import UIKit

class BookInfo {
    let title:String
    let writer:String
    let desc:String
    let cover:UIImage?
    
    init(newTitle:String, newWriter:String, newDescription:String, newCover:UIImage?) {
        title = newTitle
        writer = newWriter
        desc = newDescription
        cover = newCover
    }
    
    convenience init(newTitle:String, newWriter:String, newCover:UIImage) {
        self.init(newTitle:newTitle, newWriter:newWriter, newDescription: "EMPTY_DESC", newCover: newCover)
    }
}

class BookInfoWeb:BookInfo {
    let bookURL:String?
    
    init(newURL:String, newTitle: String, newWriter: String, newDescription: String, newCover: UIImage?) {
        bookURL = newURL
        super.init(newTitle: newTitle, newWriter: newWriter, newDescription: newDescription, newCover: newCover)
    }
}