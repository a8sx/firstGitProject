//
//  ViewExtensions.swift
//  Neon with remote git
//
//  Created by a8sx on 2/25/18.
//  Copyright © 2018 a8sx. All rights reserved.
//

import UIKit

extension UIView{
    
    func addSubviews(_ views: [UIView]){
        for view in views{
            self.addSubview(view)
        }
    }
    
}
