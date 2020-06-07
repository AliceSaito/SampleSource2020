//
//  DrillFunctionViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/06/05.
//

import UIKit

/// functionの練習
class DrillFunctionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var a = DrillFunctionViewController答え()
        a.precognition(value: 10)
        a.precognition(value: 1)
        a.precognition(value: -10)
        a.precognition(value: 100)
        a.precognition(value: 1000)
    }
    
    // ドリル1
    // 整数2つを入力して、printする関数を作成する
    // 入力: 整数2つ
    // やること: 入力したものを足してprintする
    // 出力: なし
    
    // ドリル2
    // 整数2つを与えると、それらを足したものを返す関数を作成する
    // 入力: 整数2つ
    // やること: 入力したものを足してreturnする
    // 出力: 整数, 入力を足したもの

    // ドリル3
    // 整数1つを与えると、「Input is (入力値)」とprintする関数を作成する
    // 入力: 整数1つ
    // やること: 「Input is (入力値)」の、入力値の部分に入力したものを入れて、printする
    // 出力: なし
    
    // ドリル4
    // 整数を2つ（aとb）与えると、a-bの値をprintする関数を作成する
    // 入力: 整数2つ（aとb）
    // やること: a - bをprint
    // 出力: なし
    
    // ドリル5
    // Int型の値を1つ与えると、それをString型にして返す関数を作成する
    // 入力: Int型1つ
    // やること: Int型をString型に変換して返す
    // 出力: String型、変換したもの

    // ドリル6
    // Int型の値を3つ与えると、全て足したものを返す関数を作成する
    // 入力: Int型3つ
    // やること: 足す
    // 出力: Int型
    
    // ドリル7
    // 四角形の面積を返す関数を作成する. 引数と戻り値はCGFloat型とする
    // 入力: widthとheight, CGFloat型
    // やること: 面積を計算して返す
    // 出力: CGFloat型
        
    // ドリル8
    // frame（CGRect型）から、x軸のcenterの値を返す関数を作成する、引数はCGFloat型とする
    // 入力: rect: CGRect
    // ヒント: frame.origin.x これがxの位置、　frame.size.width これが幅
    // 出力: CGFloat型
    
    // ドリル9
    // String型からInt型に変換する関数を作成する. （入力は必ずIntに変換できる想定）
    // 入力: String型
    // やること: 入力値をInt型に変換する
    // 出力: Int型（整数）
    
    // ドリル10
    // 2つの文字列を連結して返す関数を作成する
    // 入力: String型2つ
    // やること: 文字列連結
    // 出力: String型
    
    // ドリル11
    // String型の配列を渡すと、全て1つずつprintする関数を作成する
    // 入力: [String]型
    // やること: 1個ずつprintする
    // 出力: なし

    // ドリル12
    // 整数を3つ与えると、それらを配列にして返す関数を作成する
    // 入力: 整数3つ
    // やること: 全部まとめて配列にする
    // 出力: 整数の配列型
    
    // ドリル13
    // 整数startと整数endを与えると、start〜endの整数を入れた整数型の配列を返す
    // 入力: startとend
    // やること: 整数型の配列を用意して、startからendまでfor文で詰めていって返す
    // 出力: 整数の配列型
    
    // ドリル14
    // 文字列を1つ与えると、その文字列3つを配列にして返す関数を作成する
    // 入力: String
    // 出力: [String]
    
    // ドリル15
    // 文字列strと整数numを与えると、そのstrをnum個の配列にして返す関数を作成する
    // 入力: String
    // 出力: [String]
    
    // ドリル16
    // 整数を与えると、整数ならtrue、奇数ならfalseを返す関数を作成する
    // 入力: Int
    // 出力: Bool

    // ドリル17
    // 1〜100の整数の中で、偶数だけをすべて足した値をprintする関数を作成する
    // 入力: なし
    // 出力: なし
    
    enum MyColor {
        case happy
        case funny
        case sad
        case crazy
    }
    
    // ドリル18
    // MyColorの配列を渡すと、全てprintする関数を作成する
    // 入力: colors: [MyColor]
    
    
    
    
    
    
    // 2020/06/07追記
    
    // ドリル19
    // この問題は関数を2つ作ります
    // 1. 与えられた整数が3の倍数だけtrueを返す関数を作成する
    //    入力: Int
    //    出力: Bool
    // 2. 1で作った関数を使い、1〜100の値が3の倍数ならprintする関数を作る
    //    入力: なし
    //    出力: なし
    
    // ドリル20
    // この問題は関数を2つ作ります
    // 1. 与えられた整数が3の倍数だけtrueを返す関数を作成する（19と同じもの）
    //    入力: Int
    //    出力: Bool
    // 2. 1で作った関数を使い、1〜100の値のうち3の倍数だけ足した数を求め、printする関数を作る
    //    入力: なし
    //    出力: なし
    
    // ドリル21
    // ドリル20.2で作った関数を改造する
    // 整数の入力を2つ与えて、value1〜value2の値のうち3の倍数だけ足した数を求め、printする関数を作る
    // 入力: Int
    // 出力: なし
    
    // ドリル22
    // この問題は関数を3つ作ります
    // 1.「成功しました」と表示するだけの関数を作る
    // 2.「失敗しました」と表示するだけの関数を作る
    // 3.入力がresult:Boolで、resultがtrueのときには関数1を呼び出し、resultがfalseのときには関数2を呼び出す関数を作る
    // ちなみに、こういうのはAPIレスポンスの部分でよくやる
    
    enum APIResponse {
        case success
        case failure
    }
    
    // ドリル23
    // APIResponseを与えて、successの場合は「成功しました」と表示し、failureの場合は「失敗しました」と表示する関数を作る
    // ヒント:switchを使う
    
    // ドリル24
    // 以下を関数にして確認する
    // ヒソカ「この中から1つ好きな数を選んで、頭に思い浮かべて♥
    //       思い浮かべたら、その数に4を足して、更に倍にする♥
    //       そこから6を引き、2で割った後　最初に思った数を引くと、いくらになるかな？
    //       答えは・・・1だろ？」
    // 入力: Int
    // 出力: なし
    
    // ドリル25
    // この問題は関数を2つ作ります
    // 1. 整数の入力に対して
    //    マイナスなら「不正な入力です」とprintしてfalseを返す
    //    18未満なら「18歳未満は本サービスを利用できません」とprintしてfalseを返す
    //    80以上なら「いたずらの可能性あり」とprintしてtrueを返す
    //    それ以外ならtrueを返す関数を作る
    // 入力: Int
    // 出力: Bool
    // 2. 整数の入力を1の関数に渡して、trueの場合は「次の画面に進む」とprintする
    //    falseの場合は「エラーダイアログを出す」とprintする関数を作る
    // 入力: Int
    // 出力: なし
    
}













