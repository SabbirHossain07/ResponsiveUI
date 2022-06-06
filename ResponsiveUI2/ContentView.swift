//
//  ContentView.swift
//  ResponsiveUI2
//
//  Created by Sopnil Sohan on 5/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       MainView()
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
