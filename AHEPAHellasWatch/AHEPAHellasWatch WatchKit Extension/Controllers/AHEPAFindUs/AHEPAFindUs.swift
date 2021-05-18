//
//  AHEPAFindUs.swift
//  AHEPAHellasWatch WatchKit Extension
//
//  Created by Angelos Staboulis on 19/5/21.
//

import UIKit
import WatchKit
class AHEPAFindUs: WKInterfaceController {
    
    @IBOutlet var map: WKInterfaceMap!
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    
    }
    func showAHEPAHeadQuarters(){
        let location = CLLocationCoordinate2D(latitude: 37.978253, longitude: 23.754864)
        map.addAnnotation(location, with: .red)
        map.sizeToFitWidth()
        map.sizeToFitHeight()
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
       showAHEPAHeadQuarters()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
