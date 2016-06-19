//
//  utilities.swift
//  Hodor
//
//  Created by Roshan Balaji Nindrai SenthilNatha on 6/18/16.
//  Copyright © 2016 uniqlabs. All rights reserved.
//

import Foundation

extension String {

    /// check to see if string contains substring
    ///
    /// - parameter substring: string to check within
    ///
    /// - returns: boolean saying contains or not
    func contains(substring : String) -> Bool {
        return self.range(of: substring) != nil
    }

}
