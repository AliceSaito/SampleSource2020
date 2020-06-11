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

        //printの時
        sum(one:2, two:3)
        
        //returnの時
        let v = sumsum(one:10, two:14)
        print(v)
        
        //printの時
        input(one:1)
        
        subtraction(one:2, two:3)
        
        let vd = intStr(one:10)
        print(vd)
        
        let vs = plusThree(one:2, two:3, three:2)
        print(vs)
        
        let kg = square(width:5, height:6)
        print(kg)
        
        let xg = xCenter(frame: CGRect(x: 100, y: 150, width: 200, height: 200))
        print(xg)
        
        let ed = strInt(one:"10")
        print(ed)
        
        let mp = sumStr(one:"モデル", two:"プレス")
        print(mp)
        
        let mdprArray = ["も","で","る","ぷ","れ","す"]
        strArray(oneArray:mdprArray)
        
        let ho = makeArray(one:3, two:6, three:2)
        print(ho)
        
        let yo = allStory(start:3 , before:4 ,after:5 ,end:6)
        print(yo)
        
        let go = sumStrArr(one:"Go!")
        print(go)
        
        let ao = numStrArr(one:"Do!", num:5)
        print(ao)
        
        let we = boolenArr(one:10)
        print(we)
        
        evenAdd()
        
        decideColor(colors: [MyColor.happy, MyColor.funny, MyColor.sad, MyColor.crazy])
        
        let q = threeMultiple(value: 9)
        print(q)
        
        hundred()
        
        hundredTree()
    }
    
    // ドリル1
    // 整数2つを入力して、足したものをprintする関数を作成する
    // parameter(入力): 整数2つ
    // やること: 入力したものを足してprintする
    // return(出力): なし
    
    func sum(one:Int, two:Int) {
        print(one + two)
    }
    
    // ドリル2
    // 整数2つを与えると、それらを足したものを返す関数を作成する
    // parameter(入力): 整数2つ
    // やること: 入力したものを足してreturnする
    // return(出力): 整数, 入力を足したもの
    
    func sumsum(one:Int, two:Int) -> Int{
        return one + two
    }

    // ドリル3
    // 整数1つを与えると、「Input is (入力値)」とprintする関数を作成する
    // parameter(入力): 整数1つ
    // やること: 「Input is (入力値)」の、入力値の部分に入力したものを入れて、printする
    // return(出力): なし
    
    func input(one:Int) {
        print("Input is \(one)")
    }
    
    // ドリル4
    // 整数を2つ（aとb）与えると、a-bの値をprintする関数を作成する
    // parameter: 整数2つ（aとb）
    // やること: a - bをprint
    // return: なし
    
    func subtraction(one:Int, two:Int) {
        print(one - two)
    }
    
    // ドリル5
    // Int型の値を1つ与えると、それをString型にして返す関数を作成する
    // parameter: Int型1つ
    // やること: Int型をString型に変換して返す
    // return: String型、変換したもの
    
    func intStr(one:Int) -> String {
        return "\(one)だよ"
    }

    // ドリル6
    // Int型の値を3つ与えると、全て足したものを返す関数を作成する
    // parameter: Int型3つ
    // やること: 足す
    // return: Int型
    
    func plusThree(one:Int, two:Int, three:Int) -> Int{
        return one + two + three
    }
    
    // ドリル7
    // 四角形の面積を返す関数を作成する. 引数と戻り値はCGFloat型とする
    // parameter: widthとheight, CGFloat型
    // やること: 面積を計算して返す
    // return: CGFloat型
    
    func square(width:CGFloat, height:CGFloat) -> CGFloat{
        return width * height
    }
    
    // ドリル8★
    // frame（CGRect型）から、x軸のcenterの値を返す関数を作成する、引数はCGFloat型とする
    // 意味）CGRectはx,y,width,hightの全ての値のこと。CGFloatはその中の１つのこと。
    // ヒント: frame.origin.x これがxの位置、　frame.size.width これが幅
    // return: CGFloat型
    
    func xCenter(frame: CGRect) -> CGFloat{
        return frame.origin.x + (frame.size.width / 2.0)
      }
      
    // ドリル9★
    // String型からInt型に変換する関数を作成する. （入力は必ずIntに変換できる想定）
    // parameter: String型
    // やること: 入力値をInt型に変換する
    // return: Int型（整数）
    
     func strInt(one:String) -> Int {
           return Int(one)!
       }
    
    // ドリル10
    // 2つの文字列を連結して返す関数を作成する
    // parameter: String型2つ
    // やること: 文字列連結
    // return: String型
    
    func sumStr(one:String, two:String) -> String{
        return one + two
    }
    
    // ドリル11★
    // String型の配列を渡すと、全て1つずつprintする関数を作成する
    // parameter: [String]型
    // やること: 1個ずつprintする
    // return: なし
    
    func strArray(oneArray:[String]) {
        oneArray.forEach {
            print($0)
        }
    }

    // ドリル12★
    // 整数を3つ与えると、それらを配列にして返す関数を作成する
    // parameter: 整数3つ
    // やること: 全部まとめて配列にする
    // return: 整数の配列型
    
    func makeArray(one:Int, two:Int, three:Int) -> [Int]{
        return [one, two, three]
    }
    
    // ドリル13★★
    // 整数startから整数endを与えると、start〜endの整数を入れた整数型の配列を返す
    // parameter: startからend
    // やること: 整数型の配列を用意して、startからendまでfor文で詰めていって返す
    // return: 整数の配列型
    
    func allStory(start:Int , before:Int ,after:Int ,end:Int) -> [Int]{
        var result:[Int] = []
        for i in start...end{
            result.append(i)
        }
        return result
    }
    
    // ドリル14★
    // 文字列を1つ与えると、その文字列3つを配列にして返す関数を作成する
    // parameter: String
    // return: [String]
    
    func sumStrArr(one:String) -> [String]{
        return[one, one, one]
    }
    
    // ドリル15★★
    // 文字列strと整数numを与えると、そのstrをnum個の配列にして返す関数を作成する
    // parameter: String
    // return: [String]
    
    func numStrArr(one:String, num:Int) -> [String]{
        var result:[String] = []
        for k in 0..<num {
            result.append(one)
        }
        return result
    }
    
    // ドリル16
    // 整数を与えると、偶数ならtrue、奇数ならfalseを返す関数を作成する
    // parameter: Int
    // return: Bool
    
    func boolenArr(one:Int) -> Bool {
        if one % 2 == 0{
            return true
        } else{
            return false
        }
    }
    
    // もっとシンプルに描くなら↓
    func boolenArr2(one: Int) -> Bool {
        return one % 2 == 0
    }

    // ドリル17★★
    // 1〜100の整数の中で、偶数だけをすべて足した値をprintする関数を作成する
    // parameter: なし
    // return: なし
    
    func evenAdd(){
        var addNumber = 0
        for i in 1...1000{
            if i % 2 == 0{
                addNumber += i
            }
        }
        print(addNumber)
    }
    
    // ドリル18★★
    // MyColorの配列を渡すと、全てprintする関数を作成する
    // colors: [MyColor]
    
    enum MyColor {
        case happy
        case funny
        case sad
        case crazy
    }
    
    func decideColor(colors: [MyColor]){
        for c in colors{
            print(c)
        }
    }
    
    // 2020/06/07追記
    
    // ドリル19★★
    // この問題は関数を2つ作ります
    // 1. 与えられた整数が3の倍数だけtrueを返す関数を作成する
    //    parameter: Int
    //    return: Bool
    // 2. 1で作った関数を使い、1〜100の値が3の倍数ならprintする関数を作る
    //    parameter: なし
    //    return: なし
    
    func threeMultiple(value: Int) -> Bool{
        return value % 3 == 0
    }
    func hundred(){
        for i in 1...100{
            if threeMultiple(value: i){
                print(i)
            }
        }
    }
    
    // ドリル20★★
    // この問題は関数を2つ作ります
    // 1. 与えられた整数が3の倍数だけtrueを返す関数を作成する（19と同じもの）
    //    parameter: Int
    //    return: Bool
    // 2. 1で作った関数を使い、1〜100の値のうち3の倍数だけ足した数を求め、printする関数を作る
    //    parameter: なし
    //    return: なし
    
    
    func hundredTree(){
        var result: Int = 0
        for i in 1...100{
            if threeMultiple(value: i){
                result += i
            }
        }
        print(result)
    }
    
    
    // ドリル21
    // ドリル20.2で作った関数を改造する
    // 整数の入力を2つ与えて、value1〜value2の値のうち3の倍数だけ足した数を求め、printする関数を作る
    // parameter: Int
    // return: なし
    
    
    func hundredTree(value1:Int, value2:Int) {
        var result: Int = 0
        for i in value1...value2 {
            if threeMultiple(value: i){
                result += i
            }
        }
        print(result)
    }
    
    
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
    // parameter: Int
    // return: なし
    
    // ドリル25
    // この問題は関数を2つ作ります
    // 1. 整数の入力に対して
    //    マイナスなら「不正な入力です」とprintしてfalseを返す
    //    18未満なら「18歳未満は本サービスを利用できません」とprintしてfalseを返す
    //    80以上なら「いたずらの可能性あり」とprintしてtrueを返す
    //    それ以外ならtrueを返す関数を作る
    // parameter: Int
    // return: Bool
    // 2. 整数の入力を1の関数に渡して、trueの場合は「次の画面に進む」とprintする
    //    falseの場合は「エラーダイアログを出す」とprintする関数を作る
    // parameter: Int
    // return: なし
    
    
    // 2020/06/10 追加
    
    // ドリル26
    // CGRectを与えると、その中のサイズだけを返す関数を作る
    // parameter: CGRect
    // return: CGSize
    // ヒント: CGRectはCGPointのoriginと、CGSizeのsizeから構成されるstructである
    
    // ドリル27
    // CGRectを与えると、右下の位置を返す関数を作る
    // parameter: CGRect
    // return: CGPoint
    // ヒント: CGRectのoriginは左上、iPhoneにおいてx軸とy軸は右方向、下方向に伸びている
    
    // ドリル28
    // 文字列の配列を与えると、すべての文字の長さを足して返す関数を作る
    // parameter: [String]
    // return: Int
    
    // ドリル29
    // Int型の値を3つ与えると、小さい順に配列にして返す関数を作る
    // parameter: Int 3つ
    // return: なし
    // ヒント: if文で作ってみよう
    
    // ドリル30
    // ["result" : ["1", "2", "3"]] を返すだけの関数を作る
    
    // ドリル31
    // 整数numを与えると、1〜numの整数を入れた整数型の配列を返す
    // parameter: num
    // return: 整数型の配列
    
    // ドリル32
    // 文字列の配列と、整数を与えると、文字列の配列を整数回分繰り返した配列を返す関数を作る
    // parameter: [String] と Int
    // return: [String]
    // ヒント: 配列は足せる
    
    // ドリル33
    // 1〜1000の整数の中で、奇数だけをすべて足した値をprintする関数を作成する
    // parameter: なし
    // return: なし
    // 答え: 250000
    
    // ドリル34
    // TeamColor（以下に定義）の配列を渡すと、全てのdisplayTitleをprintする関数を作成する
    
    enum TeamColor {
        case happy
        case funny
        case sad
        case crazy
        
        func getDisplayTitle() -> String {
            switch self {
            case .happy:
                return "嬉しさを感じる色"
            case .funny:
                return "楽しさを感じる色"
            case .sad:
                return "悲しさを感じる色"
            case .crazy:
                return "狂気を感じる色"
            }
        }
    }
    
    // ドリル35
    // 整数nを与えると、"今は\(n)!!"　とprintして、自分自身を再度呼び出す関数を作る
    // ただし、nが11以上だと自分自身を呼び出さず、"\(n)なので終了!!"とprintする
    // また、自分自身を呼び出すときはn+1を渡す
    
    
    // ドリル36
    // 文字列の配列を与えると、5文字以下の文字列だけをフィルターして返す関数を作る
    // parameters: [String]
    // return: [String]
    // 備考: filterは使わないでfor文を使ってみて
    
    
    // ドリル37
    // 文字列の配列を与えると、5文字以上の文字列を除外して返す関数を作る
    // parameters: [String]
    // return: [String]
    // 備考: filterは使わないでfor文を使ってみて
    
    
    
    
    
    
    


    // --- 以下は難しいので後回し😇 ---


    // ドリル36
    // 階乗をfor文を使わずに計算する関数を作る
    // 入力: n: Int
    // 出力: Int
    // ヒント: 階乗 「10の階乗」は10*9*8*7*6*5*4*3*2*1の値
    
    
    
    // ドリル***
    // 2つのCGRectの積（重複する部分）を求める関数intersectionを作る
    // 入力: CGRect 2つ
    // 出力: CGRect
    // メモ: メモフォルダの中の「rect_and_intersection.png」で図示しています
    // メモ: 実はintersectionは公式に存在する
    //      ただし、1つのCGRectのメソッドとして提供されている
    //      例: frame.intersection(otherRect)

    // ドリル***
    // 2つのCGRectの和（両Rectを囲む最小の四角形）を求める関数getUnionを作る
    // 入力: CGRect 2つ
    // 出力: CGRect
    // メモ: メモフォルダの中の「rect_and_intersection.png」で図示しています
    // メモ: 実はunionも公式に存在する
    //      ただし、1つのCGRectのメソッドとして提供されている
    //      例: frame.union(otherRect)
}













