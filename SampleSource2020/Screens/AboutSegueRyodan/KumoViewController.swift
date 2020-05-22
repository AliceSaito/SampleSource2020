//
//  KumoViewController.swift
//  SampleSource2020
//
//  Created by 斉藤アリス on 2020/05/22.
//

import UIKit


struct Profile {
    var name: String
    var image: String
    var number: String
    var type : String
    var technique: [String]
}

class KumoViewController: UIViewController {
    
    
    @IBAction func tappedButton0(_ sender: Any) {
        performSegue(withIdentifier: "daninViewController", sender: daninArr[0])
    }
    
    @IBAction func tappedButton1(_ sender: Any) {
        performSegue(withIdentifier: "daninViewController", sender: daninArr[1])
    }
    
    @IBAction func tappedButton2(_ sender: Any) {
        performSegue(withIdentifier: "daninViewController", sender: daninArr[2])
    }
    
    @IBAction func tappedButton3(_ sender: Any) {
        performSegue(withIdentifier: "daninViewController", sender: daninArr[3])
    }
    
    @IBAction func tappedButton4(_ sender: Any) {
        performSegue(withIdentifier: "daninViewController", sender: daninArr[4])
    }
    
    @IBAction func tappedButton5(_ sender: Any) {
        performSegue(withIdentifier: "daninViewController", sender: daninArr[5])
    }
    
    @IBAction func tappedButton6(_ sender: Any) {
        performSegue(withIdentifier: "daninViewController", sender: daninArr[6])
    }
    
    @IBAction func tappedButton7(_ sender: Any) {
        performSegue(withIdentifier: "daninViewController", sender: daninArr[7])
    }
    
    @IBAction func tappedButton8(_ sender: Any) {
        performSegue(withIdentifier: "daninViewController", sender: daninArr[8])
    }
    
    @IBAction func tappedButton9(_ sender: Any) {
        performSegue(withIdentifier: "daninViewController", sender: daninArr[9])
    }
    
    @IBAction func tappedButton10(_ sender: Any) {
        performSegue(withIdentifier: "daninViewController", sender: daninArr[10])
    }
    
    @IBAction func tappedButton11(_ sender: Any) {
        performSegue(withIdentifier: "daninViewController", sender: daninArr[11])
    }
    
    @IBAction func tappedButton12(_ sender: Any) {
        performSegue(withIdentifier: "daninViewController", sender: daninArr[12])
    }
    
    
    
    let daninContent: [[String: Any]] = [
        ["name": "クロロ＝ルシルフル", "image": "kuroro", "number": "団長", "type": "特質系", "technique":[ "盗賊の極意（スキルハンター）"]],
        ["name": "ノブナガ＝ハザマ", "image": "nobunaga", "number": "1", "type": "強化系", "technique": ["？？？"]],
        ["name": "フェイタン＝ポーオト", "image": "feitan", "number": "2", "type": "変化系", "technique": ["許されざる者（ペインバッカー）", "太陽に灼かれて（ライジングサン）"]],
        ["name": "マチ＝コマチネ", "image": "machi", "number": "3", "type": "変化系", "technique": ["念糸縫合"]],
        ["name": "ヒソカ＝モロウ", "image": "hisoka", "number": "4", "type": "変化系", "technique": ["伸縮自在の愛（バンジーガム）", "薄っぺらな嘘（ドッキリテクスチャー）"]],
        ["name": "フィンクス＝マグカブ", "image": "finks", "number": "5", "type": "強化系", "technique": ["廻天（リッパーサイクロトロン）"]],
        ["name": "シャルナーク", "image": "charnark", "number": "6", "type": "操作系", "technique": ["携帯する他人の運命（ブラックボイス）"]],
        ["name": "フランクリン＝ボルドー", "image": "frankrin", "number": "7", "type": "放出系", "technique": ["俺の両手は機関銃（ダブルマシンガン）"]],
        ["name": "シズク＝ムラサキ", "image": "shizuku", "number": "8", "type": "具現化系", "technique": ["デメちゃん"]],
        ["name": "パクノダ", "image": "paknoda", "number": "9", "type": "特質系", "technique": ["記憶弾（メモリーボム）"]],
        ["name": "ボノレノフ＝ンドンゴ", "image": "bonorenofu", "number": "10", "type": "具現系", "technique": ["戦闘演武曲（バト＝レ・カンタービレ）", "木星（ジュピター）"]],
        ["name": "ウボォーギン", "image": "uvogin", "number": "11", "type": "強化系", "technique": ["超破壊拳（ビックバンインパクト）"]],
        ["name": "コルトピ＝トノフメイル", "image": "coltopi", "number": "12", "type": "具現化系", "technique":[ "神の左手悪魔の右手（ギャラリーフェイク）"]]
    ]
    
    
  var daninArr: [Profile] = []
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for dictionary in daninContent {
            let daninData = Profile(name: dictionary["name"] as! String,
                                    image: dictionary["image"] as! String,
                                    number: dictionary["number"] as! String,
                                    type: dictionary["type"] as! String,
                                    technique: dictionary["technique"] as! [String])
            daninArr.append(daninData)
        }
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "daninViewController" {
            let vc = segue.destination as! DaninViewController
            let profile = sender as! Profile
            vc.selectedData = profile
        }
    }

  
}
