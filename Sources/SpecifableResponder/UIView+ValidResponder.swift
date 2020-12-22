//
//  Created by iWw on 2020/12/22.
//

import UIKit

public extension UIView {
    
    /// return `is not hidden && alpha > 0 && isUserInteractionEnabled`
    var isValidResponder: Bool {
        !isHidden && alpha > 0 && isUserInteractionEnabled
    }
    
}
