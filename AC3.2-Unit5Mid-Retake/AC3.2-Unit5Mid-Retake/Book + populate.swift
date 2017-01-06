//
//  Book + populate.swift
//  AC3.2-Unit5Mid-Retake
//
//  Created by Karen Fuentes on 1/6/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

extension Book {
    func populate(from dict: [String: Any]) {
        guard let title =  (dict["title"] ?? " ") as? String,
              let author = (dict["author"] ?? " ")  as? String else {return}
        self.title = title
        self.author = author
        if let description = dict["description"] as? String {
            self.descriptionOfBook = description
        } else {
            self.descriptionOfBook = " "
        }
    }
}



//    "title": "1Q84",
//    "description": "In 1980s Tokyo, a woman who punishes perpetrators of domestic violence has ties to an aspiring novelist with an unusual project.",
//    "contributor": "by Haruki Murakami",
//    "author": "Haruki Murakami",
//    "contributor_note": "",
//    "price": 0,
//    "age_group": "",
//    "publisher": "Vintage
