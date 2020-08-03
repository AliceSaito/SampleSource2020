//
//  DrillPracticeViewController.swift
//  SampleSource2020
//
//  Created by 斉藤アリス on 2020/06/19.
//


import UIKit

/// functionの練習
class DrillPracticeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ドリル7
        let s = square(width:100, height:140)
        print(s)
        
        // ドリル8
        let ss = xaxis(frame : CGRect(x: 100, y: 150, width: 200, height: 200))
        print(ss)
        
        // ドリル9
        let sss = intstr(parameter: "200")
        print(sss)
        
        // ドリル10
        let w = strtwo(para: "あ", meter: "い")
        print(w)
        
        // ドリル11
        onebyone(para: ["あ", "い", "う", "え"])
        
        // ドリル12
        let ww = strthree(pa: 2, ra: 5, meter: 3)
        print(ww)
        
        // ドリル13
        let www = startend(start:0, end: 8)
        print(www)
        
        // ドリル14
        let wwi = strconnect(pa: "あ")
        print(wwi)
        
        // ドリル15
        let v = strint(pa: 3, ra:"う")
        print(v)
        
        // ドリル16
        let vd = oddeven(pa: 3)
        print(vd)
        
        // ドリル17
        oddplus()
        
        // ドリル18
        getMyColor(colors: [MyColor.crazy])
        
        // ドリル19
        onetohundred()
        
        // ドリル20
        onetoHundredMultiple()
        
        // ドリル21
        onetoHundredMultiple(para: 5, meter: 25)
        
        // ドリル22
        judgement(result:true)
        
        // ドリル23
        getAPIResponse(result:APIResponse.success)
        
        // ドリル24
        hisoka(card:5)
        
        // ドリル25
        getmisconduct(meter: 5)
        
        // ドリル26
        let g = getCGSize(parameter: CGRect(x: 100, y: 150, width: 200, height: 200))
        print(g)
        
        // ドリル27
        let r = lowerRight(one: CGRect(x: 100, y: 150, width: 200, height: 200))
        print(r)
        
        // ドリル28
        let rr = longplus(parameter: ["shall","we","dance","?"])
        print(rr)
        
        // ドリル29
        let rrr = smallArray(pa:45, ra:666, me:78)
        print(rrr)
        
        // ドリル30
        let rrrr = onlyreturn()
        print(rrrr)
        
        // ドリル31
        let o = onlyreturn(num: 59)
        print(o)
        
        // ドリル32
        let od = repeatarray(num: 4, para: ["shall"])
        print(od)
        
        // ドリル33
        ichekarasen()
        
        // ドリル34
        printdisplayTitle(color:[.happy, .funny, .sad, .crazy])
        
        // ドリル35
        recursiveProcessing(n:5)
        
        // ドリル36
        let og = lessthanfive(parameters: ["shalll","weee","dance","?"])
        print(og)
        
        // ドリル37
        let ogg =  removemorethanfive(parameters:["shalll","weee","dance","?"])
        print(ogg)
        
        // ドリル38
        kantan1(pa:4)
        
        // ドリル39
        //nilの入れ方は下記の２通り
        let px: Int? = nil
        let x =  nilcheckint(parameter: px)
        print(x)
        
        // ドリル40
        let z =  nilcheckstr(parameter: nil)
        print(z)
        
        // ドリル41
        foody(pizza: 6, coffee: 1, cake: 5)
        
        // ドリル43
        let sa = makeDictionary(key: 4, value: "shall")
        print(sa)
        
        // ドリル45
        let si = makeDictionary2(key: "shall", value: [2.1, 2.2, 2.3, 2.4, 2.5])
        print(si)
        
        // ドリル46
        let pu = foody(red: 200, green: 180, blue: 249)
        print(pu)
        
        // ドリル48
        let ddoo = createcolor(all: UIColor(red: 1, green: 1, blue: 0.5, alpha: 1))
        print(ddoo)
        
      
        
        
        
        
    }
    
   
    // ドリル7
    // 四角形の面積を返す関数を作成する. 引数と戻り値はCGFloat型とする
    // parameter: widthとheight, CGFloat型
    // やること: 面積を計算して返す
    // return: CGFloat型
    
    func square(width:CGFloat, height:CGFloat) -> CGFloat {
        return width * height
    }
    
    // ドリル8★
    // frame（CGRect型）から、x軸のcenterの値を返す関数を作成する、引数はCGFloat型とする
    // 意味）CGRectはx,y,width,hightの全ての値のこと。CGFloatはその中の１つのこと。
    // ヒント: frame.origin.x これがxの位置、　frame.size.width これが幅
    // return: CGFloat型
    
    func xaxis(frame : CGRect) -> CGFloat {
        return frame.origin.x + (frame.size.width / 2.0)
    }
    
    // ドリル9★★★
    // String型からInt型に変換する関数を作成する. （入力は必ずIntに変換できる想定）
    // parameter: String型
    // やること: 入力値をInt型に変換する
    // return: Int型（整数）
    
     func intstr(parameter: String) -> Int {
         return  Int(parameter)!
     }
    
    // ドリル10
    // 2つの文字列を連結して返す関数を作成する
    // parameter: String型2つ
    // やること: 文字列連結
    // return: String型
    
    func strtwo(para: String, meter: String) -> String {
        return para + meter
    }
  
    // ドリル11★★★
    // String型の配列を渡すと、全て1つずつprintする関数を作成する
    // parameter: [String]型
    // やること: 1個ずつprintする
    // return: なし
    
    func onebyone(para: [String]) {
        para.forEach {
            print($0)
        }
    }

    // ドリル12★★★
    // 整数を3つ与えると、それらを配列にして返す関数を作成する
    // parameter: 整数3つ
    // やること: 全部まとめて配列にする
    // return: 整数の配列型
    
    func strthree(pa: Int, ra: Int, meter: Int) -> [Int] {
        return [pa, ra, meter]
    }
    
    // ドリル13★★★
    // 整数startから整数endを与えると、start〜endの整数を入れた整数型の配列を返す
    // parameter: startからend
    // やること: 整数型の配列を用意して、startからendまでfor文で詰めていって返す
    // return: 整数の配列型
    
    func startend(start:Int, end: Int) -> [Int] {
        var result:[Int] = []
        //startの数値がendより大きい場合がエラーになる
        if start < end {
            for i in start...end {
                result.append(i)
            }
        }
        return result
    }
    
