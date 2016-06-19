//
//  HDMessageView.swift
//  Hodor
//
//  Created by Roshan Balaji Nindrai SenthilNatha on 6/18/16.
//  Copyright © 2016 uniqlabs. All rights reserved.
//

import Foundation
import UIKit

struct HDMessageView {
    var hodorImageView : UIImageView!
}

extension HDMessageView {

    init(size : CGSize) {
        hodorImageView = UIImageView(frame: CGRect.init(origin: .zero, size: size))
        hodorImageView.image = #imageLiteral(resourceName: "hodor")
        hodorImageView.contentMode  = .scaleAspectFit
    }

    func all() -> [UIView] {
        return [hodorImageView]
    }

}
