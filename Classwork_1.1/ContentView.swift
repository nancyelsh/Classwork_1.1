//
//  ContentView.swift
//  Classwork_1.1
//
//  Created by Nour El-Sharkawi on 5/3/20.
//  Copyright © 2020 Nancy El-Sharkawi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var thekr = "بسم الله الرحمن الرحيم"
    var body: some View {
        ZStack {
            Image("BACKGROUND").resizable()

            VStack {
                Image("Header").resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Image("Mosque").resizable().aspectRatio(contentMode: .fit)
            }
            
            Text(thekr)
            .font(.largeTitle)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
                .padding()
            .onTapGesture {
                self.thekr = athkar.randomElement()!
            }
        
        }
    .edgesIgnoringSafeArea(.all)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
