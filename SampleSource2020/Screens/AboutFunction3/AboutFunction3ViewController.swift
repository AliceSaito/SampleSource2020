//
//  AboutFunction3ViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/07.
//

import UIKit

class AboutFunction3ViewController: UIViewController {
    
    // 問題11
    // 引数が「path: String」の関数を作成する
    // 関数名はcreateUrl
    // 関数は"https://"にpathを繋げたものをURL型にしたものを返す
    // ヒント：URL(string:)
    // viewDidLoadでpathに"www.yahoo.co.jp"を渡す
    
    func createUrl(path: String) -> (String){
        let url = "http:\(path)"
        return url
    }
    
    
    // 問題12
    // 引数が「bigR: CGFloat, smallR: CGFloat」の関数を作成する
    // 関数名はcalcMenseki
    // 関数は、大きな円の面積から、小さな円の面積を引いた値を返す（CGFloat型）
    // 関数は、下に定義した「func calcMensekiOfCircle(r: CGFloat) -> CGFloat」を使用する
    // viewDidLoadで適当に呼んで結果をprintしてみる
    // なおbigRがsmallRより小さい場合は0を返すものとする
    
    
    func calcMenseki(bigR: CGFloat, smallR: CGFloat) -> CGFloat{
        return self.calcMensekiOfCircle(r: bigR) - self.calcMensekiOfCircle(r: smallR)
    }
    
    // 問題13
    // 引数が「title: String, backgroundColor: UIColor」の関数を作る
    // 関数名はcreateMyButton
    // 関数はUIButtonを作成して返す
    // ヒント：
    // let button: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    // button.setTitle("a", for: UIControl.State.normal)
    // button.backgroundColor = .red
    
    
    func createMyButton(title: String, backgroundColor: UIColor) -> UIButton{
        let button: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        button.setTitle(title, for: UIControl.State.normal)
        button.backgroundColor = backgroundColor
        return button
    }
    
    // 問題14
    // 引数が「fontSize: CGFloat, text: String, color: UIColor」の関数を作る
    // 関数名はcreateMyLabel
    // 関数はUILabelを作成して返す
    
    func createMyLabel(fontSize: CGFloat, text: String, color: UIColor) -> UILabel{
        let label = UILabel()
        label.frame = CGRect(x:150, y:200, width:160, height:30)
        label.text = text
        label.textColor = color
        label.font = label.font.withSize(fontSize)
        return label
    }
    
    
    /// 関数の仕様
    /// - Parameters:
    ///   - fontSize: labelのフォントサイズ（CGFloat）
    ///   - text: labelのテキスト (String)
    ///   - color: labelのテキストカラー (UIColor)
    /// - Returns: 生成したLabel

    // ヒント: UILabel使い方
    // let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    // label.font = UIFont.systemFont(ofSize: 12)
    // label.text = "abcde"
    // label.textColor = UIColor.red

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newAcount = createUrl(path:"mike.com")
        print(newAcount)
        
        let en = calcMenseki(bigR: 100, smallR: 10)
        print(en)
        
        let b = createMyButton(title: "SAVE", backgroundColor: .blue)
        print(b)
        self.view.addSubview(b)
        
        let la = createMyLabel(fontSize: 20, text: "ラベル", color: .red)
        self.view.addSubview(la)
        
        
        
    }
}


////////////////////////////////////////

extension AboutFunction3ViewController {
    
    /// 円の面積を求める
    /// - Parameters:
    ///   - r: 円の半径
    /// - Returns: 面積
    func calcMensekiOfCircle(r: CGFloat) -> CGFloat {
        return r * r * CGFloat.pi
    }
}
