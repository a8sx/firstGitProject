//
//  ViewHelper.swift
//  Neon with remote git
//
//  Created by a8sx on 2/25/18.
//  Copyright © 2018 a8sx. All rights reserved.
//

import UIKit

class ViewHelper{
    
   static func cutCorners(_ views: [UIView]){
        for view in views{
            view.layer.cornerRadius = 3.0
            view.layer.masksToBounds  = true
        }
    }
}
