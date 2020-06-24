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
    
//例1　呼び出し方。viewDidLoadはViewControllerでしか呼び出せない。
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
        //rawValueは"セダン"のこと。
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
    let million: Int = 13795730360
    
    @IBOutlet weak var redview: UIView!
    
    func getSize() -> CGSize {
        //view　：ViewControllerの一番下にあるviewのサイズ
        //self.view.boundsはサイズ。 例）x0y0width200height300
        //self.view.frameは位置とサイズ。例）x100y100width200height300
        return self.view.bounds.size
    }
    
    //呼び出し。viewDidLoadはViewControllerでしか呼び出せない。
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //例1
        let h = HogeHogeHoge()
        h.showTitle()
        
        // 例2
        let str: String = "iPhone"
        str.doublePrint()
        
        // 例3
        let cartype:CarType = CarType.セダン
        print(cartype.rawValue)
        print(cartype.getRawName())
        print(CarType.セダン)
        
        
        // 課題1.
        showIdentifier()
        
        // 課題2.
        identifier.lastLetter()
        
        // 課題3.
        showSize()
        
        // 課題4.
        let s : String = million.makeMoney()
        print(s)
        
        // 下の方法でも呼べる
        let a: Int = 20
        a.changeToYen()
        
        //簡易版の呼び方
        10.changeToYen()
        
        // 課題5.
        redview.ellipse()
        
    }

}


// 課題1. AboutExtensionViewControllerを拡張して、identifierをprintする関数を作り実行する

extension AboutExtensionViewController {
    
    func showIdentifier() {
        print(identifier)
    }
}

// 課題2. Stringを拡張して、自分自身の最後の１字をprintする関数を作り、identifierに対して実行する

extension String {
    func lastLetter() {
        print(self.suffix(1))
    }
}

// 課題3. AboutExtensionViewControllerを拡張して、関数showSize()を作る。この中でgetSize()を使って、sizeをprintする。

extension AboutExtensionViewController {
    func showSize() {
        print(getSize())
    }
}


// 課題4. Intを拡張して、「12345」を「¥ 12,345」の文字列にする関数を作る（ちょっと難しいので、下の方に答えを載せておく）
extension Int {
    func makeMoney() ->String {
        return changeToYen()
    }
    
    func changeToYen() ->String {
        let f = NumberFormatter()
        // 先頭に通貨記号が付与される。ロケールが日本なら¥記号
        //NumberFormatterに下の３つを追加する
        f.numberStyle = .currency
        f.groupingSeparator = ","
        f.groupingSize = 3
        //.string(from: NSNumber(value: self)) で返す。ファクトリーパターン。
        return f.string(from: NSNumber(value: self))!
    }
}


// 課題5. viewを楕円形にする関数（ellipse）を作成する

extension UIView {
    
    func ellipse() {
        self.layer.cornerRadius = (self.frame.width > self.frame.height) ? self.frame.height/2.0 : self.frame.width/2.0
        self.clipsToBounds = true
    }
}


//三項演算子
//        aa == 1 ? print("1") : print("2")
//↓を一行で書くと↑
//        if aa == 1 {
//            print("1")
//        }
//        else {
//            print("2")
//        }





// 課題4の別解答
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



// 長内が前に作ったExtension例

extension String {
    
    /// 3文字毎にカンマを付ける
    func addComma() -> String {
        let num = Int(self)
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal
        formatter.groupingSeparator = ","
        formatter.groupingSize = 3
        return formatter.string(from: NSNumber(value:num!))!
    }
    
    /// emptyの時にemptyTextを代入するinit
    init(string:String?, emptyText:String) {
        if let string = string {
            if string.isEmpty {
                self = emptyText
            }
            else {
                self = string
            }
        }
        else {
            self = emptyText
        }
    }
    
    /// emptyだったらtextを返す
    func emptyText(text:String) -> String{
        if (self.isEmpty) {
            return text
        }
        else {
            return self
        }
    }
    
    /// emptyかどうか
    static func isEmpty(string:String?) -> Bool {
        guard let string = string else {
            return true
        }
        return string.isEmpty
    }
    
    /// emptyではない
    var isNotEmpty: Bool {
        return !isEmpty
    }
 
}

/// height
extension String {
    /// Stringの高さを求める
    func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [ .font: font], context: nil)
        
        return ceil(boundingBox.height)
    }
    
    /// Stringの幅を求める
    func width(withConstrainedHeight height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [.font: font], context: nil)
        
        return ceil(boundingBox.width)
    }
}

/// StringのOptional
extension Optional where Wrapped == String {
    
    func emptyText(text:String) -> String {
        if let s = self {
            return s.emptyText(text: text)
        }
        else {
            return text
        }
    }
    
}

extension UIView {
    /// 角丸を設定する
    func corner(radius:CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
}

extension UIView {
    
    /// viewを楕円にする
    func ellipse_(borderColor: UIColor = .clear, borderWidth: CGFloat = 0) {
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        
        self.layer.cornerRadius = (self.frame.width > self.frame.height) ? self.frame.height/2.0 : self.frame.width/2.0
        self.clipsToBounds = true
    }
    
    /// viewにborderを設定する
    func border(borderColor:UIColor, borderWidth:CGFloat) {
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
    }
}

extension Array where Element: Equatable {
    
    /// Arrayの中の重複したものを取り除く
    mutating func removeDuplicates() {
        var result = [Element]()
        for value in self {
            if !result.contains(value) {
                result.append(value)
            }
        }
        self = result
    }
}

