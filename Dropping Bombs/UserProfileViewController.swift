//
//  ViewController.swift
//  Dropping Bombs
//
//  Created by Kerrin Arora on 3/17/16.
//  Copyright © 2016 Kerrin Arora. All rights reserved.
//

import UIKit
import AVFoundation
import MapKit

class UserProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var userInformationTextView: UITextView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        userInformationTextView.layer.borderWidth = 0.5
        userInformationTextView.layer.borderColor = borderColor.CGColor
        userInformationTextView.layer.cornerRadius = 5.0

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        // set picture radius (rounding)
        self.profilePicture.layer.cornerRadius = self.profilePicture.frame.size.width/10;
        self.profilePicture.clipsToBounds = true
    }


    @IBAction func chooseImageFromPhotoLibary(sender: UIButton) {
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.sourceType = .PhotoLibrary
        
        presentViewController(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        profilePicture.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        print(profilePicture)
        dismissViewControllerAnimated(true, completion: nil)

    }

}

