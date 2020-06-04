//
//  ShokkenViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/06/04.
//

import UIKit

// 食券のシステムを考える

// 要件
// この店には、Aランチ、Bランチ、Cランチ、ラーメン、チャーハン、生姜焼き定食がある
// 今、注文が文字列でordersで与えられている（食券機からデータが送られてきたっていう設定）
// "A-L"はAランチ "B-L"はBランチ　"C-L"はCランチ　"RAMEN"はラーメン　"FRIED RICE"はチャーハン "GINGER-T"は生姜焼き定食

// 課題1. UITableViewを用いて、注文の一覧を表示する（例えば"A-L"の場合は、「Aランチ」と表示する）
//       if文か、switch文でやる

// 課題2. cellに値段も併記する
//       Aランチ: 550円　Bランチ: 600円　Cランチ: 850円　ラーメン:550円　チャーハン: 450円　生姜焼き定食: 1050円
//       if文か、switch文でやる

// 課題3-1. Aランチ、Bランチ、Cランチ、ラーメン、チャーハン、生姜焼き定食　を「enum Order」として定義する
// 課題3-2. orders: [String]から、Orderに変換するfuncを作る
// 課題3-3. enum Orderの中に、titleを返すfuncを作成し、cellを生成する時に使用する
// 課題3-4. enum Orderの中に、priceを返すfuncを作成し、cellを生成する時に使用する

// 課題4. Aランチは「ご飯、味噌汁、ハンバーグ、目玉焼き」
//       Bランチは「ご飯、味噌汁、とんかつ、サラダ」
//       Cランチは「ご飯、味噌汁、ステーキ、サラダ、卵焼き」 でできているとする
//       enum Orderの中に、構成される一品一品を配列で返すdishesというfuncを作成してprintしてみる
//       なお、ランチ以外、例えばラーメンの場合は「ラーメン」だけにする

// 課題5. ordersの合計金額を求める

// 課題6. なにか仕様を１つ追加して実装してみる

class ShokkenViewController: UIViewController {

    let orders: [String] = ["A-L", "B-L", "C-L", "RAMEN", "FRIED RICE", "GINGER-T", "A-L", "A-L", "B-L", "RAMEN", "GINGER-T", "C-L", "C-L", "RAMEN", "FRIED RICE", "RAMEN", "B-L", "C-L", "RAMEN", "FRIED RICE"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
