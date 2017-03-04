/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vec4.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyright © 2017 Baked Goods Studios. All rights reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
import Foundation
import GLKit

public final class Vec4 : Vector {
    public var x: Float = 0;
    public var y: Float = 0;
    public var z: Float = 0;
    public var w: Float = 0;
    public var r: Float { return x }
    public var g: Float { return y }
    public var b: Float { return z }
    public var a: Float { return w }
    
    public init (x: Float, y: Float, z: Float, w: Float) { self.x = x; self.y = y; self.z = z; self.w = w }
    public init (r: Float, g: Float, b: Float, a: Float) { self.x = r; self.y = g; self.z = b; self.w = a }
    public init (v: Float)                               { self.x = v; self.y = v; self.z = v; self.w = v }
    public init (v: Vec4)                                { self.x = v.x; self.y = v.y; self.z = v.z; self.w = v.w }
    public init ()                                       { self.x = 0; self.y = 0; self.z = 0; self.w = 0 }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    public static func +=  (left: inout Vec4, right: Vec4)     { return left = left + right }
    public static func +   (left: Vec4, right: Vec4) -> Vec4   { return Vec4 (x: left.x + right.x, y: left.y + right.y, z: left.z + right.z, w: left.w + right.w) }

    public static func -=  (left: inout Vec4, right: Vec4)     { return left = left - right }
    public static func -   (left: Vec4, right: Vec4) -> Vec4   { return Vec4 (x: left.x - right.x, y: left.y - right.y, z: left.z - right.z, w: left.w - right.w) }

    public static func *=  (left: inout Vec4, right: Vec4)     { return left = left * right }
    public static func *   (left: Vec4,  right: Vec4)  -> Vec4 { return Vec4 (x: left.x  * right.x, y: left.y  * right.y, z: left.z  * right.z, w: left.w  * right.w) }
    public static func *   (left: Vec4,  right: Float) -> Vec4 { return Vec4 (x: left.x  * right,   y: left.y  * right,   z: left.z  * right,   w: left.w  * right) }
    public static func *   (left: Float, right: Vec4 ) -> Vec4 { return Vec4 (x: right.x * left,    y: right.y * left,    z: right.z * left,    w: right.w * left) }
    
    private       func div (factor: Float) { if (factor != 0) { self.x = self.x / factor; self.y = self.y / factor; self.z = self.z / factor; self.w = self.w / factor } }

    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARATORS
     * * * * * * * * * * * * * * * * * * * * */
    public static func == (left: Vec4, right: Vec4) -> Bool { return ((left.x == right.x) && (left.y == right.y) && (left.z == right.z) && (left.w == right.w)) }
    public static func != (left: Vec4, right: Vec4) -> Bool { return ((left.x != right.x) || (left.y != right.y) || (left.z != right.z) || (left.w != right.w)) }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  VECTOR OPERATIONS
     * * * * * * * * * * * * * * * * * * * * */
    public var normalised: Vec4 {
        let mag = magnitude
        let new = Vec4(v: 0)
        if (mag != 0) {
            new.x = self.x.divided(by: mag)
            new.y = self.y.divided(by: mag)
            new.z = self.z.divided(by: mag)
            new.w = self.w.divided(by: mag)
        }
        return new
    }
    
    public var magnitude: Float {
        return sqrt((self.x * self.x) + (self.y * self.y) + (self.z * self.z) + (self.w * self.w))
    }
    
    public var length: Float {
        return magnitude
    }
    
    // Cross only exists on 3 and 7 dimension vectors
    public func cross (other: Vec4) -> Vec4 {
        return Vec4 (
            x: 0.0,
            y: 0.0,
            z: 0.0,
            w: 0.0
        )
    }
    
    public func dot (other: Vec4) -> Float {
        return zip  (self.array, other.array)
            .map    (*)
            .reduce (0, {$0 + $1})
    }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  DEBUG / UTILITY
     * * * * * * * * * * * * * * * * * * * * */
    public var asGLKVector: GLKVector4 { return GLKVector4Make (x, y, z, w) }
    public var string: (Float, Float, Float, Float) { return (x, y, z, w) }
    public var array: [Float] { return [self.x, self.y, self.z, self.w] }
}
