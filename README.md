# CoreGraphicsSwagger - DEPRECATED

Extensions to CoreGraphics for Swift


### Point, Size and Rect arithmetic operators

- `CGPoint` addition, subtraction, scalar multiplication, negation and absolute value
- `CGSize` addition, subtraction, scalar multiplication, negation and absolute value
- `CGRect` union and `CGPoint` containment


### Convenience type and type aliases for line dashes

```swift
typealias CGLineDashPhase = CGFloat
typealias CGLineDashPatternLength = CGFloat
typealias CGLineDashPattern = [CGLineDashPatternLength]

struct CGLineDash {
    let phase: CGLineDashPhase
    let pattern: CGLineDashPattern
}
```
