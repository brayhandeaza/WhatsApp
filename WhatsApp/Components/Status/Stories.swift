//
//  Stories.swift
//  WhatsApp
//
//  Created by Brayhan De Aza on 12/13/20.
//

import SwiftUI

struct Stories: View {
    let storiesCircles = ["circle.one", "circle.two", "circle.three", "circle.four", "circle.eight", "circle.all"]
    var body: some View {
        VStack {
            
            HStack {
                Text("RECENT UPDATES")
                    .font(.system(size: 14))
                    .foregroundColor(Color.gray)
                Spacer()
            }
            .padding(.leading)
            .frame(height: 40, alignment: .bottom)
            VStack {
                ForEach(0..<50, id: \.self) { item in
                    Button(action: {}) {
                        HStack {
                            ZStack {
                                Image("sara")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(100)
                                
                                Image(storiesCircles[Int.random(in: 0...5)])
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(100)
                            }
                            .offset(y: 10)
                            
                            HStack(alignment: .top) {
                                VStack(alignment: .leading) {
                                    Divider()
                                    Text("Dylan West")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(.black))
                                        .padding(.top, 5.0)
                                    Text("23m ago")
                                        .font(.system(size: 14))
                                        .foregroundColor(Color(.systemGray))
                                        .frame(height: 30)
                                }
                            }
                        }
                        .frame(alignment: .center)
                    }
                    .padding(.leading)
                    .frame(height: 65)
                    .background(Color.white)
                }
            }
            .padding(.bottom, 100
            )
            .border(Color(.systemGray5))
            .background(Color.white)
            
        }
        
    }
}

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
    }
}
