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
    
    // Alias
    public func r () -> Float { return x }
    public func g () -> Float { return y }
    public func b () -> Float { return z }
    public func a () -> Float { return w }
    
    public init (x: Float, y: Float, z: Float, w: Float) { self.x = x; self.y = y; self.z = z; self.w = w }
    public init (r: Float, g: Float, b: Float, a: Float) { self.x = r; self.y = g; self.z = b; self.w = a }
    public init (v: Float)                               { self.x = v; self.y = v; self.z = v; self.w = v }
    public init (v: Vec4)                                { self.x = v.x; self.y = v.y; self.z = v.z; self.w = v.w }
    public init ()                                       { self.x = 0; self.y = 0; self.z = 0; self.w = 0 }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    private        func add (other: Vec4)                      { self.x += other.x; self.y += other.y; self.z += other.z; self.w += other.w }
    public static  func +=  (left: inout Vec4, right: Vec4)    { return left.add(other: right) }
    public static  func +   (left: Vec4, right: Vec4) -> Vec4  { return Vec4 (x: left.x + right.x, y: left.y + right.y, z: left.z + right.z, w: left.w + right.w) }

    private        func sub (other: Vec4)                      { self.x -= other.x; self.y -= other.y; self.z -= other.z }
    public static  func -=  (left: inout Vec4, right: Vec4)    { return left.sub(other: right) }
    public static  func -   (left: Vec4, right: Vec4) -> Vec4  { return Vec4 (x: left.x - right.x, y: left.y - right.y, z: left.z - right.z, w: left.w - right.w) }

    private        func mul (factor: Float)                    { self.x *= factor; self.y *= factor; self.z *= factor }
    private        func mul (other: Vec4)                      { self.x *= other.x; self.y *= other.y; self.z *= other.z }
    public static  func *=  (left: inout Vec4, right: Vec4)    { return left.mul(other: right) }
    public static  func *   (left: Vec4, right: Vec4) -> Vec4  { return Vec4 (x: left.x * right.x, y: left.y * right.y, z: left.z * right.z, w: left.w * right.w) }

    private        func div (factor: Float) { if (factor != 0) { self.x = self.x / factor; self.y = self.y / factor; self.z = self.z / factor; self.w = self.w / factor } }

    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARATORS
     * * * * * * * * * * * * * * * * * * * * */
    public static  func == (left: Vec4, right: Vec4) -> Bool { return ((left.x == right.x) && (left.y == right.y) && (left.z == right.z) && (left.w == right.w)) }
    public static  func != (left: Vec4, right: Vec4) -> Bool { return ((left.x != right.x) || (left.y != right.y) || (left.z != right.z) || (left.w != right.w)) }
    
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
        return sqrt(
            (self.x * self.x) + (self.y * self.y) + (self.z * self.z)
        )
    }
    
    // TO-DO
    public func cross (other: Vec4) -> Vec4 {
        return Vec3 (
            x: 0.0,
            y: 0.0,
            z: 0.0
        )
    }
    
    // TO-DO
    public func dot (other: Vec4) -> Float {
        return 0.0
    }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  DEBUG / UTILITY
     * * * * * * * * * * * * * * * * * * * * */
    public var asGLKVector: GLKVector4 { return GLKVector4Make (x, y, z, w) }
    public var string: (Float, Float, Float, Float) { return (x, y, z, w) }
}
