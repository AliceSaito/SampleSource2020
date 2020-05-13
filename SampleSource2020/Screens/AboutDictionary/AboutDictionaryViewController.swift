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
        renshuB()
        renshuC()
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
        var arrayDic: [String: [String]] = [
            "生徒委員": ["田中", "佐藤"],
            "環境委員": ["渡辺", "山田", "佐々木"],
            "美術委員": ["山田", "眞野", "北野", "加藤"],
            "風紀委員": ["志村"],
            "図書委員": [],
            "保健委員": ["高橋", "渡部", "北野", "佐々木", "高野"]
        ]
        
        //練習10 美術委員は何人居るか、出力する
        
        //練習11 保健委員の最初の人（.first、又は[0]）を図書委員にも所属させて、出力する
    }
    
    func renshuD() {
        // これはDictionaryの配列です
        let datas: [[String: Any]] = [
            ["image": "animal_mark14_hitsuji", "name": "ひつじ", "point": 100],
            ["image": "animal_mark13_penguin", "name": "ペンギン", "point": 50],
            ["image": "animal_mark12_saru", "name": "さる", "point": 30],
            ["image": "animal_mark10_usagi", "name": "うさぎ", "point": 10],
            ["image": "animal_mark09_tora", "name": "トラ", "point": 200],
            ["image": "animal_mark08_kaba", "name": "カバ", "point": 130],
            ["image": "animal_mark07_lion", "name": "ライオン", "point": 120],
            ["image": "animal_mark06_uma", "name": "うま", "point": 10],
            ["image": "animal_mark05_zou", "name": "ゾウ", "point": 0],
            ["image": "animal_mark04_neko", "name": "猫", "point": -100],
            ["image": "animal_mark03_inu", "name": "いぬ", "point": -200],
            ["image": "animal_mark02_kuma", "name": "クマ", "point": 500],
            ["image": "animal_mark01_buta", "name": "ぶた", "point": 600],
        ]
        
        //練習12
        // image: String, name: String, point: Int を含むstructを作成する（名前はAnimal）
        // datasから、配列animals: [Animal]を作成する
        // animalsをdumpする
    }
}
