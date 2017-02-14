/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vec2.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyright © 2017 Baked Goods Studios. All rights reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
import Foundation

public final class Vec2 : Vector {
    public var x: Float = 0;
    public var y: Float = 0;
    
    // Alias
    public func r () -> Float { return x }
    public func g () -> Float { return y }
    
    public init (x: Float, y: Float) { self.x = x; self.y = y }
    public init (v: Float)           { self.x = v; self.y = v }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC OPERATIONS
     * * * * * * * * * * * * * * * * * * * * */
    private        func add (other: Vec2)                      { self.x += other.x; self.y += other.y }
    public  static func +=  (left: inout Vec2, right: Vec2)    { return left.add(other: right) }
    public  static func +   (left: Vec2, right: Vec2) -> Vec2  { return Vec2 (x: left.x + right.x, y: left.y + right.y) }
    
    private        func sub (other: Vec2)                      { self.x -= other.x; self.y -= other.y }
    public static  func -=  (left: inout Vec2, right: Vec2)    { return left.sub(other: right) }
    public static  func -   (left: Vec2, right: Vec2) -> Vec2  { return Vec2 (x: left.x - right.x, y: left.y - right.y) }

    private        func mul (factor: Float)                    { self.x *= factor; self.y *= factor }
    private        func mul (other: Vec2)                      { self.x *= other.x; self.y *= other.y }
    public static  func *=  (left: inout Vec2, right: Vec2)    { return left.mul(other: right) }
    public static  func *   (left: Vec2, right: Vec2) -> Vec2  { return Vec2 (x: left.x * right.x, y: left.y * right.y) }

    private        func div (factor: Float) { if (factor != 0) { self.x = self.x / factor; self.y = self.y / factor } }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARATORS
     * * * * * * * * * * * * * * * * * * * * */
    public static   func == (left: Vec2, right: Vec2) -> Bool { return ((left.x == right.x) && (left.y == right.y)) }
    public static   func != (left: Vec2, right: Vec2) -> Bool { return ((left.x != right.x) || (left.y != right.y)) }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  VECTOR OPERATIONS
     * * * * * * * * * * * * * * * * * * * * */
    public func normalise () -> Vec2 {
        let mag = magnitude()
        let new = Vec2(v: 0)
        if (mag != 0) {
            new.x = self.x / mag
            new.y = self.y / mag
        }
        return new
    }
    
    public func magnitude () -> Float {
        return sqrt(
            (self.x * self.x) +
            (self.y * self.y)
        )
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
}
