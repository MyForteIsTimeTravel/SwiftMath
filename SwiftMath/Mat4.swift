/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  Vec2.swift
 *
 *  Created by Ryan Needham on 14/02/2017.
 *  Copyr © 2017 Baked Goods Studios. All rs reserved.
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public final class Mat4 : Matrix {
    
    // Initialise as Identity matrix
    private var
        x = Vec4(x: 1.0, y: 0.0, z: 0.0, w: 0.0),
        y = Vec4(x: 0.0, y: 1.0, z: 0.0, w: 0.0),
        z = Vec4(x: 0.0, y: 0.0, z: 1.0, w: 0.0),
        w = Vec4(x: 0.0, y: 0.0, z: 0.0, w: 1.0);
    
    public init () {}
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  ARITHMETIC
     * * * * * * * * * * * * * * * * * * * * */
    public static func += (l: inout Mat4, r: Mat4) { l = l + r }
    public static func +  (l: Mat4, r: Mat4) -> Mat4 {
        let result = Mat4()
        result.x = l.x + r.x;
        result.y = l.y + r.y;
        result.z = l.z + r.z;
        result.w = l.w + r.w;
        return result
    }
    
    public static func -= (l: inout Mat4, r: Mat4) { l = l - r }
    public static func -  (l: Mat4, r: Mat4) -> Mat4 {
        let result = Mat4()
        result.x = l.x - r.x;
        result.y = l.y - r.y;
        result.z = l.z - r.z;
        result.w = l.w - r.w;
        return result
    }
    
    public static func *= (l: inout Mat4, r: Mat4) {}
    public static func *  (l: Mat4, r: Mat4) -> Mat4 {
        let result = Mat4()
        result.x = l.x * r.x;
        result.y = l.y * r.y;
        result.z = l.z * r.z;
        result.w = l.w * r.w;
        return result
    }
    
    public static func *  (l: Mat4, r: Vec4) -> Vec4 {
        return Vec4 (
            x: r.x * l.x.x,
            y: r.y * l.y.y,
            z: r.z * l.z.z,
            w: r.w * l.w.w
        )
    }
    
    public static func *  (l: Vec4, r: Mat4) -> Vec4 {
        return Vec4 (
            x: l.x * r.x.x,
            y: l.y * r.y.y,
            z: l.z * r.z.z,
            w: l.w * r.w.w
        )
    }
    
    /* * * * * * * * * * * * * * * * * * * * *
     *  COMPARISON
     * * * * * * * * * * * * * * * * * * * * */
    public static func == (l: Mat4, r: Mat4) -> Bool {
        return
            (l.x == r.x) &&
            (l.y == r.y) &&
            (l.z == r.z) &&
            (l.w == r.w)
    }
    
    public static func != (l: Mat4, r: Mat4) -> Bool {
        return
            (l.x != r.x) ||
            (l.y != r.y) ||
            (l.z != r.z) ||
            (l.w != r.w)
    }
}
