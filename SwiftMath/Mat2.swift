//
//  Mat2.swift
//  SwiftMath
//
//  Created by Ryan Needham on 19/02/2017.
//  Copyr © 2017 Baked Goods Studios. All rs reserved.
//
public final class Mat2 : Matrix {
    
    // Initialise as Identity matrix
    private var
        x = Vec2(x: 1.0, y: 0.0),
        y = Vec2(x: 0.0, y: 1.0)
    
    public init () {}
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    public static func += (l: inout Mat2, r: Mat2) { l = l + r }
    public static func +  (l: Mat2, r: Mat2) -> Mat2 {
        let result = Mat2()
        result.x = l.x + r.x;
        result.y = l.y + r.y;
        return result
    }
    
    public static func -= (l: inout Mat2, r: Mat2) { l = l - r }
    public static func -  (l: Mat2, r: Mat2) -> Mat2 {
        let result = Mat2()
        result.x = l.x - r.x;
        result.y = l.y - r.y;
        return result
    }
    
    public static func *= (l: inout Mat2, r: Mat2) {}
    public static func *  (l: Mat2, r: Mat2) -> Mat2 {
        let result = Mat2()
        result.x = l.x * r.x;
        result.y = l.y * r.y;
        return result
    }
    
    public static func *  (l: Mat2, r: Vec2) -> Vec2 {
        return Vec2 (
            x: r.x * l.x.x,
            y: r.y * l.y.y
        )
    }
    
    public static func *  (l: Vec2, r: Mat2) -> Vec2 {
        return Vec2 (
            x: l.x * r.x.x,
            y: l.y * r.y.y
        )
    }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARISON
     * * * * * * * * * * * * * * * * * * * * */
    public static func == (l: Mat2, r: Mat2) -> Bool {
        return (l.x == r.x) && (l.y == r.y)
    }
    
    public static func != (l: Mat2, r: Mat2) -> Bool {
        return (l.x != r.x) || (l.y != r.y)
    }
}
