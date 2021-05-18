//
//  AHEPAHistory.swift
//  AHEPAHellasWatch WatchKit Extension
//
//  Created by Angelos Staboulis on 19/5/21.
//

import UIKit
import WatchKit
class AHEPAHistory: WKInterfaceController {
    func playAHEPAHistoryVideo(){
        let bundle = Bundle.main.path(forResource: "history", ofType: "mov")
        movie.setMovieURL(URL(fileURLWithPath: bundle!))
    }
    @IBOutlet var movie: WKInterfaceMovie!
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
        super.awake(withContext: context)
        playAHEPAHistoryVideo()
    }
  
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
      

    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
