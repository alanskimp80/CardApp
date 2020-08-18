//
//  Data.swift
//  cardLayout
//
//  Created by A. Mallik on 18/08/2020.
//  Copyright © 2020 Anan K. Mallik. All rights reserved.
//

import Foundation

//Temporary API/DataBase to hold Collection of Card Info:
class Data {
    
    static let sharedInstance = Data()
    var title : [String]
    var description : [String]
    
    private init()
    {
        print("Singleton initialized")
        title = ["A Sample Title"]
        description = ["A Sample Description in the body area."]
    }
    
}



