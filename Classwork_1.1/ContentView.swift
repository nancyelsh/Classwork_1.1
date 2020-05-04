//
//  ContentView.swift
//  Classwork_1.1
//
//  Created by Nour El-Sharkawi on 5/3/20.
//  Copyright © 2020 Nancy El-Sharkawi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var pageNumber = ""
    var body: some View {
        ZStack {
            BG()
            VStack {
                Text("Page \(pageNumber)").font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                TextField("رقم الصفحة", text: $pageNumber).keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .multilineTextAlignment(.trailing)
                    .frame(height: 90)
                
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BG: View {
    var body: some View {
        ZStack {
            Image("BACKGROUND").resizable()
            
            VStack {
                Image("Header").resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Image("Mosque").resizable().aspectRatio(contentMode: .fit)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
