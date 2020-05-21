//
//  MagazinesViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/17.
//

import UIKit
//SFSafariViewControllerを使うためにはimportを書く必要がある(urlを開く機能)。
import SafariServices

// 課題 雑誌一覧を作成する

// 手順と仕様
//   struct Magazineを定義する（雑誌名、出版社、画像名、公式、号、発売日）
//   Magazineの配列を二つ作る、女性誌と男性誌
//   DictionaryArrayのデータからMagazine配列に変換する
//   MagazineTableViewCellを作成する デザインは　https://www.figma.com/file/uHnA49aAOtyLaDEzQ6wVVj/Untitled?node-id=0%3A1
//   section2つで、雑誌一覧をUITableViewで表示する
//   section header viewを作る　デザインは　https://www.figma.com/file/uHnA49aAOtyLaDEzQ6wVVj/Untitled?node-id=0%3A1
//   セルをタップすると、該当のURLが開くようにする

// ヒント
//   imageはUIImage(named: imageName)で取得できる
//   URL型は、URL(string: )で作成できる
//   セルをタップしたときにはSFSafariViewControllerを使う
//       let vc = SFSafariViewController(url: url)
//       present(vc, animated: true, completion: nil)


//structをclassの外に書くと、他のファイルでも使えるようになる。メンバー変数。たくさんのデータをまとめて扱いやすくする。オブジェクト思考。
struct MagazineDatas {
    var name: String
    var publisher: String
    var image: String
    var url: String
    var releaseDate: String
}

class MagazinesViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    /// 女性誌のデータ
    let magazineForWomenDatas: [[String: Any]] = [
        ["name": "美人百花", "publisher": "角川春樹事務所", "image": "517gmcCi3CL", "url": "https://bijinhyakka.com/", "number": "2020年6月号", "releaseDate": "2020/5/12"],
        ["name": "with", "publisher": "講談社", "image": "517800f1-6L", "url": "https://withonline.jp/newbook", "number": "2020年6月号", "releaseDate": "2020/4/27"],
        ["name": "Popteen", "publisher": "角川春樹事務所", "image": "51nxS7zfyxL", "url": "http://www.galspop.jp/", "number": "2020年6月号", "releaseDate": "2020/4/30"],
        ["name": "セブンティーン", "publisher": "集英社", "image": "51hBrpD+L6L", "url": "https://st-channel.jp/", "number": "2020年6月・7月合併号", "releaseDate": "2020/4/30"],
        ["name": "BAILA", "publisher": "集英社", "image": "51OvU46hASL", "url": "https://baila.hpplus.jp/", "number": "2020年6月・7月合併号", "releaseDate": "2020/5/12"],
        ["name": "non-no", "publisher": "集英社", "image": "51PgurKtlpL", "url": "https://nonno.hpplus.jp/", "number": "2020年7・8月合併号", "releaseDate": "2020/5/20"],
        ["name": "MORE", "publisher": "集英社", "image": "51qXYa9jplL", "url": "https://more.hpplus.jp/", "number": "2020年06・07月合併号", "releaseDate": "2020/4/27"]
    ]
    /// 男性誌のデータ
    let magazineForMenDatas: [[String: Any]] = [
        ["name": "FINEBOYS", "publisher": "日之出出版", "image": "519DzIk6ncL", "url": "http://fineboys-online.jp/", "number": "2020年06月号", "releaseDate": "2020/5/9"],
        ["name": "men's FUDGE", "publisher": "三栄書房", "image": "51p3rh6-x4L", "url": "https://mensfudge.jp/", "number": "2020年6月・7月合併号 Vol.123", "releaseDate": "2020/4/25"],
        ["name": "MEN'S NON-NO", "publisher": "集英社", "image": "71zrMHexE2L", "url": "https://www.mensnonno.jp/", "number": "2020年06月号", "releaseDate": "2020/5/9"],
        ["name": "SENSE", "publisher": "株式会社センス", "image": "41gjy2ft6iL", "url": "https://blacksense.jp/", "number": "2020年05月号", "releaseDate": "2020/4/9"],
        ["name": "UOMO", "publisher": "集英社", "image": "51UrcXU9evL", "url": "http://www.webuomo.jp/", "number": "2020年06・07月合併号", "releaseDate": "2020/4/25"],
        ["name": "smart", "publisher": "宝島社", "image": "61rk1YYSajL", "url": "https://smartmag.jp/", "number": "2020年6月号", "releaseDate": "2020/4/25"],
        ["name": "LEON", "publisher": "主婦と生活社", "image": "51rTP73jdcL", "url": "https://www.leon.jp/", "number": "2020年06・07月号", "releaseDate": "2020/4/25"]
    ]
    
    var womenArr: [MagazineDatas] = []
    var menArr: [MagazineDatas] = []
    var genders : [String] = ["女性誌", "男性誌"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for dictionary in magazineForWomenDatas {
            let womenData = MagazineDatas(name: dictionary["name"] as! String,
                                          publisher: dictionary["publisher"] as! String,
                                          image: dictionary["image"] as! String,
                                          url: dictionary["url"] as! String,
                                          releaseDate: dictionary["releaseDate"] as! String)
            womenArr.append(womenData)
        }
        
        dump(womenArr)
        
        
        
        for dictionary in magazineForMenDatas {
            let menData = MagazineDatas(name: dictionary["name"] as! String,
                                        publisher: dictionary["publisher"] as! String,
                                        image: dictionary["image"] as! String,
                                        url: dictionary["url"] as! String,
                                        releaseDate: dictionary["releaseDate"] as! String)
            menArr.append(menData)
        }
        
        dump(menArr)
        
    }
    
}


