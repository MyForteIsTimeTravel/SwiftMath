/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vector.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyright © 2017 Baked Goods Studios. All rights reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
import GLKit

protocol Vector {

    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    static func += (left: inout Self, right: Self)
    static func *= (left: inout Self, right: Self)
    static func -= (left: inout Self, right: Self)
    
    static func +  (left: Self,  right: Self)  -> Self
    static func -  (left: Self,  right: Self)  -> Self
    static func *  (left: Self,  right: Self)  -> Self
    static func *  (left: Self,  right: Float) -> Self
    static func *  (left: Float, right: Self)  -> Self
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARISON
     * * * * * * * * * * * * * * * * * * * * */
    static func == (left: Self, right: Self) -> Bool
    static func != (left: Self, right: Self) -> Bool

    /* * * * * * * * * * * * * * * * * * * * *
     *  CUSTOM / OTHER
     *  note: Cross only exists on 3 and 7 dimension vectors
     * * * * * * * * * * * * * * * * * * * * */
    func dot   (other: Self) -> Float
    func cross (other: Self) -> Self
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  DEBUG / UTIL
     * * * * * * * * * * * * * * * * * * * * */
    // as GLK Vector
    // as String
    // as Array
}
