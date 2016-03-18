//
//  UserInfo.swift
//  Dropping Bombs
//
//  Created by Kerrin Arora on 3/17/16.
//  Copyright © 2016 Kerrin Arora. All rights reserved.
//

import Foundation
class UserInfo {
    var messageText: String?
    var userName: String?
    var pictureURL: NSURL?
    init (messageText: String?, userName: String?, pictureURL : NSURL?) {
        self.messageText = messageText
        self.userName = userName
        self.pictureURL = pictureURL
    }
}