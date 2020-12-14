//
//  ContentView.swift
//  WhatsApp
//
//  Created by Brayhan De Aza on 12/12/20.

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection) {
            StatusView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Calls") }
                .tag(1)
            Text("\(selection)")
                .tabItem {
                    Image(systemName: "camera")
                    Text("Camera") }
                .tag(1)
            Text("\(selection)")
                .tabItem {
                    Image(systemName: "message")
                    Text("Cahts") }
                .tag(1)
            Text("\(selection)")
                .tabItem {
                    Image(systemName: "gear")
                        .resizable()
                    Text("Cahts")}
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
