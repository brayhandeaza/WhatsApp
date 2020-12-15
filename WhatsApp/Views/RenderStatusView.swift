//
//  RenderStatusView.swift
//  WhatsApp
//
//  Created by Brayhan De Aza on 12/14/20.
//

import SwiftUI

struct RenderStatusView: View {
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let statusCount = [1]
    @State var currentStatus = 0
    @State var percentage:CGFloat = 0.0
    let screenwidth = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
             Text("\(self.currentStatus)")
            VStack() {
                HStack {
                    ForEach(self.statusCount, id: \.self) { items in
                        ZStack(alignment: .leading) {
                            Rectangle()
                                .fill(Color(.systemGray4))
                                .cornerRadius(15)
                                .frame(width: (UIScreen.main.bounds.width / CGFloat(self.statusCount.count)), height: 5)
                            Rectangle()
                                .fill(Color(.red))
                                .cornerRadius(15)
                                .frame(width: (UIScreen.main.bounds.width / CGFloat(self.statusCount.count)) * self.percentage, height: 5)
                        }
                        .padding()
                        .frame(width: (UIScreen.main.bounds.width / CGFloat(self.statusCount.count) ) - 15, height: 7)
                        .animation(Animation.linear(duration: 15))
                        .cornerRadius(15)
                        
                    }.onReceive(timer) { input in
                        if self.percentage < 1.0 {
                            self.percentage += (15 / 100)
                            currentStatus += 1
                        }
                    }
                }
                Spacer()
            }
        }
        
    }
}

struct RenderStatusView_Previews: PreviewProvider {
    static var previews: some View {
        RenderStatusView()
    }
}
