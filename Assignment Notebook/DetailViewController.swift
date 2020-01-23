//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Elise Farley on 1/15/20.
//  Copyright © 2020 Elise Farley. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var courseTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var assignmentDescriptionTextView: UITextView!
    
   @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let assignment = self.detailItem {
            if courseTextField != nil {
                nameTextField.text = assignment.name
                courseTextField.text = assignment.subject
                dueDateTextField.text = assignment.dueDate
                assignmentDescriptionTextView.text = assignment.assignmentDescription
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }
    
    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }
}

