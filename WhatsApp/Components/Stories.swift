//
//  Stories.swift
//  WhatsApp
//
//  Created by Brayhan De Aza on 12/13/20.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        VStack {
            HStack {
                Text("RECENT UPDATES")
                    .font(.system(size: 14))
                    .foregroundColor(Color.gray)
                Spacer()
            }
            .padding(.bottom, 5.0)
            .padding(.horizontal)
            .frame(height: 50, alignment: .bottom)
            VStack {
                ForEach(0..<50, id: \.self) { item in
                    Button(action: {}) {
                        HStack {
                            HStack {
                                Image(systemName: "network")
                                    .font(.system(size: 50))
                                    .foregroundColor(.gray)
                            }
                            .padding(.leading, 10.0)
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Dylan West")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(.black))
                                    Text("23m ago")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color(.systemGray))
                                }
                                .frame(height: 60, alignment: .center)
                                
                                Spacer()
                            }
                            .frame(height: 60, alignment: .center)
                            
                        }
                    }
                    .frame(height: 60, alignment: .center)
                    .background(Color.white)
                    Divider()
                    
                }
                
            }
            .padding(.bottom, 100.0)
            .background(Color.white)
        }
        
    }
}

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
    }
}
