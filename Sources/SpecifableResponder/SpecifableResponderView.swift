//
//  Created by iWw on 2020/12/22.
//

import UIKit

open class SpecifableResponderView: UIView {
    
    open var canResponderViews: [UIView] = []
    
    open override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        
        for view in subviews.reversed() where (canResponderViews.contains(view) || view is SpecifyProvider) {
            
            guard view.isValidResponder,
                  view.frame.contains(point) else {
                continue
            }
            
            if view.point(inside: convert(point, to: view), with: event) {
                return true
            }
        }
        
        if canResponderViews.contains(self) {
            return super.point(inside: point, with: event)
        }
        
        return false
    }
}
