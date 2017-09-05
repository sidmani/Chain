// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

class UIViewChainWrapper {
    private let object: UIView

    init(_ object: UIView) {
        self.object = object
    }

    var nf: UIView {
        return object
    }


    func removeFromSuperview() -> Self {
        object.removeFromSuperview()
        return self
    }

    func insertSubview(_ view: UIView, at index: Int) -> Self {
        object.insertSubview(: viewat: index)
        return self
    }

    func exchangeSubview(at index1: Int, withSubviewAt index2: Int) -> Self {
        object.exchangeSubview(at: index1withSubviewAt: index2)
        return self
    }

    func addSubview(_ view: UIView) -> Self {
        object.addSubview(: view)
        return self
    }

    func insertSubview(_ view: UIView, belowSubview siblingSubview: UIView) -> Self {
        object.insertSubview(: viewbelowSubview: siblingSubview)
        return self
    }

    func insertSubview(_ view: UIView, aboveSubview siblingSubview: UIView) -> Self {
        object.insertSubview(: viewaboveSubview: siblingSubview)
        return self
    }

    func bringSubview(toFront view: UIView) -> Self {
        object.bringSubview(toFront: view)
        return self
    }

    func sendSubview(toBack view: UIView) -> Self {
        object.sendSubview(toBack: view)
        return self
    }

    func didAddSubview(_ subview: UIView) -> Self {
        object.didAddSubview(: subview)
        return self
    }

    func willRemoveSubview(_ subview: UIView) -> Self {
        object.willRemoveSubview(: subview)
        return self
    }

    func willMove(toSuperview newSuperview: UIView?) -> Self {
        object.willMove(toSuperview: newSuperview)
        return self
    }

    func didMoveToSuperview() -> Self {
        object.didMoveToSuperview()
        return self
    }

    func willMove(toWindow newWindow: UIWindow?) -> Self {
        object.willMove(toWindow: newWindow)
        return self
    }

    func didMoveToWindow() -> Self {
        object.didMoveToWindow()
        return self
    }

    func setNeedsLayout() -> Self {
        object.setNeedsLayout()
        return self
    }

    func layoutIfNeeded() -> Self {
        object.layoutIfNeeded()
        return self
    }

    func layerClass(_ newValue: Swift.AnyClass) -> Self {
        object.layerClass = newValue
        return self
    }

    func isUserInteractionEnabled(_ newValue: Bool) -> Self {
        object.isUserInteractionEnabled = newValue
        return self
    }

    func tag(_ newValue: Int) -> Self {
        object.tag = newValue
        return self
    }

    func layer(_ newValue: CALayer) -> Self {
        object.layer = newValue
        return self
    }

    func canBecomeFocused(_ newValue: Bool) -> Self {
        object.canBecomeFocused = newValue
        return self
    }

    func isFocused(_ newValue: Bool) -> Self {
        object.isFocused = newValue
        return self
    }

    func semanticContentAttribute(_ newValue: UISemanticContentAttribute) -> Self {
        object.semanticContentAttribute = newValue
        return self
    }

    func effectiveUserInterfaceLayoutDirection(_ newValue: UIUserInterfaceLayoutDirection) -> Self {
        object.effectiveUserInterfaceLayoutDirection = newValue
        return self
    }

    func frame(_ newValue: CGRect) -> Self {
        object.frame = newValue
        return self
    }

    func bounds(_ newValue: CGRect) -> Self {
        object.bounds = newValue
        return self
    }

    func center(_ newValue: CGPoint) -> Self {
        object.center = newValue
        return self
    }

    func transform(_ newValue: CGAffineTransform) -> Self {
        object.transform = newValue
        return self
    }

    func contentScaleFactor(_ newValue: CGFloat) -> Self {
        object.contentScaleFactor = newValue
        return self
    }

    func isMultipleTouchEnabled(_ newValue: Bool) -> Self {
        object.isMultipleTouchEnabled = newValue
        return self
    }

    func isExclusiveTouch(_ newValue: Bool) -> Self {
        object.isExclusiveTouch = newValue
        return self
    }

    func autoresizesSubviews(_ newValue: Bool) -> Self {
        object.autoresizesSubviews = newValue
        return self
    }

    func autoresizingMask(_ newValue: UIViewAutoresizing) -> Self {
        object.autoresizingMask = newValue
        return self
    }

    func superview(_ newValue: UIView?) -> Self {
        object.superview = newValue
        return self
    }

    func subviews(_ newValue: [UIView]) -> Self {
        object.subviews = newValue
        return self
    }

    func window(_ newValue: UIWindow?) -> Self {
        object.window = newValue
        return self
    }
}

extension UIView {
    var fn: UIViewChainWrapper {
        return UIViewChainWrapper(self)
    }
}
