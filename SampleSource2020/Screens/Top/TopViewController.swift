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
            CellData(identifier: "AboutFunction3", title: "関数の問題集3", subTitle: ""),
            CellData(identifier: "Renshu1", title: "練習1", subTitle: ""),
            CellData(identifier: "Renshu2", title: "練習2 多次元配列", subTitle: ""),
            CellData(identifier: "AboutSection1", title: "都道府県のTableViewを作成する", subTitle: "2020/05/11"),
            CellData(identifier: "AboutSection2", title: "都道府県のTableViewを作成する", subTitle: "2020/05/12"),
            CellData(identifier: "AboutDictionary", title: "Dictionaryについて", subTitle: "2020/05/13"),
            CellData(identifier: "Renshu3", title: "Dcitionary+TableView", subTitle: "2020/05/13"),
            CellData(identifier: "Magazines", title: "Dictionray+TableView 雑誌一覧", subTitle: "2020/05/18"),
            CellData(identifier: "Magazines2", title: "Dictionray+TableView 雑誌一覧その２", subTitle: "2020/05/19"),
            CellData(identifier: "AboutSegue", title: "画面遷移について1", subTitle: "2020/05/22"),
            CellData(identifier: "Ryodan", title: "幻影旅団メンバー情報", subTitle: "2020/05/22"),
            CellData(identifier: "RenshuAPI", title: "APIの練習（幻影旅団）", subTitle: "2020/05/25"),
            CellData(identifier: "RenshuAPI2", title: "APIの練習2", subTitle: "2020/06/01"),
            CellData(identifier: "RenshuEnum", title: "Enumの練習", subTitle: "2020/05/25"),
            CellData(identifier: "Syokken", title: "練習：食券", subTitle: "2020/06/04"),
            CellData(identifier: "RyodanCV", title: "コレクションビュー", subTitle: "2020/06/04"),
            CellData(identifier: "DrillFunction", title: "ドリル", subTitle: "2020/06/05"),
            CellData(identifier: "AboutExtension", title: "Extensionについて", subTitle: "2020/06/19"),
            CellData(identifier: "AboutDidSet", title: "willSet, didSetについて", subTitle: "2020/06/19"),
            CellData(identifier: "DrillPractice", title: "ドリル練習用", subTitle: "2020/06/19"),
            CellData(identifier: "DrillFunction2", title: "ドリル2（51問〜）", subTitle: "2020/06/24"),
            CellData(identifier: "RensyuStatic", title: "Staticの練習", subTitle: "2020/06/24"),
            CellData(identifier: "DrillClosure", title: "Closureの練習", subTitle: "2020/08/03"),
            
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
        if cellData.identifier == "Renshu1" {
            self.performSegue(withIdentifier: "Renshu1", sender: nil)
        }
        if cellData.identifier == "Renshu2" {
            self.performSegue(withIdentifier: "Renshu2", sender: nil)
        }
        if cellData.identifier == "AboutSection1" {
            self.performSegue(withIdentifier: "AboutSection1", sender: nil)
        }
        if cellData.identifier == "AboutSection2" {
            self.performSegue(withIdentifier: "AboutSection2", sender: nil)
        }
        if cellData.identifier == "AboutDictionary" {
            self.performSegue(withIdentifier: "AboutDictionary", sender: nil)
        }
        if cellData.identifier == "Renshu3" {
            self.performSegue(withIdentifier: "Renshu3", sender: nil)
        }
        if cellData.identifier == "Magazines" {
            self.performSegue(withIdentifier: "Magazines", sender: nil)
        }
        if cellData.identifier == "Magazines2" {
            self.performSegue(withIdentifier: "Magazines2", sender: nil)
        }
        if cellData.identifier == "AboutSegue" {
            self.performSegue(withIdentifier: "AboutSegue", sender: nil)
        }
        if cellData.identifier == "Ryodan" {
            self.performSegue(withIdentifier: "Ryodan", sender: nil)
        }
        if cellData.identifier == "RenshuAPI" {
            self.performSegue(withIdentifier: "RenshuAPI", sender: nil)
        }
        if cellData.identifier == "RenshuAPI2" {
            self.performSegue(withIdentifier: "RenshuAPI2", sender: nil)
        }
        if cellData.identifier == "RenshuEnum" {
            self.performSegue(withIdentifier: "RenshuEnum", sender: nil)
        }
        if cellData.identifier == "Syokken" {
            self.performSegue(withIdentifier: "Syokken", sender: nil)
        }
        if cellData.identifier == "RyodanCV" {
            self.performSegue(withIdentifier: "RyodanCV", sender: nil)
        }
        if cellData.identifier == "DrillFunction" {
            self.performSegue(withIdentifier: "DrillFunction", sender: nil)
        }
        if cellData.identifier == "AboutExtension" {
            self.performSegue(withIdentifier: "AboutExtension", sender: nil)
        }
        if cellData.identifier == "AboutDidSet" {
            self.performSegue(withIdentifier: "AboutDidSet", sender: nil)
        }
        if cellData.identifier == "DrillPractice" {
            self.performSegue(withIdentifier: "DrillPractice", sender: nil)
        }
        if cellData.identifier == "DrillFunction2" {
            self.performSegue(withIdentifier: "DrillFunction2", sender: nil)
        }
        if cellData.identifier == "RensyuStatic" {
            self.performSegue(withIdentifier: "RensyuStatic", sender: nil)
        }
        if cellData.identifier == "DrillClosure" {
            self.performSegue(withIdentifier: "DrillClosure", sender: nil)
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
