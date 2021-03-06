//
//  UploadDataViewController.swift
//  cardLayout
//
//  Created by Anan K. Mallik on 18/08/2020.
//  Copyright © 2020 Anan K. Mallik. All rights reserved.
//

import UIKit
import CoreData

class UploadDataViewController: UIViewController {
    

    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var descLabel: UITextView!
    
    
    
    @IBAction func uploadData(_ sender: Any) {
        
        if (titleLabel.text == "" || descLabel.text == "") {
            alert()
        }
        else {
            
            addData()
        }
        
        titleLabel.resignFirstResponder()
        descLabel.resignFirstResponder()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        // Do any additional setup after loading the view.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func alert() {
        
        let alert = UIAlertController(title: "oops!", message: "please enter a title and description.", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "got it!", style: .default, handler: nil))

        self.present(alert, animated: true)
        
    }
    
    
    func addData() {
        
        //This adds data to the 'temporary-api':
        DataModel.sharedInstance.title.append(titleLabel.text!)
        DataModel.sharedInstance.description.append(descLabel.text!)
        
        
        
    }
    
    
    func setupUI () {
        
        //This creates the shadows and modifies the textboxes a little bit:
        titleLabel.layer.cornerRadius = 4.0
        titleLabel.layer.borderWidth = 1.0
        titleLabel.layer.borderColor = UIColor.clear.cgColor
        titleLabel.layer.masksToBounds = false
        titleLabel.layer.shadowColor = UIColor.gray.cgColor
        titleLabel.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        titleLabel.layer.shadowRadius = 4.0
        titleLabel.layer.shadowOpacity = 1.0
        titleLabel.layer.masksToBounds = false
        
        descLabel.layer.cornerRadius = 4.0
        descLabel.layer.borderWidth = 1.0
        descLabel.layer.borderColor = UIColor.clear.cgColor
        descLabel.layer.masksToBounds = false
        descLabel.layer.shadowColor = UIColor.gray.cgColor
        descLabel.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        descLabel.layer.shadowRadius = 4.0
        descLabel.layer.shadowOpacity = 1.0
        descLabel.layer.masksToBounds = false
        
    }

}
