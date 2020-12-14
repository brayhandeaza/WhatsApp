//
//  Header.swift
//  WhatsApp
//
//  Created by Brayhan De Aza on 12/13/20.
//

import SwiftUI
struct Header: View {
    @State var title = ""
    var body: some View {
        HStack {
            Text("Privacy")
                .font(.callout)
                .foregroundColor(.blue)
            Spacer()
            Text("\(title)")
                .fontWeight(.bold)
                .padding(.trailing, 50)
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
