//
//  SimpleLabelView.swift
//  Neon with remote git
//
//  Created by a8sx on 2/25/18.
//  Copyright © 2018 a8sx. All rights reserved.
//

import UIKit

class SimpleLabelView: UIView{
    
    lazy var labelWithNumber = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpLabelWithNumber(number: String){
        self.addSubview(labelWithNumber)
        
        labelWithNumber.fillSuperview(left: 5, right: 5, top: 5, bottom: 5)
        labelWithNumber.backgroundColor = .white
        labelWithNumber.text = number
        labelWithNumber.textAlignment = .center
        ViewHelper.cutCorners([labelWithNumber])
    }
}
