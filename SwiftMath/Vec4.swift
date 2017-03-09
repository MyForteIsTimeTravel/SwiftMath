/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vec4.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyr © 2017 Baked Goods Studios. All rs reserved.
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
    
    public init (x: Float, y: Float, z: Float, w: Float) { self.x = x;   self.y = y;   self.z = z;   self.w = w }
    public init (r: Float, g: Float, b: Float, a: Float) { self.x = r;   self.y = g;   self.z = b;   self.w = a }
    public init (v: Float)                               { self.x = v;   self.y = v;   self.z = v;   self.w = v }
    public init (v: Vec4)                                { self.x = v.x; self.y = v.y; self.z = v.z; self.w = v.w }
    public init ()                                       { self.x = 0;   self.y = 0;   self.z = 0;   self.w = 0 }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    public static func +=  (l: inout Vec4, r: Vec4)     { return l = l + r }
    public static func +   (l: Vec4, r: Vec4) -> Vec4   { return Vec4 (x: l.x + r.x, y: l.y + r.y, z: l.z + r.z, w: l.w + r.w) }

    public static func -=  (l: inout Vec4, r: Vec4)     { return l = l - r }
    public static func -   (l: Vec4, r: Vec4) -> Vec4   { return Vec4 (x: l.x - r.x, y: l.y - r.y, z: l.z - r.z, w: l.w - r.w) }

    public static func *=  (l: inout Vec4, r: Vec4)     { return l = l * r }
    public static func *   (l: Vec4,  r: Vec4)  -> Vec4 { return Vec4 (x: l.x * r.x, y: l.y * r.y, z: l.z * r.z, w: l.w * r.w) }
    public static func *   (l: Vec4,  r: Float) -> Vec4 { return Vec4 (x: l.x * r,   y: l.y * r,   z: l.z * r,   w: l.w * r) }
    public static func *   (l: Float, r: Vec4 ) -> Vec4 { return Vec4 (x: r.x * l,   y: r.y * l,   z: r.z * l,   w: r.w * l) }
    
    private       func div (factor: Float) { if (factor != 0) { x = x / factor; y = y / factor; z = z / factor; w = w / factor } }

    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARATORS
     * * * * * * * * * * * * * * * * * * * * */
    public static func == (l: Vec4, r: Vec4) -> Bool { return ((l.x == r.x) && (l.y == r.y) && (l.z == r.z) && (l.w == r.w)) }
    public static func != (l: Vec4, r: Vec4) -> Bool { return ((l.x != r.x) || (l.y != r.y) || (l.z != r.z) || (l.w != r.w)) }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  VECTOR OPERATIONS
     * * * * * * * * * * * * * * * * * * * * */
    public var normalised: Vec4 {
        if (magnitude != 0) {
            return Vec4(
                x: self.x.divided(by: magnitude),
                y: self.y.divided(by: magnitude),
                z: self.z.divided(by: magnitude),
                w: self.w.divided(by: magnitude)
            )
        } else {
            return Vec4(v: 0)
        }
    }
    
    public var magnitude: Float {
        return sqrt((x * x) + (y * y) + (z * z) + (w * w))
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
    public var array: [Float] { return [x, y, z, w] }
}
