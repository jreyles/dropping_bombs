//
//  ChatListViewController.swift
//  Dropping Bombs
//
//  Created by Kerrin Arora on 3/17/16.
//  Copyright © 2016 Kerrin Arora. All rights reserved.
//

import UIKit
class ChatListViewController: UITableViewController {
    
    var information = [
        UserInfo(messageText: "Hello there", userName: "Kerrin Arora", pictureURL: NSURL(string:"http://www.nasa.gov/sites/default/files/styles/image_card_4x3_ratio/public/thumbnails/image/idcs1426.jpg?itok=Gc_-Q58L")),
        UserInfo(messageText: "Hey Hey", userName: "Cora Uwajeh", pictureURL: NSURL(string:"http://www.online-image-editor.com//styles/2014/images/example_image.png"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(information.count)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("hello")
        print(information[0].messageText)
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomChatCell") as! CustomChatCell
        print("hi there")
        let info = information[indexPath.row]
        cell.matchMessageLabel.text = info.messageText
        cell.matchNameLabel.text = info.userName
        if info.pictureURL != nil {
            if let imageData = NSData(contentsOfURL: info.pictureURL!) {
                cell.matchImageView.image = UIImage(data: imageData)
            }
        }
        print(info)
        return cell
        
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return information.count

    }
}
