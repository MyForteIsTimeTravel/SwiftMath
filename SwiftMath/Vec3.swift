/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vec3.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyr © 2017 Baked Goods Studios. All rs reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
import Foundation
import GLKit

public final class Vec3 : Vector {
    public var x: Float = 0;
    public var y: Float = 0;
    public var z: Float = 0;
    public var r: Float { return x }
    public var g: Float { return y }
    public var b: Float { return z }
    
    public init (x: Float, y: Float, z: Float) { self.x = x; self.y = y; self.z = z }
    public init (r: Float, g: Float, b: Float) { self.x = r; self.y = g; self.z = b }
    public init (v: Float)                     { self.x = v; self.y = v; self.z = v }
    public init (v: Vec3)                      { self.x = v.x; self.y = v.y; self.z = v.z }
    public init ()                             { self.x = 0; self.y = 0; self.z = 0 }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    public static func +=  (l: inout Vec3, r: Vec3)     { return l = l + r }
    public static func +   (l: Vec3, r: Vec3) -> Vec3   { return Vec3 (x: l.x + r.x, y: l.y + r.y, z: l.z + r.z) }

    public static func -=  (l: inout Vec3, r: Vec3)     { return l = l - r }
    public static func -   (l: Vec3, r: Vec3) -> Vec3   { return Vec3 (x: l.x - r.x, y: l.y - r.y, z: l.z - r.z) }
    
    public static func *=  (l: inout Vec3, r: Vec3)     { return l = l * r }
    public static func *   (l: Vec3,  r: Vec3)  -> Vec3 { return Vec3 (x: l.x * r.x, y: l.y * r.y, z: l.z * r.z) }
    public static func *   (l: Vec3,  r: Float) -> Vec3 { return Vec3 (x: l.x * r,   y: l.y * r,   z: l.z * r) }
    public static func *   (l: Float, r: Vec3 ) -> Vec3 { return Vec3 (x: r.x * l,   y: r.y * l,   z: r.z * l) }

    private       func div (factor: Float) { if (factor != 0) { x = x / factor; y = y / factor; z = z / factor } }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARATORS
     * * * * * * * * * * * * * * * * * * * * */
    public static func == (l: Vec3, r: Vec3) -> Bool { return ((l.x == r.x) && (l.y == r.y) && (l.z == r.z)) }
    public static func != (l: Vec3, r: Vec3) -> Bool { return ((l.x != r.x) || (l.y != r.y) || (l.z != r.z)) }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  VECTOR OPERATIONS
     * * * * * * * * * * * * * * * * * * * * */
    public var normalised: Vec3 {
        if (magnitude != 0) {
            return Vec3(
                x: x.divided(by: magnitude),
                y: y.divided(by: magnitude),
                z: z.divided(by: magnitude)
            )
        } else {
            return Vec3(v: 0)
        }
    }
    
    public var magnitude: Float {
        return sqrt((x * x) + (y * y) + (z * z))
    }
    
    public var length: Float {
        return magnitude
    }

    public func cross (other: Vec3) -> Vec3 {
        return Vec3 (
            x: (self.y * other.z) - (other.y * self.z),
            y: (self.z * other.x) - (other.z * self.x),
            z: (self.x * other.y) - (other.x * self.y)
        )
    }
    
    public func dot (other: Vec3) -> Float {
        return zip  (self.array, other.array)
            .map    (*)
            .reduce (0, {$0 + $1})
    }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  DEBUG / UTILITY
     * * * * * * * * * * * * * * * * * * * * */
    public var asGLKVector: GLKVector3 { return GLKVector3Make (x, y, z) }
    public var string: (Float, Float, Float) { return (x, y, z) }
    public var array: [Float] { return [x, y, z] }
    
}
