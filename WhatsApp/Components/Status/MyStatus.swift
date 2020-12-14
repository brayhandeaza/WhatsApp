//  MyStatus.swift
//  WhatsApp
//  Created by Brayhan De Aza on 12/13/20.

import SwiftUI

struct MyStatus: View {
    @State var searchValue = ""
    var body: some View {
        VStack {
            HStack {
                Text("Status")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .padding(.top, 2)
                Spacer()
            }
            
            // Stack 3 - Search
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading, 5)
                    .foregroundColor(Color(.systemGray2))
                TextField("Search", text: $searchValue)
                Spacer()
            }
            .frame(height: 35)
//            .padding(.horizontal)
            .background((Color(.systemGray5)))
            .cornerRadius(7)
        }
        
    }
}

struct MyStatus_Previews: PreviewProvider {
    static var previews: some View {
        MyStatus()
    }
}
