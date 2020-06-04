//
//  RyodanViewController.swift
//  SampleSource2020
//
//  Created by 斉藤アリス on 2020/06/04.
//

import UIKit
import Alamofire
import Kingfisher

struct RyodanProfileStruct: Codable {
    let id: String
    var name: String
    var number: String
    var type : String
    var techniques: [String]
    var image_url: String
}


class RyodanViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var daninArray : [RyodanProfileStruct] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fetch()
    }
    
    
    
    func fetch() {
        
        AF.request("https://5ecb6c2238df960016511fac.mockapi.io/ryodan/getDanin").responseDecodable(of: [RyodanProfileStruct].self) { response in
            
            guard let danins = response.value else {
                
                print(response.error?.localizedDescription, "❤️")
                return
            }
            print(danins, "🐈")
            dump(danins)
            
            self.daninArray = danins
            self.collectionView.reloadData()
            
        }
        
    }
    
}

extension RyodanViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return daninArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DaninCollectionViewCell", for: indexPath) as! DaninCollectionViewCell
        
        cell.iconImage.kf.setImage(with: URL(string: daninArray[indexPath.row].image_url))
        cell.numberLabel.text = daninArray[indexPath.row].number
        cell.nameLabel.text = daninArray[indexPath.row].name
        cell.typeLabel.text = daninArray[indexPath.row].type
        cell.techniqueLabel.text = daninArray[indexPath.row].techniques.joined(separator:"\n")
        
        
        return cell
    }
}
