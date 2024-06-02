//
//  ContentView.swift
//  MyMusic
//
//  Created by Otsuka on 2024/06/02.
//

import SwiftUI

struct ContentView: View {
    // SoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    var body: some View {
        ZStack{
            Image(.background)
                .backgroundModifier()
            
            HStack {
                Button {
                    soundPlayer.cymbalPlay()
                } label: {
                    Image(.cymbal)
                }
                
                Button {
                    soundPlayer.guitarPlay()
                } label: {
                    Image(.guitar)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