//パラメーターが多い場合は下記のやり方
//    var array = [start, pa, ra, meter, end]
//    for i in array {
//    }
    
    
    // ドリル14★★
    // 文字列を1つ与えると、その文字列3つを配列にして返す関数を作成する
    // parameter: String
    // return: [String]
    
    func strconnect(pa: String) -> [String] {
        return [pa, pa, pa]
    }
    
    // ドリル15★★
    // 文字列strと整数numを与えると、そのstrをnum個の配列にして返す関数を作成する
    // parameter: String
    // return: [String]
    
    func strint(pa: Int, ra: String) -> [String] {
        var result:[String] = []
        for _ in 1...pa {
            result.append(ra)
        }
        return result
    }
    
    // ドリル16
    // 整数を与えると、偶数ならtrue、奇数ならfalseを返す関数を作成する
    // parameter: Int
    // return: Bool
    func oddeven(pa: Int) -> Bool {
        return pa % 2 == 0
    }
    
    // ドリル17★★
    // 1〜100の整数の中で、偶数だけをすべて足した値をprintする関数を作成する
    // parameter: なし
    // return: なし
    func oddplus(){
        var result = 0
        for i in 1...100 {
            if i % 2 == 0 {
                result += i
            }
        }
        print(result)
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
    
    func getMyColor(colors: [MyColor]){
        for c in colors {
            print(c)
        }
    }
    
    // ドリル19★★
    // この問題は関数を2つ作ります
    // 1. 与えられた整数が3の倍数だけtrueを返す関数を作成する
    //    parameter: Int
    //    return: Bool
    // 2. 1で作った関数を使い、1〜100の値が3の倍数ならprintする関数を作る
    //    parameter: なし
    //    return: なし
    
    func treemultiple(pa:Int) -> Bool {
        return pa % 3 == 0
    }
    
    func onetohundred(){
        for i in 1...100 {
            if treemultiple(pa:i){
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
    
    func onetoHundredMultiple(){
        var result = 0
        for i in 1...100 {
            if treemultiple(pa:i){
                result += i
            }
        }
        print(result)
    }
    
    // ドリル21★★
    // ドリル20.2で作った関数を改造する
    // 整数の入力を2つ与えて、value1〜value2の値のうち3の倍数だけ足した数を求め、printする関数を作る
    // parameter: Int
    // return: なし
    
    func onetoHundredMultiple(para: Int, meter: Int){
        var result = 0
        for i in para...meter {
            if treemultiple(pa:i){
                result += i
            }
        }
        print(result)
    }
    
    // ドリル22★★
    // この問題は関数を3つ作ります
    // 1.「成功しました」と表示するだけの関数を作る
    // 2.「失敗しました」と表示するだけの関数を作る
    // 3.入力がresult:Boolで、resultがtrueのときには関数1を呼び出し、resultがfalseのときには関数2を呼び出す関数を作る
    // ちなみに、こういうのはAPIレスポンスの部分でよくやる
    
    func success() {
        print("成功しました")
    }
    
    func failure() {
        print("失敗しました")
    }
    
    func judgement(result:Bool) {
        if result {
            success()
        } else {
            failure()
        }
    }
    
    // ドリル23★★★
    // APIResponseを与えて、successの場合は「成功しました」と表示し、failureの場合は「失敗しました」と表示する関数を作る
    // ヒント:switchを使う
    
    enum APIResponse {
        case success
        case failure
    }
    
    func getAPIResponse(result:APIResponse) {
        switch result {
        case .success:
            print("成功しました")
        case .failure:
            print("失敗しました")
        }
    }
    
    // ドリル24★
    // 以下を関数にして確認する
    // ヒソカ「この中から1つ好きな数を選んで、頭に思い浮かべて
    //       思い浮かべたら、その数に4を足して、倍にする
    //       そこから6を引き、2で割った後　最初に思った数を引くと、いくらになるかな？
    //       答えは・・・1だろ？」
    // parameter: Int
    // return: なし
    
    func hisoka(card:Int){
        var a = card + 4
        var b = a * 2
        var c = b - 6
        var d = c / 2
        var e = d - card
        print(e)
    }
    
    // ドリル25★★
    // この問題は関数を2つ作ります
    // 1. 整数の入力に対して
    //    マイナスなら「不正な入力です」とprintしてfalseを返す
    //    18未満なら「18歳未満は本サービスを利用できません」とprintしてfalseを返す
    //    80以上なら「いたずらの可能性あり」とprintしてfalseを返す
    //    それ以外ならtrueを返す関数を作る
    // parameter: Int
    // return: Bool
    // 2. 整数の入力を1の関数に渡して、trueの場合は「次の画面に進む」とprintする
    //    falseの場合は「エラーダイアログを出す」とprintする関数を作る
    // parameter: Int
    // return: なし
    
    func misconduct(para: Int) -> Bool{
        if para < 0 {
            print("不正な入力です")
            return false
        } else if para < 18 {
            print("18歳未満は本サービスを利用できません")
            return false
        } else if para >= 80 {
            print("いたずらの可能性あり")
            return false
        } else {
            return true
        }
    }
    
    func getmisconduct(meter: Int) {
        if misconduct(para: meter){
            print("次の画面に進む")
        } else {
            print("エラーダイアログを出す")
        }
    }
    
//※returnの後にprintは書けない
//    func hoge() {
//        return
//        print("わーい")   // ←これは無視される
//    }
    

    
    // ドリル26★
    // CGRectを与えると、その中のサイズだけを返す関数を作る
    // parameter: CGRect
    // return: CGSize
    // ヒント: CGRectはsizeから構成されるstructである
    
    func getCGSize(parameter: CGRect) -> CGSize {
        return parameter.size
    }
    
    // ドリル27★★★
    // CGRectを与えると、右下の位置を返す関数を作る
    // parameter: CGRect
    // return: CGPoint
    // ヒント: CGRectのoriginは左上、iPhoneにおいてx軸とy軸は右方向、下方向に伸びている
    
    func lowerRight(one: CGRect) -> CGPoint {
        return CGPoint(x: one.origin.x + one.size.width, y: one.origin.y + one.size.height)
    }
    
//    ※CGSizeもstructである。
//    struct CGSize {
//       var width: CGFloat
//       var height: CGFloat
//    }
    
    
    // ドリル28★★
    // 文字列の配列を与えると、すべての文字の長さを足して返す関数を作る
    // parameter: [String]
    // return: Int
    
    func longplus(parameter: [String])-> Int {
        var long: Int = 0
        parameter.forEach { $0
            long += $0.count
        }
        return long
    }

    
//forEachの使い方
//その１
//[配列].forEach { (s) in
//      sに配列の値が一個ずつ入ってくる
//}
//その２
//[配列].forEach { s in
//      sに配列の値が一個ずつ入ってくる
//}
//その３
//[配列].forEach { $0
//      $0に配列の値が一個ずつ入ってくる
//}


    
    // ドリル29★★
    // Int型の値を3つ与えると、小さい順に配列にして返す関数を作る
    // parameter: Int 3つ
    // return: [Int]
    // ヒント: if文で作ってみよう
    
    func smallArray(pa:Int, ra:Int, me:Int)-> [Int] {
        var result :[Int] = []
        
        if pa < ra && pa < me {
            result.append(pa)
            if ra < me {
                result.append(ra)
                result.append(me)
            }
            else {
                result.append(me)
                result.append(ra)
            }
        } else if ra < pa && ra < me {
            result.append(ra)
            if pa < me {
                result.append(pa)
                result.append(me)
            }
            else {
                result.append(me)
                result.append(pa)
            }
        } else if me < pa && me < ra {
            result.append(me)
            if pa < ra {
                result.append(pa)
                result.append(ra)
            }
            else {
                result.append(ra)
                result.append(pa)
            }
        }
        return result
    }
    
    // ドリル30★
    // ["result" : ["1", "2", "3"]] を返すだけの関数を作る
    // 入力: なし
    // 出力:[String: [String]]
    
    func onlyreturn()-> [String: [String]] {
        return ["result" : ["1", "2", "3"]]
    }
    
    // ドリル31
    // 整数numを与えると、1〜numの整数を入れた整数型の配列を返す
    // parameter: num
    // return: 整数型の配列
    
    func onlyreturn(num: Int)->  [Int] {
        var result :[Int] = []
        for i in 1...num {
            result.append(i)
        }
        return result
    }
       
    // ドリル32★★
    // 文字列の配列と、整数を与えると、文字列の配列を整数回分繰り返した配列を返す関数を作る
    // parameter: [String] と Int
    // return: [String]
    // ヒント: 配列は足せる
    
   
//    配列に、配列を結合する方法
//    array.append(contentsOf: otherArray)
//    もしくは
//    array = array + otherArray
    
    
    func repeatarray(num: Int, para: [String])->  [String] {
           var result :[String] = []
           for i in 1...num {
               result = result + para
           }
           return result
       }
         
    
    // ドリル33★
    // 1〜1000の整数の中で、奇数だけをすべて足した値をprintする関数を作成する
    // parameter: なし
    // return: なし
    // 答え: 250000
    
    func ichekarasen() {
        var result = 0
        for i in 1...1000 {
            if !(i % 2 == 0) {
                result += i
            }
        }
        print(result)
    }
    
    // ドリル34★★★
    // TeamColor（以下に定義）の配列を渡すと、全てのdisplayTitleをprintする関数を作成する
    
    enum TeamColor {
        case happy
        case funny
        case sad
        case crazy
        
        func displayTitle() -> String {
            switch self {
            case .happy:
                return "ハッピー"
            case .funny:
                return "ファニー"
            case .sad:
                return "サッド"
            case .crazy:
                return "クレイジー"
            }
        }
    }
    
    func printdisplayTitle(color:[TeamColor]){
        color.forEach {
            print ($0.displayTitle())
        }
    }
    
    // ドリル35★★
    //再帰処理：funcはforを使わなくても自分を呼び出すことでループできる
    // 整数nを与えると、"今は\(n)!!"　とprintして、自分自身を再度呼び出す関数を作る
    // ただし、nが11以上だと自分自身を呼び出さず、"\(n)なので終了!!"とprintする
    // また、自分自身を呼び出すときはn+1を渡す
    
    func recursiveProcessing(n:Int){
        if n < 11 {
            print("今は\(n)!!")
            recursiveProcessing(n: n+1)
        } else{
            print("\(n)なので終了!!")
            //callMyself(n: n+1)を呼び出してないから、ここでループは終了。
        }
    }
    
    // ドリル36★★
    // 文字列の配列を与えると、5文字以下の文字列だけをフィルターして返す関数を作る
    // parameters: [String]
    // return: [String]
    // 備考: filterは使わないでfor文を使ってみて
    
    func lessthanfive(parameters: [String]) -> [String]{
        var result :[String] = []
        for i in parameters {
            if i.count <= 5 {
                result.append(i)
            }
        }
        return result
    }
    
    // ドリル37
    // 文字列の配列を与えると、5文字以上の文字列を除外して返す関数を作る
    // parameters: [String]
    // return: [String]
    // 備考: filterは使わないでfor文を使ってみて
    
    func removemorethanfive(parameters: [String]) -> [String]{
        var result :[String] = []
        for i in parameters {
            if i.count < 5 {
                result.append(i)
            }
        }
        return result
    }
      
    // ドリル38★★
    // 簡単な関数を4つ作ります
    // 1. 関数1は、関数2に整数を渡して、返り値をprintする
    // 2. 関数2は、関数3に整数を渡して、返り値をそのまま返す
    // 3. 関数3は、関数4に整数を渡して、返り値をそのまま返す
    // 4. 関数4は、与えられた整数をそのまま返す
    // メモ: 関数1で与えた整数がそのままprintされるだけになる
    
    func kantan1(pa:Int){
        print(kantan2(ra:pa))
        //　↑  丁寧に書くと　↓
        //        let k2 = kantan2(ra: pa)
        //        print(k2)
    }
    
    func kantan2(ra:Int) -> Int {
        return kantan3(me:ra)
    }
    
    func kantan3(me:Int) -> Int {
        return kantan4(ter:me)
    }
    
    func kantan4(ter:Int) -> Int {
        return ter
    }
    
    // ドリル39★★★
    // OptionalのInt型を与えたとき、それがnilなら0を返し、nilでなければInt型にして返す関数を作る
    // parameters: Int?
    // return: Int
    // メモ: if letを使う(オプショナルバインディング)
    //elseじゃなくても、returnを重ねれば処理を分岐できる。
    
    func nilcheckint(parameter: Int?) -> Int {
        if let nonil = parameter {
            return nonil
        }
        return 0
    }
    
    // ドリル40★★(1行で書く)
    // OptionalのString型を与えたとき、それがnilなら空文字を返し、nilでなければString型にして返す関数を作る
    // parameters: String?
    // return: String
    
    func nilcheckstr(parameter: String?) -> String {
        return parameter ?? ""
    }
    
    // ドリル41★★
    // 整数型でpizza, coffee, cakeを与えると、与えた回数分それぞれ🍕、☕、🍰をprintする関数を作る
    // ただし最大個数は5個になるようにする
    // parameters: pizza: Int, coffe: Int, cake: Int
    // ヒント: for文とbreakを使うとやりやすいと思う
    // ヒント: 改行しないprintは、print("なにか", terminator: "") と書く
    //1より小さい数を省くために、if pizza >= 1 を最初に書く
    
    func foody(pizza: Int, coffee: Int, cake: Int) {
        if pizza >= 1 {
            for p in 1...pizza {
                print("🍕", terminator: "")
                if p == 5 {
                    break
                }
            }
        }
        if coffee >= 1 {
            for f in 1...coffee {
                print("☕", terminator: "")
                if f == 5 {
                    break
                }
            }
        }
        if cake >= 1 {
            for c in 1...cake {
                print("🍰", terminator: "")
                if c == 5 {
                    break
                }
            }
        }
    }
    
    // ドリル43★★
    // key: Int, value: String を与えると、Dictionaryにして返す関数を作る
    // parameters: key: Int, value: String
    // return: 秘密
    
    func makeDictionary(key: Int, value: String) -> [Int:String]{
        return [key:value]
    }
    
    // ドリル45★
    // key: String, value: [Double] を与えると、Dictionaryにして返す関数を作る
    // parameters: key: String, value: [Double]
    // return: 秘密
    // ヒント: 関数名は42と同名でも大丈夫
    
    func makeDictionary2(key: String, value: [Double]) -> [String:[Double]]{
        return [key:value]
    }
    
    // ドリル46★★
    // red: Int, green: Int, blue: Int を与えたとき、UIColorを返す関数を作る
    // ただしこれらの値は0〜255の256段階で表示するものとする。8ビットだから、２の８乗で256。redの濃さを256段階で選べる。
    // alphaは1固定とする
    // ヒント: UIColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    // ここで各値は0〜1.0で表現されている。255/255は１だから。
    
    func foody(red: Int, green: Int, blue: Int) -> UIColor{
        return UIColor(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1)
    }
    
    // ドリル48★★★
    // UIColorを与えると、redとblueを差し替えたUIColorを返す
    // なお、UIColorから(red, green, blue)の値（0〜1）を抽出するには以下の関数を用いる
    //豆知識：カラーとアルファ値を取り出す cgColor.components
    
    func getcolor(color: UIColor) -> (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        let components = color.cgColor.components!
        return (red: components[0], green: components[1], blue: components[2], alpha: components[3])
    }
    
    func createcolor(all: UIColor) -> UIColor {
        let result = getcolor(color: all)
        return UIColor(red: result.blue, green: result.green, blue: result.red, alpha: 1)
    }

}
