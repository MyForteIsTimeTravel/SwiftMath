/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vec3.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyright © 2017 Baked Goods Studios. All rights reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
import Foundation

public final class Vec3 : Vector {
    public var x: Float = 0;
    public var y: Float = 0;
    public var z: Float = 0;
    
    // Alias
    public func r () -> Float { return x }
    public func g () -> Float { return y }
    public func b () -> Float { return z }
    
    public init (x: Float, y: Float, z: Float) { self.x = x; self.y = y; self.z = z }
    public init (v: Float)                     { self.x = v; self.y = v; self.z = v }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    private func add (other: Vec3)                      { self.x += other.x; self.y += other.y; self.z += other.z }
    public static  func +=  (left: inout Vec3, right: Vec3)    { return left.add(other: right) }
    public static  func +   (left: Vec3, right: Vec3) -> Vec3  { return Vec3 (x: left.x + right.x, y: left.y + right.y, z: left.z + right.z) }

    private func sub (other: Vec3)                      { self.x -= other.x; self.y -= other.y; self.z -= other.z }
    public static  func -=  (left: inout Vec3, right: Vec3)    { return left.sub(other: right) }
    public static  func -   (left: Vec3, right: Vec3) -> Vec3  { return Vec3 (x: left.x - right.x, y: left.y - right.y, z: left.z - right.z) }

    private func mul (factor: Float)                    { self.x *= factor; self.y *= factor; self.z *= factor }
    private func mul (other: Vec3)                      { self.x *= other.x; self.y *= other.y; self.z *= other.z }
    public static  func *=  (left: inout Vec3, right: Vec3)    { return left.mul(other: right) }
    public static  func *   (left: Vec3, right: Vec3) -> Vec3  { return Vec3 (x: left.x * right.x, y: left.y * right.y, z: left.z * right.z) }

    private func div (factor: Float) { if (factor != 0) { self.x = self.x / factor; self.y = self.y / factor; self.z = self.z / factor } }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  VECTOR OPERATIONS
     * * * * * * * * * * * * * * * * * * * * */
    public func normalise () -> Vec3 {
        let mag = magnitude()
        let new = Vec3(v: 0)
        if (mag != 0) {
            new.x = self.x / mag
            new.y = self.y / mag
            new.z = self.z / mag
        }
        return new
    }
    
    public func magnitude () -> Float {
        return sqrt(
            (self.x * self.x) +
            (self.y * self.y) +
            (self.z * self.z)
        )
    }
    
    // TO-DO
    public func cross (other: Vec3) -> Vec3 {
        return Vec3 (
            x: 0.0,
            y: 0.0,
            z: 0.0
        )
    }
    
    // TO-DO
    public func dot (other: Vec3) -> Float {
        return 0.0
    }
}