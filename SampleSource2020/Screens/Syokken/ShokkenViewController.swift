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
// 今、注文が文字列ordersで与えられている（食券機からデータが送られてきたっていう設定）
// "A-L"はAランチ "B-L"はBランチ　"C-L"はCランチ　"RAMEN"はラーメン　"FRIED RICE"はチャーハン "GINGER-T"は生姜焼き定食

// 課題1. UITableViewを用いて、注文の一覧を表示する（例えば"A-L"の場合は、「Aランチ」と表示する）
//       if文か、switch文でやる

// 課題2. cellに値段も併記する
//       Aランチ: 550円　Bランチ: 600円　Cランチ: 850円　ラーメン:550円　チャーハン: 450円　生姜焼き定食: 1050円
//       if文か、switch文でやる

// 課題3-1. Aランチ、Bランチ、Cランチ、ラーメン、チャーハン、生姜焼き定食　を「enum Order」として定義する
// 課題3-2. order: Stringから、Orderに変換するfuncを作る
// 課題3-3. enum Orderの中に、titleを返すfuncを作成し、cellを生成する時に使用する
// 課題3-4. enum Orderの中に、priceを返すfuncを作成し、cellを生成する時に使用する

// 課題4. Aランチは「ご飯、味噌汁、ハンバーグ、目玉焼き」
//       Bランチは「ご飯、味噌汁、とんかつ、サラダ」
//       Cランチは「ご飯、味噌汁、ステーキ、サラダ、卵焼き」 でできているとする
//       enum Orderの中に、構成される一品一品を配列で返すdishesというfuncを作成してprintしてみる
//       なお、ランチ以外、例えばラーメンの場合は「ラーメン」だけにする

// 課題5. ordersの合計金額を求める（for i in）


class ShokkenViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let orders: [String] = ["A-L", "B-L", "C-L", "RAMEN", "FRIED RICE", "GINGER-T", "A-L", "A-L", "B-L", "RAMEN", "GINGER-T", "C-L", "C-L", "RAMEN", "FRIED RICE", "RAMEN", "B-L", "C-L", "RAMEN", "FRIED RICE"]
    

    // A-Lなどから、Order.Aランチなどに変換
    func henkan(order: String) -> Order {
        if order == "A-L" {
            return Order.Aランチ
        }else if order == "B-L"{
            return Order.Bランチ
        }else if order == "C-L"{
            return Order.Cランチ
        }else if order == "RAMEN"{
            return Order.ラーメン
        }else if order == "FRIED RICE"{
            return Order.チャーハン
        }else {
            return Order.生姜焼き定食
        }
    }
    
    enum Order: String {
        case Aランチ
        case Bランチ
        case Cランチ
        case ラーメン
        case チャーハン
        case 生姜焼き定食
        
        func getTitle() -> String{
            switch self {
            case .Aランチ:
                return "Aランチ"
            case .Bランチ:
                return "Bランチ"
            case .Cランチ:
                return "Cランチ"
            case .ラーメン:
                return "ラーメン"
            case .チャーハン:
                return "チャーハン"
            case .生姜焼き定食:
                return "生姜焼き定食"
            }
        }
        
        func getPrice() -> Int{
            switch self {
            case .Aランチ:
                return 550
            case .Bランチ:
                return 600
            case .Cランチ:
                return 850
            case .ラーメン:
                return 550
            case .チャーハン:
                return 450
            case .生姜焼き定食:
                return 1050
            }
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v = henkan(order: orders[1])
        print(v, "☀️")
    }
}


extension  ShokkenViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShokkenTableViewCell") as! ShokkenTableViewCell
        
//        cell.label.text = orders[indexPath.row]
        
//        if orders[indexPath.row] == "A-L" {
//            cell.label.text = "Aランチ"
//        }
        
        let orderString: String = orders[indexPath.row]     // orderStringは、例えば"A-L"
        //↓ここで結びつけている！！！
        let orderrrr: Order = henkan(order: orderString)      // orderは、例えばOrder.Aランチ
        
        cell.label.text = orderrrr.getTitle()
        cell.priceLabel.text = "\(orderrrr.getPrice())" + "円"
        //上のやつの長いバージョン
//        switch order  {
//        case "A-L":
//            cell.label.text = "Aランチ"
//            cell.priceLabel.text = "\(550)" + "円"
//        case "B-L":
//            cell.label.text = "Bランチ"
//            cell.priceLabel.text = "\(600)" + "円"
//        case "C-L":
//            cell.label.text = "Cランチ"
//            cell.priceLabel.text = "\(850)" + "円"
//        case "RAMEN":
//            cell.label.text = "ラーメン"
//            cell.priceLabel.text = "\(550)" + "円"
//        case "FRIED RICE":
//            cell.label.text = "チャーハン"
//            cell.priceLabel.text = "\(450)" + "円"
//        case "GINGER-T":
//            cell.label.text = "生姜焼き定食"
//            cell.priceLabel.text = "\(1050)" + "円"
//        default:
//            cell.label.text = "なし"
//            cell.priceLabel.text = "\(0)" + "円"
//        }
//
        
        return cell
    }
}
