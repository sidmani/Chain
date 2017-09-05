import Foundation
import UIKit
import _SwiftUIKitOverlayShims

//
//  UIBezierPath.h
//  UIKit
//
//  Copyright (c) 2009-2017 Apple Inc. All rights reserved.
//

public struct UIRectCorner : OptionSet {

    public init(rawValue: UInt)

    
    public static var topLeft: UIRectCorner { get }

    public static var topRight: UIRectCorner { get }

    public static var bottomLeft: UIRectCorner { get }

    public static var bottomRight: UIRectCorner { get }

    public static var allCorners: UIRectCorner { get }
}

@available(iOS 3.2, *)
open class UIBezierPath : NSObject, NSCopying, NSSecureCoding {

    
    public convenience init(rect: CGRect)

    public convenience init(ovalIn rect: CGRect)

    public convenience init(roundedRect rect: CGRect, cornerRadius: CGFloat) // rounds all corners with the same horizontal and vertical radius

    public convenience init(roundedRect rect: CGRect, byRoundingCorners corners: UIRectCorner, cornerRadii: CGSize)

    public convenience init(arcCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)

    public convenience init(cgPath CGPath: CGPath)

    
    public init()

    public init?(coder aDecoder: NSCoder)

    
    // Returns an immutable CGPathRef which is only valid until the UIBezierPath is further mutated.
    // Setting the path will create an immutable copy of the provided CGPathRef, so any further mutations on a provided CGMutablePathRef will be ignored.
    open var cgPath: CGPath

    
    // Path construction
    
    open func move(to point: CGPoint)

    open func addLine(to point: CGPoint)

    open func addCurve(to endPoint: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)

    open func addQuadCurve(to endPoint: CGPoint, controlPoint: CGPoint)

    @available(iOS 4.0, *)
    open func addArc(withCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)

    open func close()

    
    open func removeAllPoints()

    
    // Appending paths
    
    open func append(_ bezierPath: UIBezierPath)

    
    // Modified paths
    
    @available(iOS 6.0, *)
    open func reversing() -> UIBezierPath

    
    // Transforming paths
    
    open func apply(_ transform: CGAffineTransform)

    
    // Path info
    
    open var isEmpty: Bool { get }

    open var bounds: CGRect { get }

    open var currentPoint: CGPoint { get }

    open func contains(_ point: CGPoint) -> Bool

    
    // Drawing properties
    
    open var lineWidth: CGFloat

    open var lineCapStyle: CGLineCap

    open var lineJoinStyle: CGLineJoin

    open var miterLimit: CGFloat // Used when lineJoinStyle is kCGLineJoinMiter

    open var flatness: CGFloat

    open var usesEvenOddFillRule: Bool // Default is NO. When YES, the even-odd fill rule is used for drawing, clipping, and hit testing.

    
    open func setLineDash(_ pattern: UnsafePointer<CGFloat>?, count: Int, phase: CGFloat)

    open func getLineDash(_ pattern: UnsafeMutablePointer<CGFloat>?, count: UnsafeMutablePointer<Int>?, phase: UnsafeMutablePointer<CGFloat>?)

    
    // Path operations on the current graphics context
    
    open func fill()

    open func stroke()

    
    // These methods do not affect the blend mode or alpha of the current graphics context
    open func fill(with blendMode: CGBlendMode, alpha: CGFloat)

    open func stroke(with blendMode: CGBlendMode, alpha: CGFloat)

    
    open func addClip()
}

