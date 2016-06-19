//
//  IntentHandler.swift
//  IntentExtension
//
//  Created by Roshan Balaji Nindrai SenthilNatha on 6/18/16.
//  Copyright © 2016 uniqlabs. All rights reserved.
//

import Intents

// As an example, this class is set up to handle the Workout intents.
// You will want to replace this or add other intents as appropriate.
// The intents you wish to handle must be declared in the extension's Info.plist.


class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> AnyObject? {
        
        guard intent is INSendMessageIntent else {return nil}
        return HDSendMessageIntentHandler()
        
    }
    
}

