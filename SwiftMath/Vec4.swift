/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vec4.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyright © 2017 Baked Goods Studios. All rights reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
import Foundation

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
    public init (v: Float)                               { self.x = v; self.y = v; self.z = v; self.w = v }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    private func add (other: Vec4)                      { self.x += other.x; self.y += other.y; self.z += other.z; self.w += other.w }
    public static  func +=  (left: inout Vec4, right: Vec4)    { return left.add(other: right) }
    public static  func +   (left: Vec4, right: Vec4) -> Vec4  { return Vec4 (x: left.x + right.x, y: left.y + right.y, z: left.z + right.z, w: left.w + right.w) }

    private func sub (other: Vec4)                      { self.x -= other.x; self.y -= other.y; self.z -= other.z }
    public static  func -=  (left: inout Vec4, right: Vec4)    { return left.sub(other: right) }
    public static  func -   (left: Vec4, right: Vec4) -> Vec4  { return Vec4 (x: left.x - right.x, y: left.y - right.y, z: left.z - right.z, w: left.w - right.w) }

    private func mul (factor: Float)                    { self.x *= factor; self.y *= factor; self.z *= factor }
    private func mul (other: Vec4)                      { self.x *= other.x; self.y *= other.y; self.z *= other.z }
    public static  func *=  (left: inout Vec4, right: Vec4)    { return left.mul(other: right) }
    public static  func *   (left: Vec4, right: Vec4) -> Vec4  { return Vec4 (x: left.x * right.x, y: left.y * right.y, z: left.z * right.z, w: left.w * right.w) }

    private func div (factor: Float) { if (factor != 0) { self.x = self.x / factor; self.y = self.y / factor; self.z = self.z / factor; self.w = self.w / factor } }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  VECTOR OPERATIONS
     * * * * * * * * * * * * * * * * * * * * */
    public func normalise () -> Vec4 {
        let mag = magnitude()
        let new = Vec4(v: 0)
        if (mag != 0) {
            new.x = self.x / mag
            new.y = self.y / mag
            new.z = self.z / mag
            new.w = self.w / mag
        }
        return new
    }
    
    public func magnitude () -> Float {
        return sqrt(
            (self.x * self.x) +
            (self.y * self.y) +
            (self.z * self.z) +
            (self.w * self.w)
        )
    }
    
    // TO-DO
    public func cross (other: Vec4) -> Vec4 {
        return Vec4(
            x: 0.0,
            y: 0.0,
            z: 0.0,
            w: 0.0
        )
    }
    
    // TO-DO
    public func dot (other: Vec4) -> Float {
        return 0.0
    }
}