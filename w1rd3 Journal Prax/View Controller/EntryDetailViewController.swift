//
//  EntryDetailViewController.swift
//  w1rd3 Journal Prax
//
//  Created by Michael Flowers on 1/24/18.
//  Copyright © 2018 Michael Flowers. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController {

    @IBOutlet weak var bodyTextView: UITextView!
    @IBOutlet weak var titleTextField: UITextField!
    
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatViews()

        // Do any additional setup after loading the view.
    }
    //i have to do the viewWillLoad on entrylistVC because im sending the information there
    @IBAction func saveButtonTapped(_ sender: Any) {
        //we have to check if there is a title
        //we have to check if there is bodytext
        //we have to check if it's a new entry then call the add entry function
        //we have to check if the arrays existing then we update function
        guard let title = titleTextField.text, let bodyText = bodyTextView.text else {return}
        guard let entry = entry else {
            EntryController.shared.addEntry(title: title, bodyText: bodyText)
            navigationController?.popViewController(animated: true)
            return
        }
            EntryController.shared.updateEntry(title: title, bodyText: bodyText, entry: entry)
            navigationController?.popViewController(animated: true)
        }
    
    //WHAT IS THIS FUNCTION DOING
    //IT IS SAYING THAT IF IT IS ENTRY THEN ASSIGN THE TITLE AND BODYTEXT TO MODEL PROPERTIES
    func updatViews() {
        guard let entry = entry else {
            titleTextField.text = ""
            bodyTextView.text = ""
            return
        }
        titleTextField.text = entry.title
        bodyTextView.text = entry.bodyText
    }
    
    
    
    
    
    
    
    
    }
    

