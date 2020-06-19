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
        
        
        
        
        
    }
    
   
    // ドリル7
    // 四角形の面積を返す関数を作成する. 引数と戻り値はCGFloat型とする
    // parameter: widthとheight, CGFloat型
    // やること: 面積を計算して返す
    // return: CGFloat型
    
   
    
    // ドリル8★
    // frame（CGRect型）から、x軸のcenterの値を返す関数を作成する、引数はCGFloat型とする
    // 意味）CGRectはx,y,width,hightの全ての値のこと。CGFloatはその中の１つのこと。
    // ヒント: frame.origin.x これがxの位置、　frame.size.width これが幅
    // return: CGFloat型
    
  
      
    // ドリル9★
    // String型からInt型に変換する関数を作成する. （入力は必ずIntに変換できる想定）
    // parameter: String型
    // やること: 入力値をInt型に変換する
    // return: Int型（整数）
    
     
    
    // ドリル10
    // 2つの文字列を連結して返す関数を作成する
    // parameter: String型2つ
    // やること: 文字列連結
    // return: String型
    
  
    // ドリル11★
    // String型の配列を渡すと、全て1つずつprintする関数を作成する
    // parameter: [String]型
    // やること: 1個ずつprintする
    // return: なし
    
    

    // ドリル12★
    // 整数を3つ与えると、それらを配列にして返す関数を作成する
    // parameter: 整数3つ
    // やること: 全部まとめて配列にする
    // return: 整数の配列型
    
    
    
    // ドリル13★★
    // 整数startから整数endを与えると、start〜endの整数を入れた整数型の配列を返す
    // parameter: startからend
    // やること: 整数型の配列を用意して、startからendまでfor文で詰めていって返す
    // return: 整数の配列型
    
    
    
    // ドリル14★
    // 文字列を1つ与えると、その文字列3つを配列にして返す関数を作成する
    // parameter: String
    // return: [String]
    
   
    
    // ドリル15★★
    // 文字列strと整数numを与えると、そのstrをnum個の配列にして返す関数を作成する
    // parameter: String
    // return: [String]
    
    
    
    // ドリル16
    // 整数を与えると、偶数ならtrue、奇数ならfalseを返す関数を作成する
    // parameter: Int
    // return: Bool
    
    
    
    // もっとシンプルに描くなら↓
    

    // ドリル17★★
    // 1〜100の整数の中で、偶数だけをすべて足した値をprintする関数を作成する
    // parameter: なし
    // return: なし
    
    
    
    // ドリル18★★
    // MyColorの配列を渡すと、全てprintする関数を作成する
    // colors: [MyColor]
    
    
    
    // 2020/06/07追記
    
    // ドリル19★★
    // この問題は関数を2つ作ります
    // 1. 与えられた整数が3の倍数だけtrueを返す関数を作成する
    //    parameter: Int
    //    return: Bool
    // 2. 1で作った関数を使い、1〜100の値が3の倍数ならprintする関数を作る
    //    parameter: なし
    //    return: なし
    
    
    
    // ドリル20★★
    // この問題は関数を2つ作ります
    // 1. 与えられた整数が3の倍数だけtrueを返す関数を作成する（19と同じもの）
    //    parameter: Int
    //    return: Bool
    // 2. 1で作った関数を使い、1〜100の値のうち3の倍数だけ足した数を求め、printする関数を作る
    //    parameter: なし
    //    return: なし
    
    
    
    
    
    // ドリル21★★
    // ドリル20.2で作った関数を改造する
    // 整数の入力を2つ与えて、value1〜value2の値のうち3の倍数だけ足した数を求め、printする関数を作る
    // parameter: Int
    // return: なし
    
    
   
    
    // ドリル22★★
    // この問題は関数を3つ作ります
    // 1.「成功しました」と表示するだけの関数を作る
    // 2.「失敗しました」と表示するだけの関数を作る
    // 3.入力がresult:Boolで、resultがtrueのときには関数1を呼び出し、resultがfalseのときには関数2を呼び出す関数を作る
    // ちなみに、こういうのはAPIレスポンスの部分でよくやる
    
   
    
    
    // ドリル23★★
    // APIResponseを与えて、successの場合は「成功しました」と表示し、failureの場合は「失敗しました」と表示する関数を作る
    // ヒント:switchを使う
    
    
    
    
    // ドリル24★★
    // 以下を関数にして確認する
    // ヒソカ「この中から1つ好きな数を選んで、頭に思い浮かべて
    //       思い浮かべたら、その数に4を足して、更に倍にする
    //       そこから6を引き、2で割った後　最初に思った数を引くと、いくらになるかな？
    //       答えは・・・1だろ？」
    // parameter: Int
    // return: なし
    
   
    
    
    // ドリル25★★
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
    
    
    
