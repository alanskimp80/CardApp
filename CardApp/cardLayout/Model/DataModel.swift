//
//  Data.swift
//  cardLayout
//
//  Created by A. Mallik on 18/08/2020.
//  Copyright © 2020 Anan K. Mallik. All rights reserved.
//

import Foundation

//Temporary API/DataBase to hold Collection of Card Info:
class DataModel {
    
    static let sharedInstance = DataModel()
    var title : [String]
    var description : [String]
    
    private init()
    {
        print("Data Model Initialized...")
        
        //Initialize with some sample data:
        title = ["Acer"]
        description = ["Established in 1976, Acer is a hardware + software + services company dedicated to the research, design, marketing, sale, and support of innovative products that enhance lives."]
    }
    
}



