//
//  HDContactManager.swift
//  Hodor
//
//  Created by Roshan Balaji Nindrai SenthilNatha on 6/18/16.
//  Copyright © 2016 uniqlabs. All rights reserved.
//

import Foundation

// Represents a contact manager and handles all contact related operations
struct HDContactManager {
//  Represents a collection of contact information within Hodor App
    var contacts : [HDContact] {
        return mockContacts()
    }
}

extension HDContactManager {

    /// This method is used to create mock contact information
    ///
    /// - returns: array of contact
    func mockContacts() -> [HDContact] {
        return [

            HDContact(name:"Nathan", detail:"Nathan"),
            HDContact(name:"Jack", detail:"Jack")

        ]
    }

    /// get the contact with name
    ///
    /// - parameter name: name of the hodor contact
    ///
    /// - returns: contacts with hodor name
    func contacts(withName name : String) -> [HDContact]? {
        return contacts.filter({ return $0.name.contains(name)})
    }

}
