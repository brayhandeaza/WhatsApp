//
//  AddStory.swift
//  WhatsApp
//
//  Created by Brayhan De Aza on 12/13/20.
//

import SwiftUI

struct AddStory: View {
    var body: some View {
        HStack(alignment: .center) {
            HStack(alignment: .center) {
                ZStack {
                    Image("sara")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .cornerRadius(100)
                        
                    Image("plus")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        
                        .offset(x: 18.0, y: 15.0)
                }

                VStack(alignment: .leading) {
                    Text("My Status")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                    Text("Add to my status")
                        .font(.system(size: 14))
                        .foregroundColor(Color(.systemGray))

                }
                Spacer()
            }
            .frame(height: 75)
            
            
            HStack {
                HStack {
                    Image(systemName: "camera.fill")
                        .foregroundColor(.blue)
                        .font(.system(size: 14))
                    
                }
                .frame(width: 35, height: 35, alignment: .center)
                .background(Color(.systemGray6))
                .cornerRadius(100)
                HStack {
                    Image("pencil")
                        .resizable()
                        .frame(width: 15, height: 15, alignment: .center)
                }
                .frame(width: 35, height: 35, alignment: .center)
                .background(Color(.systemGray6))

                .cornerRadius(100)
                
            }
        }
        .padding(.horizontal)
        .background(Color(.white))
    }
    
}

struct AddStory_Previews: PreviewProvider {
    static var previews: some View {
        AddStory()
    }
}
