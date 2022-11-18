//
//  PropositionViewModel.swift
//  Foodee
//
//  Created by user230319 on 11/14/22.
//

import Foundation
import Combine

final class PropositionViewModel: ObservableObject {
    @Published var businesses = [Business]()
    @Published var searchText = ""
    func search(){
        let live = YelpAPIService.live
        live.search("food", .init(latitude: 42.36, longitude: -71), nil)
            .assign(to: &$businesses)
    }
}
