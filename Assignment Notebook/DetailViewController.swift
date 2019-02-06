//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Patrick Dowell on 2/5/19.
//  Copyright © 2019 Patrick Dowell. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!

    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let assignment = self.detailItem {
            assignment.title = titleTextField.text!
            assignment.subject = subjectTextField.text!
            assignment.dueDate = dueDateTextField.text!
            assignment.description = descriptionTextField.text!
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem {
            assignment.title = titleTextField.text!
            assignment.subject = subjectTextField.text!
            assignment.dueDate = dueDateTextField.text!
            assignment.description = descriptionTextField.text!
        }
    }
    
}

