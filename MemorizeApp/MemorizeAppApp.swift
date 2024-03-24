//
//  MemorizeAppApp.swift
//  MemorizeApp
//
//  Created by Umair Salam on 3/22/24.
//

import SwiftUI

@main
struct MemorizeAppApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
