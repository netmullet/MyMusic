//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by Otsuka on 2024/06/02.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    // 音源データの読み込み
    // NSDataAssetはAssets.xcassets内のファイルや画像を管理するクラス
    // dataプロパティで素材の生データ（Data型）にアクセスできる
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data // !で強制アンラップ
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    // 音源ファイルを再生する機能を持つAVAudioPlayer型のインスタンス変数
    var cymbalPlayer: AVAudioPlayer!
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay () {
        do { // 例外処理
            // 素材データとともにAVAudioPlayerを生成
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            // プレイヤー再生
            cymbalPlayer.play()
        } catch {
            print("An error happend on cymbal!")
        }
    }
    
    func guitarPlay () {
        do {
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        } catch {
            print("An error happend on guitar!")
        }
    }
}
