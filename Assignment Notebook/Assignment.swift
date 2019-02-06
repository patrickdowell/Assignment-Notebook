//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by Patrick Dowell on 2/6/19.
//  Copyright © 2019 Patrick Dowell. All rights reserved.
//

import UIKit

class Assignment: Codable {

    var title : String
    var subject : String
    var dueDate : String
    var description : String
    
    init(title: String, subject: String, dueDate: String, description: String) {
        self.title = title
        self.subject = subject
        self.dueDate = dueDate
        self.description = description
    }
    
}