// -----------------↓答え↓------------------- //
















// 答え！
class DrillFunctionViewControllerAnswer: UIViewController {
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
        print("Input is \(a)")
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
    //※同じ関数名でも引数が違ったら、別の関数として扱われる。
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
    
    // ドリル26
    func getSize(rect: CGRect) -> CGSize {
        return rect.size
    }
    
    // ドリル27
    func getBottomRight(rect: CGRect) -> CGPoint {
        return CGPoint(x: rect.origin.x + rect.size.width, y: rect.origin.y + rect.size.height)
    }
 
    // ドリル28
    func countStringLen(strings: [String]) -> Int {
        var result: Int = 0
        strings.forEach { (s) in
            result += s.count
        }
        return result
    }
    
    // ドリル29
    func getSortedArray(a: Int, b: Int, c: Int) -> [Int] {
        var result: [Int] = []
        
        // aが最小の場合
        if a < b && a < c {
            result.append(a)
            if b < c {
                result.append(b)
                result.append(c)
            }
            else {
                result.append(c)
                result.append(b)
            }
        }
        // bが最小の場合
        else if b < a && b < c {
            result.append(b)
            if a < c {
                result.append(a)
                result.append(c)
            }
            else {
                result.append(c)
                result.append(a)
            }
        }
        // cが最小の場合
        else {
            result.append(c)
            if a < b {
                result.append(a)
                result.append(b)
            }
            else {
                result.append(b)
                result.append(a)
            }
        }
        return result
    }
    
