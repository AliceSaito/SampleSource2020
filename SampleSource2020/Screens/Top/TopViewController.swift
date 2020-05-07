//
//  TopViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/01.
//

import UIKit

class TopViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var cellDatas: [CellData] {
        return [
            CellData(identifier: "AboutButton", title: "UIButtonについて", subTitle: ""),
            CellData(identifier: "AboutClass", title: "Classの基本について", subTitle: "途中"),
            CellData(identifier: "AboutDatePicker", title: "UIDatePickerの使い方1", subTitle: ""),
            CellData(identifier: "AboutFunction", title: "関数の問題集1", subTitle: ""),
            CellData(identifier: "AboutFunction2", title: "関数の問題集2", subTitle: ""),
            CellData(identifier: "AboutFunction3", title: "関数の問題集3", subTitle: "")
        ]
    }
    
    /// 画面作成時に1回だけ呼ばれる
    override func viewDidLoad() {
        super.viewDidLoad()
        // nothing todo
    }
    
    /// 画面が表示された時に毎回呼ばれる（呼ばれないときも一部ある）
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)  // お決まりのコード
        // nothing todo
    }
    
    /// 画面が表示された時に毎回呼ばれる
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // nothing todo
    }

}

extension TopViewController: UITableViewDataSource, UITableViewDelegate {
    
    /// UITableViewDataSourceで定義されている
    /// セルの数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellDatas.count
    }
    
    /// UITableViewDataSourceで定義されている
    /// IndexPath番目のセルを返す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // tableViewに紐付いているCellを生成する（リサイクルされることもあり、前に使ったセルが返ってくることもある）
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopTableViewCell", for: indexPath) as! TopTableViewCell
        
        // indexPath.row番目のデータを1個だけ取り出す
        let cellData = cellDatas[indexPath.row]
        
        // データをセットする
        cell.titleLabel.text = cellData.title
        cell.subTitleLabel.text = cellData.subTitle
        
        return cell
    }
    
    /// UITableViewDelegateで定義されている
    /// セルをタップした時に呼ばれる
    /// 呼ばれた位置はindexParhで返ってくる（セクション:indexPath.sectioin, 行:indexPath.raw）
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // セレクト状態（灰色）をすぐ解除する
        tableView.deselectRow(at: indexPath, animated: true)
        
        // indexPath.row番目のデータを1個だけ取り出す
        let cellData = cellDatas[indexPath.row]
        
        if cellData.identifier == "AboutButton" {
            // 画面遷移させる
            self.performSegue(withIdentifier: "AboutButton", sender: nil)
        }
        if cellData.identifier == "AboutClass" {
            self.performSegue(withIdentifier: "AboutClass", sender: nil)
        }
        if cellData.identifier == "AboutDatePicker" {
            self.performSegue(withIdentifier: "AboutDatePicker", sender: nil)
        }
        if cellData.identifier == "AboutFunction" {
            self.performSegue(withIdentifier: "AboutFunction", sender: nil)
        }
        if cellData.identifier == "AboutFunction2" {
            self.performSegue(withIdentifier: "AboutFunction2", sender: nil)
        }
        if cellData.identifier == "AboutFunction3" {
            self.performSegue(withIdentifier: "AboutFunction3", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}


// ---------------------------------------------------- //

/// セルのデータ
struct CellData {
    var identifier: String  // 識別子
    var title: String
    var subTitle: String
}
