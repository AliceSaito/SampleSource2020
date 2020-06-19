//
//  AboutExtensionViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/06/19.
//

import UIKit

/// Extensionについて学ぶ

// Extensionは、class、struct、enumなどを拡張できる

// 例1
class HogeHogeHoge {
    var title: String = "abc"
}
extension HogeHogeHoge {
    // HogeHogeHogeにshowTitle()メソッドを追加した
    func showTitle() {
        print(title)
    }
}

// 例2
// Stringをextensionで拡張する。全てのファイルに適応される。
extension String {
    func doublePrint() {
        print(self)
        print(self)
    }
}

// 例3
// enumのCarTypeを拡張する
enum CarType: String {
    case セダン = "セダン"
    case ワゴン
    case オープンカー
    case ミニバン
}
extension CarType {
    func getRawName() -> String {
        return self.rawValue
    }
}

// できないこと
// 　変数は追加できない
// 　でも、var + returnの形では定義できる

extension String {
//    var firstCharacter111: String    // これはできない
    
    var firstCharacter: String {
        return String(self.prefix(1) )     // これはできる
    }
}

// extensionにDelegateを設定できる
// DelegateMethodを切り分けて、見やすくすることが出来る
extension AboutExtensionViewController: UITableViewDelegate, UITableViewDataSource {
    // この中にUITableViewDelagate, UITableViewDataSourceに関係するものだけ書くことで見やすくする
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell(style: .default, reuseIdentifier: "cell")
    }
}

// privateをつけるとファイル内でしか通用しないようになる
private extension Int {
    var doubleInt: Int {
        return self + self
    }
}


// Extensionの使い所

// 1. 見やすくする
// 2. 既に定義されているclassを拡張する
// 3. ファイル内でだけ使える拡張を作る（private extension）


// Extensionを書く場所
// classの中ではなく、一番外に書く
extension String {      // ←ここ 一番左
}





// ------------------------------------------------------------ //



class AboutExtensionViewController: UIViewController {
    
    var identifier: String = "AboutExtension😀"
    
    // 課題1. AboutExtensionViewControllerを拡張して、identifierをprintする関数を作り実行する
    
    // 課題2. Stringを拡張して、自分自身の最後の１字をprintする関数を作り、identifierに対して実行する
    
    // 課題3. AboutExtensionViewControllerに関数showSize()を作る、この中でgetSize()を使って、sizeをprintする
    
    // 課題4. Intを拡張して、「12345」を「¥ 12,345」の文字列にする関数を作る（ちょっと難しいので、下の方に答えを載せておく）
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 例2
        let str: String = "iPhone"
        str.doublePrint()
        
        // 例3
        let cartype:CarType = CarType.セダン
        print(cartype.rawValue)
        print(cartype.getRawName())
        print(CarType.セダン)
        
        
    }
    
    
    func getSize() -> CGSize {
        return self.view.bounds.size
    }

}



















// --------- 答え --------- //

//extension Int {
//
//    func yen() -> String {
//        return "¥ " + self.addComma()
//    }
//
//    func addComma() -> String {
//        let formatter = NumberFormatter()
//        formatter.numberStyle = NumberFormatter.Style.decimal
//        formatter.groupingSeparator = ","
//        formatter.groupingSize = 3
//        return formatter.string(from: NSNumber(value: self))!
//    }
//}
//
