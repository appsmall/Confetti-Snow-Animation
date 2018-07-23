//
//  Emitter.swift
//  SnowAnimation
//
//  Created by Shashank Panwar on 11/07/18.
//  Copyright © 2018 Rahul Chopra. All rights reserved.
//

import UIKit

class Emitter {
    
    static func get(with image: UIImage) -> CAEmitterLayer {
        let emitter = CAEmitterLayer()
        emitter.emitterShape = kCAEmitterLayerLine
        emitter.emitterCells = generateEmitterCells(with: image)
        return emitter
    }
    
    static func generateEmitterCells(with image: UIImage) -> [CAEmitterCell] {
        var cells = [CAEmitterCell]()
        
        let cell = CAEmitterCell()
        cell.contents = image.cgImage
        cell.birthRate = 1
        cell.lifetime = 50
        cell.velocity = CGFloat(25)
        cell.emissionLongitude = (180 * (.pi/180))
        cell.emissionRange = (45 * (.pi/180))
//        cell.spin = 2
//        cell.spinRange = 3
        cell.scale = 0.3
        cell.scaleRange = 0.5
//        cell.repeatCount = 0.5
//        cell.alphaSpeed = 1.0
        cell.autoreverses = true
        cell.beginTime = 50
        cells.append(cell)
        return cells
    }
    
    
    
    
    
    
    
}
