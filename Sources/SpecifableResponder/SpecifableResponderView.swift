//
//  Created by iWw on 2020/12/22.
//

import UIKit

open class SpecifableResponderView: UIView {
    
    open var specifableType: SpecifableType = .blockList(views: [])
    
    open override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        
        for view in subviews.reversed() {
            
            var isValidView = false
            
            switch specifableType {
            case .blockList(let views):
                isValidView = !views.contains(view)
            case .whiteList(let views):
                isValidView = views.contains(view)
            }
            
            guard isValidView, view.isValidResponder, view.frame.contains(point) else {
                continue
            }
            
            if view.point(inside: convert(point, to: view), with: event) {
                return true
            }
        }
        
        return false
    }
}
