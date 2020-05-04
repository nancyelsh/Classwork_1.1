//
//  ContentView.swift
//  Classwork_1.1
//
//  Created by Nour El-Sharkawi on 5/3/20.
//  Copyright © 2020 Nancy El-Sharkawi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var thekr = athkar.randomElement()!
    @State var counter = "0"
    var body: some View {
        ZStack {
            BG()
            VStack {
                Text(thekr).modifier(ThekrModifier())
                Text(counter).modifier(CounterModifier())
            }
        }
        .onTapGesture {
            self.counter = String(Int(self.counter)! + 1)
        }
        .onLongPressGesture {
            self.thekr = athkar.randomElement()!
            self.counter = "0"
        }
    }
}

struct ThekrModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white)
        .multilineTextAlignment(.center)
        .padding()
    }
}

struct CounterModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white)
        .font(.custom("Al Tarikh", size: 50))
        .padding(.horizontal, 50)
        .padding(.vertical, 3)
        .padding(.bottom, 0)
        .background(Color.init( #colorLiteral(red: 0.5489003658, green: 0.8530963063, blue: 0.7255270481, alpha: 0.25)))
         .clipShape(Capsule())
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
