//
//  BackgroundModifier.swift
//  MyMusic
//
//  Created by Otsuka on 2024/06/02.
//

import SwiftUI

// extensionによって既存のクラスや構造体などに新たな定義を追加できる
extension Image {
    func backgroundModifier() -> some View {
        // Imageのインスタンス
        self
            .resizable()
            .ignoresSafeArea() // セーフエリア外まで表示されるようにする
            .scaledToFill() // アスペクト比を保って、表示枠を覆い尽くす最小サイズにする
    }
}
