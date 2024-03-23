//
//  ContentView.swift
//  MemorizeApp
//
//  Created by Umair Salam on 3/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
            
        }
        .padding()
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)

    }
}

struct CardView: View {
    
    @State var isFaceUp = false // let swift infer isFaceUp is a Bool
    
    var body: some View {
        ZStack() {
            let base = RoundedRectangle(cornerRadius: 25.0)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                    Text("👻").font(.largeTitle)
            }
            
            else
            {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()   // = !isFaceUp
        }
    }
}

#Preview {
    ContentView()
}


