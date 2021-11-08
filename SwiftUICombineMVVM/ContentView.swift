//
//  ContentView.swift
//  SwiftUICombineMVVM
//
//  Created by Xiao Yuan on 11/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = HpViewModel()
    
    var body: some View {
        NavigationView {
            List(self.viewModel.characters, id: \.self) {
                HpView(hp: $0)
            }.navigationBarTitle("Characters")
                .onAppear {
                    self.viewModel.fetchCharacters()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
