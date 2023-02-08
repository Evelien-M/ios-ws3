//
//  ContentView.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Evelien Manshanden on 08/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            List {
                Image("archer")
                    .resizable()
                    .frame(width: 50, height: 50 )
                Text("archer")
                }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
