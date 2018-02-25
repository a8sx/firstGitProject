//
//  ViewController.swift
//  Neon with remote git
//
//  Created by a8sx on 2/25/18.
//  Copyright © 2018 a8sx. All rights reserved.
//

import UIKit
import Neon

class FirstViewController: UIViewController {
    lazy var centerView = UIView()
    lazy var centerInCenterView = SimpleLabelView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }

    func setUI(){
        ViewHelper.cutCorners([centerInCenterView, centerView])
        
        view.addSubview(centerView)
        centerView.anchorInCenter(width: 300, height: 500)
        centerView.backgroundColor = .blue
        
        centerView.addSubview(centerInCenterView)
        centerInCenterView.anchorInCenter(width: 50, height: 50)
        centerInCenterView.backgroundColor = .red
        
        centerInCenterView.setUpLabelWithNumber(number: "5")
    
    }


}

