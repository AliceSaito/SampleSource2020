//
//  AboutDictionaryViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/13.
//

import UIKit

/// Dictionaryの問題（あと配列）
class AboutDictionaryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        renshuA()
    }
    
    func renshuA() {
        var mdprDic: [String: String] = [
            "iOS": "斉藤",
            "Android": "ディレ",
            "API": "内田",
            "リーダー": "眞野",
        ]
        
        //練習1 mdprDicをprintとdumpしてみて、どのような表示になるか確認してみる
        
        //練習2 mdprDicから、「Android」が「ディレ」であることをprintして確認してみる
        
        //練習3 mdprDicの、key「Android」を「崔」に変更して、printして確認してみる
        //     「ディレ」が「崔」に変わることを確認する（同じkeyなので上書きされた）
        
        //練習4 mdprDicの要素数（count）をprintしてみる
        
        //練習5 mdprDicのkeyをすべて表示する（.keysで出る）
        //     keysは何型？
        //     mdprDicのkeysを表示すると、上で定義した順番と異なることを確認する
        
        //練習6 mdprDicの値（value）をすべて表示する（.valuesで出る）
        
        //練習7 for key in mdprDic.keys { を使って、mdprDicの値（value）をすべて表示する
    }
    
    func renshuB() {
        var sizeNameDic: [Double: String] = [
            1.0 : "ミドル",
            0.5 : "ハーフ",
            0.1 : "スモール",
            2.0 : "ダブル",
            3.0 : "ラージ",
        ]
        
        //練習8 sizeNameDicのうち、1.0以上のサイズ名をすべて表示する（for文を使用する）
        
        //練習9 keyが0.8のとき、valueがnilになることを確認する
    }
    
    func renshuC() {
        
    }
}
