//
//  Mat3.swift
//  SwiftMath
//
//  Created by Ryan Needham on 19/02/2017.
//  Copyr © 2017 Baked Goods Studios. All rs reserved.
//
public final class Mat3 : Matrix {
    
    // Initialise as Identity matrix
    private var
        x = Vec3(x: 1.0, y: 0.0, z: 0.0),
        y = Vec3(x: 0.0, y: 1.0, z: 0.0),
        z = Vec3(x: 0.0, y: 0.0, z: 1.0);
    
    public init () {}
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    public static func += (l: inout Mat3, r: Mat3) { l = l + r }
    public static func +  (l: Mat3, r: Mat3) -> Mat3 {
        let result = Mat3()
        result.x = l.x + r.x;
        result.y = l.y + r.y;
        result.z = l.z + r.z;
        return result
    }
    
    public static func -= (l: inout Mat3, r: Mat3) { l = l - r }
    public static func -  (l: Mat3, r: Mat3) -> Mat3 {
        let result = Mat3()
        result.x = l.x - r.x;
        result.y = l.y - r.y;
        result.z = l.z - r.z;
        return result
    }
    
    public static func *= (l: inout Mat3, r: Mat3) {}
    public static func *  (l: Mat3, r: Mat3) -> Mat3 {
        let result = Mat3()
        result.x = l.x * r.x;
        result.y = l.y * r.y;
        result.z = l.z * r.z;
        return result
    }
    
    public static func *  (l: Mat3, r: Vec3) -> Vec3 {
        return Vec3 (
            x: r.x * l.x.x,
            y: r.y * l.y.y,
            z: r.z * l.z.z
        )
    }
    
    public static func *  (l: Vec3, r: Mat3) -> Vec3 {
        return Vec3 (
            x: l.x * r.x.x,
            y: l.y * r.y.y,
            z: l.z * r.z.z
        )
    }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARISON
     * * * * * * * * * * * * * * * * * * * * */
    public static func == (l: Mat3, r: Mat3) -> Bool {
        return (l.x == r.x) && (l.y == r.y) && (l.z == r.z)
    }
    
    public static func != (l: Mat3, r: Mat3) -> Bool {
        return (l.x != r.x) || (l.y != r.y) || (l.z != r.z)
    }
}
