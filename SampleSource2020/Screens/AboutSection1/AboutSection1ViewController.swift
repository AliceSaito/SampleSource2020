//
//  AboutSection1ViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/11.
//

import UIKit

// 問題：TableViewに地方名をセクションタイトルにした、都道府県名を表示する
// 参考：SUUMOで「都道府県を選択する」を押すと似た画面が出てきます
// 参考：下に都道府県有り

// ※表示するデータを作成してから表示してください

class Todofuken {
    var regionName : String?
    var prefectureName : [String]?
    
    init(regionName: String, prefectureName : [String]) {
        self.regionName = regionName
        self.prefectureName = prefectureName
    }
}

class AboutSection1ViewController: UIViewController {
    
    @IBOutlet weak var areaTableView: UITableView!
    
    var todofuken = [Todofuken]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createPrefs()
    }
    
    func createPrefs() {
        todofuken.append(Todofuken.init(regionName:"北海道", prefectureName:["北海道"]))
        todofuken.append(Todofuken.init(regionName:"東北", prefectureName:["青森県", "岩手県", "秋田県", "宮城県", "山形県", "福島県"]))
        todofuken.append(Todofuken.init(regionName:"関東", prefectureName:["東京都", "神奈川県", "千葉県", "埼玉県", "茨城県", "栃木県", "群馬県"]))
        todofuken.append(Todofuken.init(regionName:"甲信越・北陸", prefectureName:["山梨県","長野県", "新潟県", "富山県", "石川県","福井県"]))
        todofuken.append(Todofuken.init(regionName:"東海", prefectureName:["愛知県", "静岡県", "岐阜県", "三重県"]))
        todofuken.append(Todofuken.init(regionName:"中国", prefectureName:["岡山県","広島県", "鳥取県", "島根県", "山口県"]))
        todofuken.append(Todofuken.init(regionName:"関西", prefectureName:["大阪府","兵庫県", "京都府", "滋賀県", "奈良県", "和歌山県"]))
        todofuken.append(Todofuken.init(regionName:"四国", prefectureName:["愛媛県", "香川県", "高知県", "徳島県"]))
        todofuken.append(Todofuken.init(regionName:"九州・沖縄", prefectureName:["福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県", "沖縄県"]))
        
    }
    
}

extension AboutSection1ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return todofuken.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todofuken[section].prefectureName?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = todofuken[indexPath.section].prefectureName?[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return todofuken[section].regionName
    }
    
   
}

// "北海道"
// "北海道"

// "東北"
// "青森県"
// "岩手県"
// "秋田県"
// "宮城県"
// "山形県"
// "福島県"

// "関東"
// "東京都"
// "神奈川県"
// "千葉県"
// "埼玉県"
// "茨城県"
// "栃木県"
// "群馬県"

// "甲信越・北陸"
// "山梨県"
// "長野県"
// "新潟県"
// "富山県"
// "石川県"
// "福井県"

// "東海"
// "愛知県"
// "静岡県"
// "岐阜県"
// "三重県"

// "中国"
// "岡山県"
// "広島県"
// "鳥取県"
// "島根県"
// "山口県"

// "関西"
// "大阪府"
// "兵庫県"
// "京都府"
// "滋賀県"
// "奈良県"
// "和歌山県"

// "四国"
// "愛媛県"
// "香川県"
// "高知県"
// "徳島県"

// "九州・沖縄"
// "福岡県"
// "佐賀県"
// "長崎県"
// "熊本県"
// "大分県"
// "宮崎県"
// "鹿児島県"
// "沖縄県"


