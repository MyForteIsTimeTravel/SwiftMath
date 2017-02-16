//
//  Random.swift
//  SwiftMath
//
//  Created by Ryan Needham on 14/02/2017.
//  Copyright © 2017 Baked Goods Studios. All rights reserved.
//

import Foundation

public final class Random {
    public init () { }
    
    public func getBasicInt (roof: Int) -> Int {
        return Int(arc4random_uniform(UInt32(roof)))
    }
    
    public func getBasicFloat () -> Float {
        return Float(Float(arc4random()) / Float(UINT32_MAX))
    }
    
    public func getUnsignedBasicFloat () -> Float {
        var ting = Float(Float(arc4random()) / Float(UINT32_MAX))
        if (arc4random_uniform(100) > 50) { ting *= -1 }
        return ting
    }
}
