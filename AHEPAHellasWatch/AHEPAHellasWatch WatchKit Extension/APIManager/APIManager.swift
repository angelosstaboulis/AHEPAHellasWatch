//
//  APIManager.swift
//  AHEPAHellasWatch WatchKit Extension
//
//  Created by Angelos Staboulis on 18/5/21.
//

import Foundation
import Alamofire
import SWXMLHash
class APIManager{
        public static let shared = APIManager()
        private init(){}
        func listRSS(completion:@escaping ([RssList])->()){
                let urlMain = URL(string: "http://ahepahellas.org/feed/")
                let request = URLRequest(url: urlMain!)
                AF.request(request).responseString { (dataResponse) in
                    let xml = SWXMLHash.parse(dataResponse.data!)
                    var rssArray:[RssList]=[]
                    for item in 0..<xml["rss"]["channel"]["item"].all.count{
                        let rss = RssList(title: xml["rss"]["channel"]["item"][item]["title"].element?.text, link: xml["rss"]["channel"]["item"][item]["link"].element?.text)
                        rssArray.append(rss)
                    }
                    completion(rssArray)
                   
                }
        }
}
