//
//  HDSendMessageIntentHandler.swift
//  Hodor
//
//  Created by Roshan Balaji Nindrai SenthilNatha on 6/18/16.
//  Copyright © 2016 uniqlabs. All rights reserved.
//

import Foundation
import Intents


class HDSendMessageIntentHandler : NSObject {
    let contactManager = HDContactManager()
}

extension HDSendMessageIntentHandler : INSendMessageIntentHandling {

    func resolveRecipients(forSendMessage intent: INSendMessageIntent, with completion: ([INPersonResolutionResult]) -> Void) {

        var resolvedResults : [INPersonResolutionResult]!
//        check if we have recipients
        if let recipients = intent.recipients {

            for recipient in recipients {
                //check if recipient if part of hodor contacts
                if let hdcontacts = contactManager.contacts(withName: recipient.displayName) {

                    switch hdcontacts.count {

                        case 0:
                            resolvedResults = [INPersonResolutionResult.unsupported(with: .none)]
                        case 1:
                            resolvedResults = [INPersonResolutionResult.success(with: (hdcontacts.last!.inPerson()))]
                        case 2 ... Int.max:
                            resolvedResults = [INPersonResolutionResult.disambiguation(with: hdcontacts.map({ $0.inPerson() }))]
                        default:
                            break
                    }

                }
            }

            if recipients.count == 0 {
               resolvedResults = [INPersonResolutionResult.needsValue()]
            }

            completion(resolvedResults)

        } else {
            // No recipients.
            completion([INPersonResolutionResult.needsValue()])
        }

    }

    func resolveContent(forSendMessage intent: INSendMessageIntent, with completion: (INStringResolutionResult) -> Swift.Void) {
        if let text = intent.content where !text.isEmpty {
            completion(INStringResolutionResult.success(with: text))
        }
        else {
            completion(INStringResolutionResult.needsValue())
        }
    }

    func handle(sendMessage intent: INSendMessageIntent, completion: (INSendMessageIntentResponse) -> Void) {
        if intent.recipients != nil && intent.recipients?.count > 0 {
            completion(INSendMessageIntentResponse(code: .success, userActivity: nil))
        }
        else {
            completion(INSendMessageIntentResponse.init(code: .failure, userActivity: nil))
        }
    }

}
