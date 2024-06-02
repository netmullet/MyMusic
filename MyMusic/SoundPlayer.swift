//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by Otsuka on 2024/06/02.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    // NSDataAssetを介してAsset Catalog上の素材へアクセスできる
    // NSDataAssetのdataプロパティで素材の生データ（Data型）にアクセスできる
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data // !で強制アンラップ
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    // オプショナル型のインスタンス変数を宣言
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