//※returnの後にprintは書けない
//    func hoge() {
//        return
//        print("わーい")   // ←これは無視される
//    }
    

    
    // ドリル26★★★
    // CGRectを与えると、その中のサイズだけを返す関数を作る
    // parameter: CGRect
    // return: CGSize
    // ヒント: CGRectはCGPointのoriginと、CGSizeのsizeから構成されるstructである
    
   
    
    // ドリル27★★★
    // CGRectを与えると、右下の位置を返す関数を作る
    // parameter: CGRect
    // return: CGPoint
    // ヒント: CGRectのoriginは左上、iPhoneにおいてx軸とy軸は右方向、下方向に伸びている
    
    
    
    
//    ※CGSizeもstructである。
//    struct CGSize {
//       var width: CGFloat
//       var height: CGFloat
//    }
    
    
    // ドリル28★★
    // 文字列の配列を与えると、すべての文字の長さを足して返す関数を作る
    // parameter: [String]
    // return: Int
    
   
    

//配列の要素数は、array.count
//文字列の長さは、str.count


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
    // return: なし
    // ヒント: if文で作ってみよう
    
    
    
    
    // ドリル30★
    // ["result" : ["1", "2", "3"]] を返すだけの関数を作る
    // 入力: なし
    // 出力:[String: [String]]
    
    
    
    // ドリル31★
    // 整数numを与えると、1〜numの整数を入れた整数型の配列を返す
    // parameter: num
    // return: 整数型の配列
    
    
       
    
    // ドリル32★
    // 文字列の配列と、整数を与えると、文字列の配列を整数回分繰り返した配列を返す関数を作る
    // parameter: [String] と Int
    // return: [String]
    // ヒント: 配列は足せる
    
   
