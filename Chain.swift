// Chain.swift
protocol ChainWrappedType { }

class ChainWrapper<T> where T: ChainWrappedType {
    let object: T
    init(_ object: T) {
        self.object = object
    }

    var nf: T {
        return object
    }
}

extension UIKit.UIView: ChainWrappedType { }
extension UIKit.UIBezierPath: ChainWrappedType { }
extension QuartzCore.CALayer: ChainWrappedType { }
extension QuartzCore.CAShapeLayer: ChainWrappedType { }
// for example: extension UIKit.UIView: ChainWrappedType { }
