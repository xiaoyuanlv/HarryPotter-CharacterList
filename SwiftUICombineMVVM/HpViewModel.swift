//
//  HpViewModel.swift
//  SwiftUICombineMVVM
//
//  Created by Xiao Yuan on 11/8/21.
//

import Combine
import SwiftUI

class HpViewModel: ObservableObject {
    private let url = "https://hp-api.herokuapp.com/api/characters"
    private var task: AnyCancellable?
    
    @Published var characters : [Hp] = []
    
    func fetchCharacters() {
        task = URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
            .map { $0.data }
            .decode(type: [Hp].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \HpViewModel.characters, on: self)
    }
}