//    配列に、配列を結合する方法
//    array.append(contentsOf: otherArray)
//    もしくは
//    array = array + otherArray
    
    
    // ドリル33★
    // 1〜1000の整数の中で、奇数だけをすべて足した値をprintする関数を作成する
    // parameter: なし
    // return: なし
    // 答え: 250000
    
    
    
    // ドリル34★★
    // TeamColor（以下に定義）の配列を渡すと、全てのdisplayTitleをprintする関数を作成する
    
    enum TeamColor {
        case happy
        case funny
        case sad
        case crazy
        
        
    }
    
   
    
    
    
    // ドリル35★★
    //再帰処理：funcはforを使わなくても自分を呼び出すことでループできる
    // 整数nを与えると、"今は\(n)!!"　とprintして、自分自身を再度呼び出す関数を作る
    // ただし、nが11以上だと自分自身を呼び出さず、"\(n)なので終了!!"とprintする
    // また、自分自身を呼び出すときはn+1を渡す
    
    
    
    // ドリル36★★
    // 文字列の配列を与えると、5文字以下の文字列だけをフィルターして返す関数を作る
    // parameters: [String]
    // return: [String]
    // 備考: filterは使わないでfor文を使ってみて
    
   
    
    // ドリル37★
    // 文字列の配列を与えると、5文字以上の文字列を除外して返す関数を作る
    // parameters: [String]
    // return: [String]
    // 備考: filterは使わないでfor文を使ってみて
    
   
    
    // ドリル38★★
    // 簡単な関数を4つ作ります
    // 1. 関数1は、関数2に整数を渡して、返り値をprintする
    // 2. 関数2は、関数3に整数を渡して、返り値をそのまま返す
    // 3. 関数3は、関数4に整数を渡して、返り値をそのまま返す
    // 4. 関数4は、与えられた整数をそのまま返す
    // メモ: 関数1で与えた整数がそのままprintされるだけになる
    
    
    
    // ドリル39★★★
    // OptionalのInt型を与えたとき、それがnilなら0を返し、nilでなければInt型にして返す関数を作る
    // parameters: Int?
    // return: Int
    // メモ: if letを使う(オプショナルバインディング)
    //elseじゃなくても、returnを重ねれば処理を分岐できる。
    
    
    
    
    // ドリル40★★
    // OptionalのString型を与えたとき、それがnilなら空文字を返し、nilでなければString型にして返す関数を作る
    // parameters: String?
    // return: String
    // メモ: 1行で書いてみる
    
   
    
    
    // ドリル41★★
    // 整数型でpizza, coffee, cakeを与えると、与えた回数分それぞれ🍕、☕、🍰をprintする関数を作る
    // ただし最大個数は5個になるようにする
    // parameters: pizza: Int, coffe: Int, cake: Int
    // ヒント: for文とbreakを使うとやりやすいと思う
    // ヒント: 改行しないprintは、print("なにか", terminator: "") と書く
    //1より小さい数を省くために、if pizza >= 1 を最初に書く
    
    
    
    // ドリル42
    // ドリル41のpizza, coffee, cakeのパラメータを、cake, coffee, pizzaの順にしても
    // 関数の中身は変わらないことを確認する
    
   
    
    // ドリル43★★
    // key: Int, value: String を与えると、Dictionaryにして返す関数を作る
    // parameters: key: Int, value: String
    // return: 秘密
    
    
    
    // ドリル44
    // key: String, value: Int を与えると、Dictionaryにして返す関数を作る
    // parameters: key: String, value: Int
    // return: 秘密
    // ヒント: 関数名は42と同名でも大丈夫(パラメーターが違うと、同じ名前でも別々の関数として認識されるから)
    
    
    
    
    // ドリル45★
    // key: String, value: [Double] を与えると、Dictionaryにして返す関数を作る
    // parameters: key: String, value: [Double]
    // return: 秘密
    // ヒント: 関数名は42と同名でも大丈夫
    
    
    
    
    // ドリル46★★
    // red: Int, green: Int, blue: Int を与えたとき、UIColorを返す関数を作る
    // ただしこれらの値は0〜255の256段階で表示するものとする。8ビットだから、２の８乗で256。redの濃さを256段階で選べる。
    // alphaは1固定とする
    // ヒント: UIColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    // ここで各値は0〜1.0で表現されている。255/255は１だから。
    
   
    
    
    // ドリル47
    // red: Int, green: Int, blue: Int を与えたとき、redとblueを差し替えたUIColorを返す関数を作る
    // メモ: viewDidLoadで、view.backgroundColorに指定すると確認しやすい
    
   
    
    // ドリル48★★★
    // UIColorを与えると、redとblueを差し替えたUIColorを返す
    // なお、UIColorから(red, green, blue)の値（0〜1）を抽出するには以下の関数を用いる
    //豆知識：カラーとアルファ値を取り出す cgColor.components
    
   

    
    // ドリル49
    // 整数2つを入力して、足したものをprintする関数を作成する
    // ここで、パラメーターの前に_を付けて作成してみてください
    // func hoge(_ a: Int,_ b: Int)
    // 呼び出す際にa,bの記載が不要になります（コード補完を見てみて）
    
   

}
