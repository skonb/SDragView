//
//  ViewController.swift
//  SDragView
//
//  Created by Admin on 9/20/17.
//  Copyright © 2017 V3Cube. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(true)
        
        let dragView = SDragView(dragViewAnimatedTopSpace:25, viewDefaultHeightConstant:40)
        //dragView.viewBackgroundColor = UIColor.red
        
        let subview = UILabel.init(frame: CGRect(x: 0, y:80 , width: dragView.frame.size.width , height: 80))
        subview.text = "Hello"
        subview.textAlignment = .center
        subview.textColor = UIColor.white
        subview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        subview.font = UIFont.boldSystemFont(ofSize: 20)
        dragView.addSubview(subview)
        
        self.view.addSubview(dragView)
        
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

