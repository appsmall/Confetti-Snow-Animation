//
//  ConfettiViewController.swift
//  SnowAnimation
//
//  Created by Shashank Panwar on 11/07/18.
//  Copyright © 2018 Rahul Chopra. All rights reserved.
//

import UIKit

class ConfettiViewController: UIViewController {
    
    let dimension = 4
    var velocities = [50, 100, 150, 200]
    var imagesNames = ["triangle", "square", "spiral", "dollar"]
    var colors: [UIColor] = [.red, .green, .blue, .magenta]
    
    var randomNumber: Int {
        return Int(arc4random_uniform(UInt32(dimension)))
    }
    
    var randomVelocity: Int {
        return velocities[randomNumber]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let emitter = CAEmitterLayer()
        emitter.emitterPosition = CGPoint(x: view.frame.width / 2, y: 0)
        emitter.emitterSize = CGSize(width: view.frame.width, height: 2)
        emitter.emitterShape = kCAEmitterLayerLine
        emitter.emitterCells = generateConfettiEmitterCell()
        self.view.layer.addSublayer(emitter)
    }
    
    
    
    func generateConfettiEmitterCell() -> [CAEmitterCell] {
        
        var cells = [CAEmitterCell]()
        
        for index in 0..<10 {
            let cell = CAEmitterCell()
            cell.color = nextColor(i: index)
            cell.contents = nextImage(i: index)
            cell.birthRate = 5
            cell.lifetime = 50
            cell.scale = 0.2
            cell.scaleRange = 0.1
            cell.velocity = CGFloat(120)
            cell.emissionLongitude = (180 * (.pi/180))
            cell.emissionRange = (45 * (.pi/180))
            cell.spin = 3
            
            cells.append(cell)
        }
        
        return cells
    }
    
    func nextColor(i: Int) -> CGColor {
        return colors[i % dimension].cgColor
    }
    
    func nextImage(i: Int) -> CGImage {
        let image = UIImage(named: imagesNames[i % dimension])
        return (image?.cgImage)!
    }

}