// -----------------↓答え↓------------------- //
















// 答え！
class DrillFunctionViewController答え: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // ドリル1
    func sum(a: Int, b: Int) {
        print(a + b)
    }
    
    // ドリル2
    func sum(a: Int, b: Int) -> Int {
        return a + b
    }

    // ドリル3
    func printInt(a: Int) {
        print("a is \(a)")
    }
    
    // ドリル4
    func sub(a: Int, b: Int) {
        print(a - b)
    }
    
    // ドリル5
    func henkanIntToString(i: Int) -> String {
        return "\(i)"
    }

    // ドリル6
    func sum3(a: Int, b: Int, c: Int) -> Int {
        return a + b + c
    }
    
    // ドリル7
    func menseki(width: CGFloat, height: CGFloat) -> CGFloat {
        return width * height
    }
    
    // ドリル8
    func centerX(frame: CGRect) -> CGFloat {
        return frame.origin.x + frame.size.width/2.0
    }
    
    // ドリル9
    func henkanStringToInt(str: String) -> Int {
        return Int(str)!
    }
    
    // ドリル10
    func renketu(str1: String, str2: String) -> String {
        return str1 + str2
    }
    
    // ドリル11
    func printArray(array: [String]) {
        for s in array {
            print(s)
        }
    }
    
    // ドリル12
    func createIntArray1(a: Int, b: Int, c: Int) -> [Int] {
        return [a, b, c]
    }
    
    // ドリル13
    func createIntArray2(start: Int, end: Int) -> [Int] {
        var result: [Int] = []
        for i in start...end {
            result.append(i)
        }
        return result
    }
    
    // ドリル14
    func createStringArray1(str: String) -> [String] {
        return [str, str, str]
    }
    
    // ドリル15
    func createStringArray2(str: String, num: Int) -> [String] {
        var result: [String] = []
        for _ in 0..<num {
            result.append(str)
        }
        return result
    }
    
    // ドリル16
    func isEven(i: Int) -> Bool {
        return i % 2 == 0
    }

    // ドリル17
    func evenSum() {
        var sum: Int = 0
        
        for i in 1...100 {
            if i % 2 == 0 {
                sum += i
            }
        }
        
        print(sum)
    }

    
    enum MyColor {
        case happy
        case funny
        case sad
        case crazy
    }
    
    // ドリル18
    func showMyColor(colors: [MyColor]) {
        for c in colors {
            print(c)
        }
    }
    
    // ドリル19
    func isMultipleOf3(value: Int) -> Bool {
        return value % 3 == 0
    }
    func checkMultipleOf3() {
        for i in 1...100 {
            if isMultipleOf3(value: i) {
                print(i)
            }
        }
    }
    
    // ドリル20
    func sumMultipleOf3() {
        var result: Int = 0
        for i in 1...100 {
            if isMultipleOf3(value: i) {
                result += i
            }
        }
        print(result)       // -> 1683
    }
    
    // ドリル21
    func sumMultipleOf3(value1: Int, value2: Int) {
        var result: Int = 0
        for i in value1...value2 {
            if isMultipleOf3(value: i) {
                result += i
            }
        }
        print(result)
    }
    
    // ドリル22
    func succeeded() {
        print("成功しました")
    }
    func failed() {
        print("失敗しました")
    }
    func responsedAPI(success: Bool) {
        if success {
            succeeded()
        }
        else {
            failed()
        }
    }
    
    enum APIResponse {
        case success
        case failure
    }
    
    // ドリル23
    func checkResult(response: APIResponse) {
        switch response {
        case .success:
            print("成功しました")
        case .failure:
            print("失敗しました")
        }
    }
    
    // ドリル24
    func precognition(value: Int) {
        let a = value + 4
        let b = a * 2
        let c = b - 6
        let d = c / 2
        let e = d - value
        print(e)
    }
    
    // ドリル25
    func checkAge1(age: Int) -> Bool {
        if age < 0 {
            print("不正な入力です")
            return false
        }
        else if age < 18 {
            print("18歳未満は本サービスを利用できません")
            return false
        }
        else if age >= 80 {
            print("いたずらの可能性あり")
            return true
        }
        else {
            return true
        }
    }
    func checkAge2(age: Int) {
        if checkAge1(age: age) {
            print("次の画面に進む")
        }
        else {
            print("エラーダイアログを出す")
        }
    }
}

