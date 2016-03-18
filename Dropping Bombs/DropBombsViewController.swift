//
//  DropBombsViewController.swift
//  Dropping Bombs
//
//  Created by Kerrin Arora on 3/17/16.
//  Copyright © 2016 Kerrin Arora. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class DropBombsViewController: UIViewController {
    
    @IBOutlet var myMapView: MKMapView!
    
    var cl: CLLocationManager?

    override func viewDidLoad() {
        super.viewDidLoad()
        cl = CLLocationManager()
        
        cl?.requestWhenInUseAuthorization()
        
        
        myMapView.showsUserLocation = true
        myMapView.userTrackingMode = MKUserTrackingMode.Follow

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        myMapView.showsUserLocation = true
        myMapView.userTrackingMode = MKUserTrackingMode.Follow
        
    }
    
    @IBAction func dropBombsButtonPressed(sender: UIButton) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: self.myMapView.userLocation.coordinate.latitude, longitude: self.myMapView.userLocation.coordinate.longitude)
        self.myMapView.addAnnotation(annotation)
    }
    
}
