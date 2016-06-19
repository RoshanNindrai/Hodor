//
//  HDContact.swift
//  Hodor
//
//  Created by Roshan Balaji Nindrai SenthilNatha on 6/18/16.
//  Copyright © 2016 uniqlabs. All rights reserved.
//

import Foundation
import Intents

//Represents a single contact on Hodor app
struct HDContact {
    
//   Name of the contact
    var name : String

//   Detail information of the user
    var detail : String

}

extension HDContact {

    /// returns an INPerson object for siri to understand
    ///
    /// - returns: INPerson instance
    func inPerson() -> INPerson {
        return INPerson.init(handle: name,
                             displayName: detail,
                             contactIdentifier: name)
    }

}
