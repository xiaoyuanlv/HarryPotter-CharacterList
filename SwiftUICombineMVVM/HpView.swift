//
//  BreweryView.swift
//  SwiftUICombineMVVM
//
//  Created by Xiao Yuan on 11/8/21.
//

import SwiftUI

struct HpView: View {
    private let hp: Hp
    init(hp: Hp) {
        self.hp = hp
    }
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "\(hp.image.replacingOccurrences(of: "http", with: "https"))")) { image in
                image.resizable().scaledToFit().frame(width: 50, height: 50)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
           
            VStack(alignment: .leading, spacing: 15) {
                Text(hp.name)
                    .font(.system(size: 18))
                    .foregroundColor(Color.blue)
               
            }
        }
    }
    
}
