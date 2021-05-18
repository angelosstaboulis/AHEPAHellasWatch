//
//  AHEPANewsInterfaceController.swift
//  AHEPAHellasWatch WatchKit Extension
//
//  Created by Angelos Staboulis on 18/5/21.
//

import UIKit
import WatchKit
class AHEPANewsInterfaceController: WKInterfaceController {
    @IBOutlet var table: WKInterfaceTable!
    var ahepaViewModel = AHEPANewsViewModel()
    func fillDataInTable(){
        ahepaViewModel.fetchRSSList { (array) in
            self.table.setNumberOfRows(array.count, withRowType: "cell")
            for item in 0..<self.table.numberOfRows{
                let row:AHEPARow = self.table.rowController(at: item) as! AHEPARow
                row.lblDescription.setText(array[item].title)
            }
        }
    }
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
        fillDataInTable()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
