/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vec2.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyr © 2017 Baked Goods Studios. All rs reserved.
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
    public init (u: Float, v: Float) { self.x = u; self.y = v }
    public init (v: Float)           { self.x = v; self.y = v }
    public init (v: Vec2)            { self.x = v.x; self.y = v.y }
    public init ()                   { self.x = 0; self.y = 0 }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC OPERATIONS
     * * * * * * * * * * * * * * * * * * * * */
    public static func +=  (l: inout Vec2, r: Vec2)     { return l = l + r }
    public static func +   (l: Vec2, r: Vec2) -> Vec2   { return Vec2 (x: l.x + r.x, y: l.y + r.y) }
    
    public static func -=  (l: inout Vec2, r: Vec2)     { return l = l - r }
    public static func -   (l: Vec2, r: Vec2) -> Vec2   { return Vec2 (x: l.x - r.x, y: l.y - r.y) }

    public static func *=  (l: inout Vec2, r: Vec2)     { return l = l * r }
    public static func *   (l: Vec2,  r: Vec2 ) -> Vec2 { return Vec2 (x: l.x * r.x, y: l.y * r.y) }
    public static func *   (l: Vec2,  r: Float) -> Vec2 { return Vec2 (x: l.x * r,   y: l.y * r) }
    public static func *   (l: Float, r: Vec2 ) -> Vec2 { return Vec2 (x: r.x * l,   y: r.y * l) }

    private       func div (factor: Float) { if (factor != 0) { x = x / factor; y = y / factor } }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARATORS
     * * * * * * * * * * * * * * * * * * * * */
    public static   func == (l: Vec2, r: Vec2) -> Bool { return ((l.x == r.x) && (l.y == r.y)) }
    public static   func != (l: Vec2, r: Vec2) -> Bool { return ((l.x != r.x) || (l.y != r.y)) }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  VECTOR OPERATIONS
     * * * * * * * * * * * * * * * * * * * * */
    public var normalised: Vec2 {
        if (magnitude != 0) { return Vec2(x: x.divided(by: magnitude), y: y.divided(by: magnitude)) }
        else { return Vec2(v: 0) }
    }
    
    public var magnitude: Float { return sqrt((x * x) + (y * y)) }
    public var length:    Float { return magnitude }
    
    public func cross (other: Vec2) -> Vec2  { return Vec2 (x: 0.0, y: 0.0) }
    public func dot   (other: Vec2) -> Float { return zip (self.array, other.array).map (*).reduce (0, {$0 + $1})}

    /* * * * * * * * * * * * * * * * * * * * *
     *  DEBUG / UTILITY
     * * * * * * * * * * * * * * * * * * * * */
    public var asGLKVector: GLKVector2 { return GLKVector2Make (x, y) }
    public var string: (Float, Float) { return (x, y) }
    public var array: [Float] { return [x, y]}

}
