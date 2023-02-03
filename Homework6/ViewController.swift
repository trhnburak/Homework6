//
//  ViewController.swift
//  Homework6
//
//  Created by Burak Turhan on 31.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topImageView1: UIImageView!
    @IBOutlet weak var topImageView2: UIImageView!
    @IBOutlet weak var topImageView3: UIImageView!

    @IBOutlet weak var topCollectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var bannerBottomLineView: UIView!
    @IBOutlet weak var mainScrollView: UIScrollView!

    @IBOutlet weak var popularBrandImageView1: UIImageView!
    @IBOutlet weak var popularBrandImageView2: UIImageView!
    @IBOutlet weak var popularBrandImageView3: UIImageView!

    var dataDictionary: [[String: String]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        topCollectionView.delegate = self
        topCollectionView.dataSource = self


        dataDictionary = [["image": "Cell-1.jpg", "text": "Pazarama Pet"],
                                   ["image": "Cell-2.jpg", "text": "Dijital Kod Market"],
                                   ["image": "Cell-3.jpg", "text": "Popüler Mağazalar"],
                                   ["image": "Cell-4.jpg", "text": "Anadolu'dan Ürünler"]]


        // Top Images
        topImageView1.layer.cornerRadius = 6
        topImageView2.layer.cornerRadius = 6
        topImageView3.layer.cornerRadius = 6

        //Collection View
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()

        let width = topCollectionView.frame.size.width
        let height = topCollectionView.frame.size.height

        layout.sectionInset = UIEdgeInsets(top:2, left:2, bottom:2, right:2)
        layout.itemSize = CGSize(width: (width - 12)/2, height: (height - 12)/2)
        layout.minimumInteritemSpacing = 4
        layout.minimumLineSpacing = 14

        topCollectionView.collectionViewLayout = layout


        //Searchbar
        searchBar.searchTextField.font = UIFont.systemFont(ofSize: 14)
        searchBar.layer.cornerRadius = 6

        //let textFieldInsideSearchBar = searchBar.value(forKey: "searchField") as? UITextField
        //textFieldInsideSearchBar?.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 40))

        //searchBar.setImage(UIImage(named: "magnifyingglass"), for: .search, state: .normal)

        //BannerImageView
        bannerImageView.layer.cornerRadius = 4

        //View
        bannerBottomLineView.layer.borderColor =  UIColor(named: "grey-1")?.cgColor
        bannerBottomLineView.layer.borderWidth = 2

        //Scroll View
        //mainScrollView.showsHorizontalScrollIndicator = false
        //mainScrollView.contentSize = CGSize(
         //   width: mainScrollView.frame.width,
         //   height: mainScrollView.frame.height + 100)

        //mainScrollView.isScrollEnabled = true
        //mainScrollView.bounces = true

        //Popular Brand
        popularBrandImageView1.layer.borderWidth = 1
        popularBrandImageView1.layer.borderColor = UIColor(named: "gray-2")?.cgColor
        popularBrandImageView1.layer.cornerRadius = 6


        popularBrandImageView2.layer.borderWidth = 1
        popularBrandImageView2.layer.borderColor = UIColor(named: "gray-2")?.cgColor
        popularBrandImageView2.layer.cornerRadius = 6


        popularBrandImageView3.layer.borderWidth = 1
        popularBrandImageView3.layer.borderColor = UIColor(named: "gray-2")?.cgColor
        popularBrandImageView3.layer.cornerRadius = 6



    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return dataDictionary.count

    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopCell", for: indexPath) as! TopCollectionViewCell

        cell.topCellImageView.image = UIImage(named: (dataDictionary[indexPath.row]["image"] ?? "") as String)
        cell.topCellLabel.text = (dataDictionary[indexPath.row]["text"] ?? "") as String

        cell.layer.borderColor = UIColor(named: "grey-1")?.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 6

        return cell

    }


}


