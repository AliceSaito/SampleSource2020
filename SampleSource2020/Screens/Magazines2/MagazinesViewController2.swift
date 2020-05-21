//  MagazinesViewController2.swift
//  SampleSource2020
//
//

import UIKit
//SFSafariViewControllerを使うためにはimportを書く必要がある(urlを開く機能)。
import SafariServices



//structをclassの外に書くと、他のファイルでも使えるようになる。メンバー変数。たくさんのデータをまとめて扱いやすくする。オブジェクト思考。
struct MagazineDatas2 {
    var name: String
    var publisher: String
    var image: String
    var url: String
    var releaseDate: String
    var type : String
}

class MagazinesViewController2: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    

//    let magazineForWomenDatas2: [[String: Any]] = [
        /// 雑誌のデータ
        let magazineContents: [[String: Any]] = [
            ["name": "美人百花", "publisher": "角川春樹事務所", "image": "517gmcCi3CL", "url": "https://bijinhyakka.com/", "number": "2020年6月号", "releaseDate": "2020/5/12", "type": "female"],
            ["name": "with", "publisher": "講談社", "image": "517800f1-6L", "url": "https://withonline.jp/newbook", "number": "2020年6月号", "releaseDate": "2020/4/27", "type": "female"],
            ["name": "Popteen", "publisher": "角川春樹事務所", "image": "51nxS7zfyxL", "url": "http://www.galspop.jp/", "number": "2020年6月号", "releaseDate": "2020/4/30", "type": "female"],
            ["name": "セブンティーン", "publisher": "集英社", "image": "51hBrpD+L6L", "url": "https://st-channel.jp/", "number": "2020年6月・7月合併号", "releaseDate": "2020/4/30", "type": "female"],
            ["name": "BAILA", "publisher": "集英社", "image": "51OvU46hASL", "url": "https://baila.hpplus.jp/", "number": "2020年6月・7月合併号", "releaseDate": "2020/5/12", "type": "female"],
            ["name": "non-no", "publisher": "集英社", "image": "51PgurKtlpL", "url": "https://nonno.hpplus.jp/", "number": "2020年7・8月合併号", "releaseDate": "2020/5/20", "type": "female"],
            ["name": "MORE", "publisher": "集英社", "image": "51qXYa9jplL", "url": "https://more.hpplus.jp/", "number": "2020年06・07月合併号", "releaseDate": "2020/4/27", "type": "female"],
            ["name": "FINEBOYS", "publisher": "日之出出版", "image": "519DzIk6ncL", "url": "http://fineboys-online.jp/", "number": "2020年06月号", "releaseDate": "2020/5/9", "type": "male"],
            ["name": "men's FUDGE", "publisher": "三栄書房", "image": "51p3rh6-x4L", "url": "https://mensfudge.jp/", "number": "2020年6月・7月合併号 Vol.123", "releaseDate": "2020/4/25", "type": "male"],
            ["name": "MEN'S NON-NO", "publisher": "集英社", "image": "71zrMHexE2L", "url": "https://www.mensnonno.jp/", "number": "2020年06月号", "releaseDate": "2020/5/9", "type": "male"],
            ["name": "SENSE", "publisher": "株式会社センス", "image": "41gjy2ft6iL", "url": "https://blacksense.jp/", "number": "2020年05月号", "releaseDate": "2020/4/9", "type": "male"],
            ["name": "UOMO", "publisher": "集英社", "image": "51UrcXU9evL", "url": "http://www.webuomo.jp/", "number": "2020年06・07月合併号", "releaseDate": "2020/4/25", "type": "male"],
            ["name": "smart", "publisher": "宝島社", "image": "61rk1YYSajL", "url": "https://smartmag.jp/", "number": "2020年6月号", "releaseDate": "2020/4/25", "type": "male"]
        ]
    
    var womenArr: [MagazineDatas2] = []
    var menArr: [MagazineDatas2] = []
    
    // イカした方法
//    var womenArr: [MagazineDatas2] {
//        return magazineArr.filter{ $0.type == "female" }
//    }
//    var menArr: [MagazineDatas2] {
//        return magazineArr.filter{ $0.type == "male" }
//    }
    
    func womenArry() -> [MagazineDatas2] {
        return magazineArr.filter{ $0.type == "female" }
    }
    
    var magazineArr: [MagazineDatas2] = []
    
    var genders : [String] = ["女性誌", "男性誌"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for dictionary in magazineContents{
            let magazineData = MagazineDatas2(name: dictionary["name"] as! String,
                                          publisher: dictionary["publisher"] as! String,
                                          image: dictionary["image"] as! String,
                                          url: dictionary["url"] as! String,
                                          releaseDate: dictionary["releaseDate"] as! String,
                                          type: dictionary["type"] as! String)
            magazineArr.append(magazineData)
        }
        
        dump(magazineArr)

        for magazine in magazineArr {
            if magazine.type == "female"{
                 womenArr.append(magazine)
            } else {
                menArr.append(magazine)
            }
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "webViewController" {
            let vc = segue.destination as! WebViewController
            let u = sender as! URL
            vc.selectedUrl = u
        }
        
    }
    
}


extension MagazinesViewController2: UITableViewDataSource, UITableViewDelegate {
    //sectionに対してrowは何行ありますか？
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return womenArr.count
        } else {
            //0でも1でもない場合を書くのを省略するために、if section == 1 を書かずelseでまとめた。
             return menArr.count
        }
    }
    
    
    //csectionがコレで、rowがコレの時に、このcellを返してください。
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MagazinesTableViewCell2") as! MagazinesTableViewCell2
        
        if indexPath.section == 0 {
            let magazineDatas2: MagazineDatas2 = womenArr[indexPath.row]
            cell.setup(magazineData2: magazineDatas2)

        } else {
            let magazineDatas2: MagazineDatas2 = menArr[indexPath.row]
            cell.setup(magazineData2: magazineDatas2)

        }
        
        return cell
    }
    
    //URLの設定
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //tableViewはボタンと違って選んだやつの色が灰色になった後、自動で白に戻らない。下記の記述が必要。
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 {
            if let url = URL(string: womenArr[indexPath.row].url) {
                let vc = SFSafariViewController(url: url)
                present(vc, animated: true, completion: nil)
            }
        }else {
            if let url = URL(string: menArr[indexPath.row].url) {
                performSegue(withIdentifier: "WebViewController", sender: url)
    
            }
        }
    }
    
        
    // section header の数
    func numberOfSections(in tableView: UITableView) -> Int {
        return genders.count
    }
    
//    // section header のタイトル
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//
//        return genders[section] as String
//    }
//
    // section header の高さ
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44.0
    }
    // section header の詳細を決める
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerViewCell = tableView.dequeueReusableCell(withIdentifier: "MagazineHeaderTableViewCell2") as! MagazineHeaderTableViewCell2
        
        headerViewCell.sectionTitleLabel.text = genders[section]
//        headerViewCell.backgroundColor = .white
        return headerViewCell
    }
}

