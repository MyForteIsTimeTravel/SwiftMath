/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vector.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyr © 2017 Baked Goods Studios. All rs reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
import GLKit

protocol Vector {

    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    static func += (l: inout Self, r: Self)
    static func *= (l: inout Self, r: Self)
    static func -= (l: inout Self, r: Self)
    
    static func +  (l: Self,  r: Self)  -> Self
    static func -  (l: Self,  r: Self)  -> Self
    static func *  (l: Self,  r: Self)  -> Self
    static func *  (l: Self,  r: Float) -> Self
    static func *  (l: Float, r: Self)  -> Self
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARISON
     * * * * * * * * * * * * * * * * * * * * */
    static func == (l: Self, r: Self) -> Bool
    static func != (l: Self, r: Self) -> Bool

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
