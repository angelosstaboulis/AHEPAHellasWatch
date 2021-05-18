//
//  AHEPAChapters.swift
//  AHEPAHellasWatch WatchKit Extension
//
//  Created by Angelos Staboulis on 19/5/21.
//

import UIKit
import WatchKit
class AHEPAChapters: WKInterfaceController {
    var rssList:[RssList]=[]
    func fillItems(){
        rssList.append(RssList(title: "Athens Chapter HJ-1", link: "http://ahepahellas.org/chapters/athens-chapter-hj-1"))
        rssList.append(RssList(title: "Glyfada Chapter HJ-2", link: "http://ahepahellas.org/chapters/glyfada-hj-2"))
        rssList.append(RssList(title: "ATG HJ-3 -Thessaloniki", link: "http://ahepahellas.org/chapters/alexander-the-great-hj-3-thessaloniki"))
        rssList.append(RssList(title: "Solon Chapter HJ-4 – Halandri", link: "http://ahepahellas.org/chapters/solon-chapter-hj-4-halandri"))
        rssList.append(RssList(title: "Zakynthos Chapter HJ-5", link: "http://ahepahellas.org/chapters/zakynthos-hj-5"))
        rssList.append(RssList(title: "Kydon Chapter HJ-6 – Chania, Crete", link: "http://ahepahellas.org/chapters/kydon-chapter-hj-6-chania-crete"))
        rssList.append(RssList(title: "Papaflessa Chapter HJ-7 – Kalamata", link: "http://ahepahellas.org/chapters/papaflessa-hj-7-kalamata"))
        rssList.append(RssList(title: "Strymon Chapter HJ-8 – Serres", link: "http://ahepahellas.org/chapters/strymon-hj-8-serres"))
        rssList.append(RssList(title: "Themistoklis Chapter HJ-9 Piraeus", link: "http://ahepahellas.org/chapters/themistoklis-hj-9-piraeus"))
        rssList.append(RssList(title: "Pericles Chapter HJ-10 – Holargos", link:"http://ahepahellas.org/chapters/pericles-chapter-hj-10-holargos"))
        rssList.append(RssList(title: "Knossos Chapter HJ-11 – Irakleion", link:"http://ahepahellas.org/chapters/knossos-chapter-hj-11-irakleion"))
        rssList.append(RssList(title: "Rigas Feraios Chapter HJ-12 – Volos", link:"http://ahepahellas.org/chapters/rigas-ferreos-chapter-hj-12-volos"))
        rssList.append(RssList(title: "Argonauts Chapter HJ-13 – Argalasti", link:"http://ahepahellas.org/chapters/argonauts-chapter-hj-13-argalasti"))
        rssList.append(RssList(title: "Philippos Chapter HJ-14 – Kavala", link:"https://ahepahellas.org/chapters/philippos-chapter-hj-14-kavala/"))
        rssList.append(RssList(title: "Trantas Chapter HJ-15 – Kozani", link:"http://ahepahellas.org/chapters/kozani-trantas-chapter-hj-15"))
        rssList.append(RssList(title: "Areti Chapter HJ-16 - Drama", link:"http://ahepahellas.org/chapters/drama-areti-chapter-hj-16"))
        rssList.append(RssList(title: "Ifestos Chapter HJ-17 – Varie", link:"http://ahepahellas.org/chapters/vari-ifestos-chapter-hj-17"))
        rssList.append(RssList(title: "Lepanto Chapter HJ-18 Nafpaktos", link:"http://ahepahellas.org/chapters/nafpaktos-hj-18"))
        rssList.append(RssList(title: "Protagoras Chapter HJ-19 - Xanthi", link:"http://ahepahellas.org/chapters/xanthi-hj-19"))
        rssList.append(RssList(title: "Orfeus Chapter HJ-20 – Komotini", link:"http://ahepahellas.org/chapters/komotini-hj-20"))
        rssList.append(RssList(title: "Democritus Chapter HJ-21 - Alexandroupoli", link:"http://ahepahellas.org/chapters/alexandroupoli"))
        rssList.append(RssList(title: "Arcadia Chapter HJ-22 - Tripolis", link:"http://ahepahellas.org/chapters/tripolis-hj-22"))
        rssList.append(RssList(title: "King Pyrros Chapter HJ-23 - Ioannina", link:"http://ahepahellas.org/chapters/ioannina-hj-23"))
        rssList.append(RssList(title: "Spartiates - Chapter HJ-24 - Sparti", link:"http://ahepahellas.org/chapters/sparti-spartiates-hj-24"))
        rssList.append(RssList(title:"St. Andrew Chapter HJ-25 - Patra", link:"http://ahepahellas.org/chapters/st-andrew-chapter-hj-25-patra"))
        rssList.append(RssList(title:"Olympos Chapter HJ-26 - Larissa", link:"http://ahepahellas.org/chapters/olympos-chapter-hj-26-larissa"))
        rssList.append(RssList(title:"Kassandros Chapter HJ-27 – Oreokastro Thes.", link:"http://ahepahellas.org/chapters/kassandros-chapter"))
        rssList.append(RssList(title:"Jim Londos Chapter HJ-28 – Nafplio", link:"http://ahepahellas.org/chapters/jim-londos-chapter-hj-28-nafplio"))
        rssList.append(RssList(title:"Vergina Chapter HJ-29 – Veroia", link:"http://ahepahellas.org/chapters/vergina-chapter-hj-29-veroia"))
        rssList.append(RssList(title:"Theagenis Chapter HJ-30 – Thassos", link:"http://ahepahellas.org/chapters/theagenis-chapter-hj-30-thassos"))
        rssList.append(RssList(title:"Nearchos Chapter H-31 – Ag. Nikolaos, Crete", link:"http://ahepahellas.org/chapters/nearchos-chapter-h-31-ag-nikolaos-crete"))
        rssList.append(RssList(title:"N. Plastiras Chapter HJ-32 - Karditsa", link:"http://ahepahellas.org/chapters/n-plastiras-chapter-hj-32-karditsa/"))
        rssList.append(RssList(title:"Chapter HJ-33 - Rhodes", link:"http://ahepahellas.org/chapters/chapter-hj-33-rhodes/"))
    }

    @IBOutlet var table: WKInterfaceTable!
    func fillTableAHEPAChapters(){
        fillItems()
        self.table.setNumberOfRows(rssList.count, withRowType: "cell")
        for item in 0..<self.table.numberOfRows{
            let row:AHEPAChapterRow = table.rowController(at: item) as! AHEPAChapterRow
            row.lblDescription.setText(rssList[item].title)
        }
    }
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
       
    }
  
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
       fillTableAHEPAChapters()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
