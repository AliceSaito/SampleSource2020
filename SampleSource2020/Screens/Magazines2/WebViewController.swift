//
//  WebViewController.swift
//  SampleSource2020
//
//  Created by 斉藤アリス on 2020/05/21.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    var selectedUrl: URL?
    @IBOutlet weak var wkWeb: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let uuu = selectedUrl {
            wkWeb.load(URLRequest(url: uuu))
        }
    }
    
}
