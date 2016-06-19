//
//  HDMessageViewController.swift
//  Hodor
//
//  Created by Roshan Balaji Nindrai SenthilNatha on 6/18/16.
//  Copyright © 2016 uniqlabs. All rights reserved.
//

import UIKit

class HDMessageCard : UIView {

    var hodorView : HDMessageView!

    init(size: CGSize) {
        super.init(frame: CGRect.init(origin: .zero, size: size))
        hodorView = HDMessageView(size: size)
        _ = hodorView.all().map({addSubview($0)})
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }

}