    // ドリル30
    func somethingDictionary() -> [String: [String]] {
        return ["result" : ["1", "2", "3"]]
    }
    
    // ドリル31
    func getNumArray(num: Int) -> [Int] {
        var result: [Int] = []
        for i in 1...num {
            result.append(i)
        }
        return result
    }
    
    // ドリル32
    func repeatArray(array: [String], num: Int) -> [String] {
        var result: [String] = []
        for _ in 1...num {
            result = result + array
        }
        return result
    }
    
    // ドリル33
    func addOdd(){
        var addNumber = 0
        for i in 1...1000 {
            if i % 2 == 1 {
                addNumber += i
            }
        }
        print(addNumber)
    }
    
    // ドリル34
    // TeamColor（以下に定義）の配列を渡すと、全てのdisplayTitleをprintする関数を作成する
    
    enum TeamColor {
        case happy
        case funny
        case sad
        case crazy
        
        func getDisplayTitle() -> String {
            switch self {
            case .happy:
                return "嬉しさを感じる色"
            case .funny:
                return "楽しさを感じる色"
            case .sad:
                return "悲しさを感じる色"
            case .crazy:
                return "狂気を感じる色"
            }
        }
    }
    
    // ドリル34
    func displayTeamColors(colors: [TeamColor]) {
        colors.forEach { (c) in
            print(c.getDisplayTitle())
        }
    }
    
    // ドリル35
    func callMyself(n: Int) {
        if n <= 10 {
            print("今は\(n)!!")
            callMyself(n: n+1)
        }
        else {
            print("\(n)なので終了!!")
        }
    }
    
}
