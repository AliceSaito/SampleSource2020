//
//  AboutSegueNextViewController.swift
//  SampleSource2020
//
//  Created by 長内幸太郎 on 2020/05/22.
//

import UIKit

class AboutSegueNextViewController: UIViewController {
    
    // データを入れるView
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    // データを受け入れるための変数　②
    var image: UIImage?
    var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ④　nilじゃなかったらセットする
        if let image = image {
            imageView.image = image
        }
        if let name = name {
            label.text = name
        }
    }
}
