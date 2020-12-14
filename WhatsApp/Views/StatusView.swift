//
//  StatusView.swift
//  WhatsApp
//
//  Created by Brayhan De Aza on 12/13/20.
//

import SwiftUI
struct StatusView: View {
    @State var searchValue = ""
    @State var offset: CGFloat = 0
    var body: some View {
        VStack {
            Text("\(offset)")
            Header(title: "Status")
            
            ScrollView {
                GeometryReader { geo -> AnyView? in
                    self.offset = geo.frame(in: .global).minY
                    return nil
                }
                
                MyStatus(searchValue: self.searchValue)
                    .padding(.all)
                AddStory()
                Stories()
            }
            Spacer()
        }
        .padding(.top, 50.0)
        .background(Color(.systemGray6))
        .ignoresSafeArea()
        //        .ignoringSafeArea(.all)
    }
    
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
