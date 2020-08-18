//
//  UploadDataViewController.swift
//  cardLayout
//
//  Created by A. Mallik on 18/08/2020.
//  Copyright © 2020 Riley Norris. All rights reserved.
//

import UIKit

class UploadDataViewController: UIViewController {
    

    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var descLabel: UITextView!
    
    
    
    @IBAction func uploadData(_ sender: Any) {
        
        addData()
        
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
    
    
    func addData() {
        
        //This adds data to the 'temporary api':
        Data.sharedInstance.title.append(titleLabel.text!)
        Data.sharedInstance.description.append(descLabel.text!)
        
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
