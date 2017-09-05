# Chain

Make this:
```
let path = UIBezierPath()
path.move(to: .zero)
path.addLine(to: CGPoint(x: 5, y: 5))
path.close()
return path
```
into this:
```
let path = UIBezierPath().fn
    .move(to: .zero)
    .addLine(to: CGPoint(x: 5, y: 5)
    .close().nf
```
Chain will automatically (using Sourcery) wrap all instance methods with `Void` return types and all variables with accessible setters.

## Requirements
Install [Sourcery](https://github.com/krzysztofzablocki/Sourcery) and [SourceKitten](https://github.com/jpsim/SourceKitten/) in some place where your shell can find them.

## Installation
Copy the main directory into your project.

## Usage
Make the types you want wrapped conform to ChainWrappedType, e.g.
`extension UIKit.UIBezierPath: ChainWrappedType`
Note that you will probably have to include the module name (UIKit in this case) in order to keep SourceKit happy.
Run `generate.sh` from the main directory and it'll create the wrappers in a new folder called `Generated/`. Add those files to your targets and remember to re-run `generate.sh` every time you make changes to the types.

To access the wrappers, use the `.fn` property. To extract the original object, use `.nf` on a wrapper.

```
let path = UIBezierPath().fn
    .move(to: .zero)
    .addLine(to: CGPoint(x: 5, y: 5))
    .close()
    .nf

    type(of: path) // UIBezierPath.self
```

## Author

sidmani, sidmani42@gmail.com

## License

Chain is available under the MIT license. See the LICENSE file for more info.
