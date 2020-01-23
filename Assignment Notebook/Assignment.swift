//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by Elise Farley on 1/22/20.
//  Copyright © 2020 Elise Farley. All rights reserved.
//

import UIKit

class Assignment: Codable {
    
    
    var name : String
    var subject : String
    var dueDate : String
    var assignmentDescription : String
    
    init(name: String, subject: String, dueDate: String, description: String) {
        self.name = name
        self.subject = subject
        self.dueDate = dueDate
        self.assignmentDescription = description
    }
}
