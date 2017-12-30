//
//  Map_ViewController.swift
//  Cafe
//
//  Created by Alex Hsieh on 2017/12/16.
//  Copyright © 2017年 Alex Hsieh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class Map_ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    var MapLocation: cafe!

    

    
    func MapPoint(){
        if let map = MapLocation{
            let latitude = Double(MapLocation.cafeLatitude)
            let longtitude = Double(MapLocation.cafeLongitude)
            let annotation = MKPointAnnotation()
            annotation.title = map.cafeName
            annotation.subtitle = map.cafeAddress
            annotation.coordinate = CLLocationCoordinate2D(latitude: latitude!, longitude: longtitude!)
            let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 1000 , 1000)
            mapView.setRegion(region, animated: true)
            self.mapView.addAnnotation(annotation)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        MapPoint()
       
     
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
