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
    lazy var mainView = UIView()
    lazy var centerView = SimpleLabelView(color: UIColor.green, number: "5")
    lazy var topLeftView = SimpleLabelView(color: UIColor.green, number: "1")
    lazy var topRightView = SimpleLabelView(color: UIColor.cyan, number: "2")
    lazy var bottomLeftView = SimpleLabelView(color: UIColor.brown , number: "3")
    lazy var bottomRightView = SimpleLabelView(color: UIColor.red, number: "4")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setViewLayout()
    }

    func setUI(){
        ViewHelper.cutCorners([centerView, mainView, topLeftView, topRightView, bottomLeftView, bottomRightView])
        
        view.addSubview(mainView)
        mainView.backgroundColor = .blue
        
        mainView.addSubviews([centerView,topLeftView, topRightView, bottomRightView, bottomLeftView])
        centerView.backgroundColor = .red
       
    }
    
    func setViewLayout(){
        mainView.fillSuperview(left: 20, right: 20, top: 40, bottom: 40)
        centerView.anchorInCenter(width: 50, height: 50)
        topLeftView.anchorInCorner(.topLeft, xPad: 10, yPad: 10, width: 50, height: 50)
        topRightView.anchorInCorner(.topRight , xPad: 10, yPad: 10, width: 50, height: 50)
        bottomLeftView.anchorInCorner(.bottomLeft, xPad: 10, yPad: 10, width: 50, height: 50)
        bottomRightView.anchorInCorner(.bottomRight, xPad: 10, yPad: 10, width: 50, height: 50)
    }

}

