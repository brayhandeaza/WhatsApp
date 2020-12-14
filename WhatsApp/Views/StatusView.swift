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
    @State var title = ""
    var body: some View {
        VStack {
            HStack {
                Text("Privacy")
                    .font(.callout)
                    .foregroundColor(.blue)
                Spacer()
                Text("\(self.title)")
                    .fontWeight(.bold)
                    .padding(.trailing, 50)
                Spacer()
            }
            .padding(.horizontal)
            ScrollView {
                GeometryReader { geo -> AnyView? in
                    let thisOffset = geo.frame(in: .global).minY
                    if thisOffset < -175 {
                        self.title = "Status"
                    } else {
                        self.title = ""
                    }
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
        .ignoresSafeArea(.all)
    }
    
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
