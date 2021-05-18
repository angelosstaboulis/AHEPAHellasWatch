//
//  AHEPANewsViewModel.swift
//  AHEPAHellasWatch WatchKit Extension
//
//  Created by Angelos Staboulis on 18/5/21.
//

import Foundation
class AHEPANewsViewModel{
    var apimanager:APIManager!
    init(){
        apimanager = APIManager.shared
    }
    var rssList:[RssList]=[]
    
    func fetchRSSList(completion:@escaping ([RssList])->()){
        apimanager.listRSS { array in
            self.rssList = array
            completion(self.rssList)
        }
    }
}
