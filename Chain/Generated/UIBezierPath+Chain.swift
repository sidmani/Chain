// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

class UIBezierPathChainWrapper {
    private let object: UIBezierPath

    init(_ object: UIBezierPath) {
        self.object = object
    }

    var nf: UIBezierPath {
        return object
    }


    func move(to point: CGPoint) -> Self {
        object.move(to: point)
        return self
    }

    func addLine(to point: CGPoint) -> Self {
        object.addLine(to: point)
        return self
    }

    func addCurve(to endPoint: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint) -> Self {
        object.addCurve(to: endPointcontrolPoint1: controlPoint1controlPoint2: controlPoint2)
        return self
    }

    func addQuadCurve(to endPoint: CGPoint, controlPoint: CGPoint) -> Self {
        object.addQuadCurve(to: endPointcontrolPoint: controlPoint)
        return self
    }

    func addArc(withCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool) -> Self {
        object.addArc(withCenter: centerradius: radiusstartAngle: startAngleendAngle: endAngleclockwise: clockwise)
        return self
    }

    func close() -> Self {
        object.close()
        return self
    }

    func removeAllPoints() -> Self {
        object.removeAllPoints()
        return self
    }

    func append(_ bezierPath: UIBezierPath) -> Self {
        object.append(: bezierPath)
        return self
    }

    func apply(_ transform: CGAffineTransform) -> Self {
        object.apply(: transform)
        return self
    }

    func setLineDash(_ pattern: UnsafePointer<CGFloat>?, count: Int, phase: CGFloat) -> Self {
        object.setLineDash(: patterncount: countphase: phase)
        return self
    }

    func getLineDash(_ pattern: UnsafeMutablePointer<CGFloat>?, count: UnsafeMutablePointer<Int>?, phase: UnsafeMutablePointer<CGFloat>?) -> Self {
        object.getLineDash(: patterncount: countphase: phase)
        return self
    }

    func fill() -> Self {
        object.fill()
        return self
    }

    func stroke() -> Self {
        object.stroke()
        return self
    }

    func fill(with blendMode: CGBlendMode, alpha: CGFloat) -> Self {
        object.fill(with: blendModealpha: alpha)
        return self
    }

    func stroke(with blendMode: CGBlendMode, alpha: CGFloat) -> Self {
        object.stroke(with: blendModealpha: alpha)
        return self
    }

    func addClip() -> Self {
        object.addClip()
        return self
    }

    func cgPath(_ newValue: CGPath) -> Self {
        object.cgPath = newValue
        return self
    }

    func isEmpty(_ newValue: Bool) -> Self {
        object.isEmpty = newValue
        return self
    }

    func bounds(_ newValue: CGRect) -> Self {
        object.bounds = newValue
        return self
    }

    func currentPoint(_ newValue: CGPoint) -> Self {
        object.currentPoint = newValue
        return self
    }

    func lineWidth(_ newValue: CGFloat) -> Self {
        object.lineWidth = newValue
        return self
    }

    func lineCapStyle(_ newValue: CGLineCap) -> Self {
        object.lineCapStyle = newValue
        return self
    }

    func lineJoinStyle(_ newValue: CGLineJoin) -> Self {
        object.lineJoinStyle = newValue
        return self
    }

    func miterLimit(_ newValue: CGFloat) -> Self {
        object.miterLimit = newValue
        return self
    }

    func flatness(_ newValue: CGFloat) -> Self {
        object.flatness = newValue
        return self
    }

    func usesEvenOddFillRule(_ newValue: Bool) -> Self {
        object.usesEvenOddFillRule = newValue
        return self
    }
}

extension UIBezierPath {
    var fn: UIBezierPathChainWrapper {
        return UIBezierPathChainWrapper(self)
    }
}