extension MagazinesViewController: UITableViewDataSource, UITableViewDelegate {
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "MagazinesTableViewCell") as! MagazinesTableViewCell
        
        if indexPath.section == 0 {
            let magazineDatas: MagazineDatas = womenArr[indexPath.row]
            cell.setup(magazineData: magazineDatas)
//            ★別の書き方
//            cell.coverImage.image = UIImage(named: womenArr[indexPath.row].image)
//            cell.nameLabel.text = womenArr[indexPath.row].name
//            cell.publisherLabel.text = womenArr[indexPath.row].publisher
//            cell.releaseDateLabel.text = womenArr[indexPath.row].releaseDate
        } else {
            let magazineDatas: MagazineDatas = menArr[indexPath.row]
            cell.setup(magazineData: magazineDatas)
//            ★別の書き方
//            cell.coverImage.image = UIImage(named: menArr[indexPath.row].image)
//            cell.nameLabel.text = menArr[indexPath.row].name
//            cell.publisherLabel.text = menArr[indexPath.row].publisher
//            cell.releaseDateLabel.text = menArr[indexPath.row].releaseDate
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //tableViewはボタンと違って選んだやつの色が灰色になった後、自動で白に戻らない。下記の記述が必要。
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 {
            if let url = URL(string: womenArr[indexPath.row].url) {
                let vc = SFSafariViewController(url: url)
                present(vc, animated: true, completion: nil)
            } else {
                if let url = URL(string: menArr[indexPath.row].url) {
                    let vc = SFSafariViewController(url: url)
                    present(vc, animated: true, completion: nil)
                }
            }
        }
    }
    
        
    // section header の数
    func numberOfSections(in tableView: UITableView) -> Int {
        return genders.count
    }
    
    // section header のタイトル
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return genders[section] as String
    }
    
    // section header の高さ
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44.0
    }
    // section header の詳細を決める
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerViewCell = tableView.dequeueReusableCell(withIdentifier: "MagazineHeaderTableViewCell") as! MagazineHeaderTableViewCell
        
        headerViewCell.sectionTitleLabel.text = genders[section]
//        headerViewCell.backgroundColor = .white
        return headerViewCell
    }
}

