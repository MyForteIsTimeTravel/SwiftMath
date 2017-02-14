/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vector.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyright © 2017 Baked Goods Studios. All rights reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
protocol Vector {
    static func += (left: inout Self, right: Self)
    static func +  (left: Self, right: Self) -> Self
    
    static func -= (left: inout Self, right: Self)
    static func -  (left: Self, right: Self) -> Self
    
    static func *= (left: inout Self, right: Self)
    static func *  (left: Self, right: Self) -> Self
}
