//
//  ViewController.swift
//  SnowAnimation
//
//  Created by Shashank Panwar on 11/07/18.
//  Copyright © 2018 Rahul Chopra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        snowBalls()
    }

    func snowBalls() {
        let emitter = Emitter.get(with: UIImage(named: "ball")!)
        emitter.emitterPosition = CGPoint(x: view.frame.width / 2, y: 0)
        emitter.emitterSize = CGSize(width: view.frame.width, height: 2)
        
        view.layer.addSublayer(emitter)
    }


}

