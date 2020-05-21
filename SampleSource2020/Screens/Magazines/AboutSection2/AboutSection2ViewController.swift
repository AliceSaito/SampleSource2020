//
//  AboutSection2ViewController.swift
//  SampleSource2020
//
//  Created by 斉藤アリス on 2020/05/12.
//

import UIKit

// 問題：TableViewに地方名をセクションタイトルにした、都道府県名を表示する
// 参考：SUUMOで「都道府県を選択する」を押すと似た画面が出てきます
// 参考：下に都道府県有り

class AboutSection2ViewController: UIViewController {
    
    @IBOutlet weak var areaTableView: UITableView!
    
    var todofuken: [String: [String]] = [
        "北海道" : ["北海道"],
        "東北" : ["青森県", "岩手県"],
        "関東" : ["東京都", "神奈川県", "千葉県", "埼玉県", "茨城県", "栃木県", "群馬県"],
        "甲信越・北陸" : ["山梨県","長野県", "新潟県", "富山県", "石川県","福井県"],
        "東海" : ["愛知県", "静岡県", "岐阜県", "三重県"],
        "中国" : ["岡山県","広島県", "鳥取県", "島根県", "山口県"],
        "関西" : ["大阪府","兵庫県", "京都府", "滋賀県", "奈良県", "和歌山県"],
        "四国" : ["愛媛県", "香川県", "高知県", "徳島県"],
        "九州・沖縄" : ["福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県", "沖縄県"]
    ]
    
    var regions: [String] = ["北海道", "東北", "関東", "甲信越・北陸", "東海", "中国", "関西", "四国", "九州・沖縄"]
}

extension AboutSection2ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return regions.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let regionName: String = regions[section]
        let list: [String] = todofuken[regionName] ?? []
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let key = regions[indexPath.section]
        let prefectureName: [String] = todofuken[key] ?? []
        cell.textLabel?.text = prefectureName[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return regions[section] as String
    }
    
   
}
