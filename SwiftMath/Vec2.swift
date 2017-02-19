/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vec2.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyright © 2017 Baked Goods Studios. All rights reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
import Foundation
import GLKit

public final class Vec2 : Vector {
    public var x: Float = 0;
    public var y: Float = 0;
    public var r: Float { return x }
    public var g: Float { return y }
    public var u: Float { return x }
    public var v: Float { return y }
    
    public init (x: Float, y: Float) { self.x = x; self.y = y }
    public init (r: Float, g: Float) { self.x = r; self.y = g }
    public init (u: Float, v: Float) { self.x = r; self.y = g }
    public init (v: Float)           { self.x = v; self.y = v }
    public init (v: Vec2)            { self.x = v.x; self.y = v.y }
    public init ()                   { self.x = 0; self.y = 0 }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC OPERATIONS
     * * * * * * * * * * * * * * * * * * * * */
    public  static func +=  (left: inout Vec2, right: Vec2)    { return left = left + right }
    public  static func +   (left: Vec2, right: Vec2) -> Vec2  { return Vec2 (x: left.x + right.x, y: left.y + right.y) }
    
    public static  func -=  (left: inout Vec2, right: Vec2)    { return left = left - right }
    public static  func -   (left: Vec2, right: Vec2) -> Vec2  { return Vec2 (x: left.x - right.x, y: left.y - right.y) }

    public static  func *=  (left: inout Vec2, right: Vec2)     { return left = left * right }
    public static  func *   (left: Vec2,  right: Vec2 ) -> Vec2 { return Vec2 (x: left.x * right.x, y: left.y * right.y) }
    public static  func *   (left: Vec2,  right: Float) -> Vec2 { return Vec2 (x: left.x * right, y: left.y * right) }
    public static  func *   (left: Float, right: Vec2 ) -> Vec2 { return Vec2 (x: right.x * left, y: right.y * left) }

    private        func div (factor: Float) { if (factor != 0) { self.x = self.x / factor; self.y = self.y / factor } }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARATORS
     * * * * * * * * * * * * * * * * * * * * */
    public static   func == (left: Vec2, right: Vec2) -> Bool { return ((left.x == right.x) && (left.y == right.y)) }
    public static   func != (left: Vec2, right: Vec2) -> Bool { return ((left.x != right.x) || (left.y != right.y)) }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  VECTOR OPERATIONS
     * * * * * * * * * * * * * * * * * * * * */
    public var normalised: Vec2 {
        let mag = magnitude
        let new = Vec2(v: 0)
        if (mag != 0) {
            new.x = self.x.divided(by: mag)
            new.y = self.y.divided(by: mag)
        }
        return new
    }
    
    public var magnitude: Float {
        return sqrt((self.x * self.x) + (self.y * self.y))
    }
    
    public var length: Float {
        return magnitude
    }
    
    // TO-DO
    public func cross (other: Vec2) -> Vec2 {
        return Vec2 (
            x: 0.0,
            y: 0.0
        )
    }
    
    // TO-DO
    public func dot (other: Vec2) -> Float {
        return 0.0
    }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  DEBUG / UTILITY
     * * * * * * * * * * * * * * * * * * * * */
    public var asGLKVector: GLKVector2 { return GLKVector2Make (x, y) }
    public var string: (Float, Float) { return (x, y) }
}
