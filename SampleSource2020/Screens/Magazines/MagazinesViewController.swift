//
//  MagazinesViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/17.
//

import UIKit

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

class MagazinesViewController: UIViewController {
    
    /// 女性誌
    let magazineForWomenDatas: [[String: Any]] = [
        ["name": "美人百花", "publisher": "角川春樹事務所", "image": "517gmcCi3CL", "url": "https://bijinhyakka.com/", "number": "2020年6月号", "releaseDate": "2020/5/12"],
        ["name": "with", "publisher": "講談社", "image": "517800f1-6L", "url": "https://withonline.jp/newbook", "number": "2020年6月号", "releaseDate": "2020/4/27"],
        ["name": "Popteen", "publisher": "角川春樹事務所", "image": "51nxS7zfyxL", "url": "http://www.galspop.jp/", "number": "2020年6月号", "releaseDate": "2020/4/30"],
        ["name": "セブンティーン", "publisher": "集英社", "image": "517800f1-6L", "url": "https://st-channel.jp/", "number": "2020年6月・7月合併号", "releaseDate": "2020/4/30"],
        ["name": "BAILA", "publisher": "集英社", "image": "51OvU46hASL", "url": "https://baila.hpplus.jp/", "number": "2020年6月・7月合併号", "releaseDate": "2020/5/12"],
        ["name": "non-no", "publisher": "集英社", "image": "517800f1-6L", "url": "https://nonno.hpplus.jp/", "number": "2020年7・8月合併号", "releaseDate": "2020/5/20"],
        ["name": "MORE", "publisher": "集英社", "image": "51qXYa9jplL", "url": "https://more.hpplus.jp/", "number": "2020年06・07月合併号", "releaseDate": "2020/4/27"]
    ]
    /// 男性誌
    let magazineForMenDatas: [[String: Any]] = [
        ["name": "FINEBOYS", "publisher": "日之出出版", "image": "519DzIk6ncL", "url": "http://fineboys-online.jp/", "number": "2020年06月号", "releaseDate": "2020/5/9"],
        ["name": "men's FUDGE", "publisher": "三栄書房", "image": "51p3rh6-x4L", "url": "https://mensfudge.jp/", "number": "2020年6月・7月合併号 Vol.123", "releaseDate": "2020/4/25"],
        ["name": "MEN'S NON-NO", "publisher": "集英社", "image": "51nxS7zfyxL", "url": "https://www.mensnonno.jp/", "number": "2020年06月号", "releaseDate": "2020/5/9"],
        ["name": "SENSE", "publisher": "株式会社センス", "image": "41gjy2ft6iL", "url": "https://blacksense.jp/", "number": "2020年05月号", "releaseDate": "2020/4/9"],
        ["name": "UOMO", "publisher": "集英社", "image": "51UrcXU9evL", "url": "http://www.webuomo.jp/", "number": "2020年06・07月合併号", "releaseDate": "2020/4/25"],
        ["name": "smart", "publisher": "宝島社", "image": "61rk1YYSajL", "url": "https://smartmag.jp/", "number": "2020年6月号", "releaseDate": "2020/4/25"],
        ["name": "LEON", "publisher": "主婦と生活社", "image": "51rTP73jdcL", "url": "https://www.leon.jp/", "number": "2020年06・07月号", "releaseDate": "2020/4/25"]
    ]

    @IBOutlet weak var iv: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

