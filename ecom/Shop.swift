//
//  Shop.swift
//  ecom
//
//  Created by Jose Miguel Agustin Yabut on 3/20/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    weak var shopCV: UICollectionView!

    override func loadView() {
        super.loadView()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.snp.makeConstraints { (make) -> Void in
            make.top.bottom.left.right.equalToSuperview()
        }
        shopCV = collectionView
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        shopCV.backgroundColor = .white
        shopCV.dataSource = self
        shopCV.delegate = self
        shopCV.register(HeaderCell.self, forCellWithReuseIdentifier: "1")
        shopCV.register(SearchCell.self, forCellWithReuseIdentifier: "2")
        shopCV.register(CarousCell.self, forCellWithReuseIdentifier: "3")
        shopCV.register(TrendingCell.self, forCellWithReuseIdentifier: "4")
        shopCV.register(BrandsCell.self, forCellWithReuseIdentifier: "5")
        shopCV.register(ReelTwoCell.self, forCellWithReuseIdentifier: "6")
        shopCV.register(FeaturedCell.self, forCellWithReuseIdentifier: "7")
    }
    @objc func btnAlerts(sender: Any?)
    {
        let alert = UIAlertController(title: "Button Tapped", message: "Press OK to continue", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "1", for: indexPath) as! HeaderCell
            cell.cartBtn.addTarget(self, action: #selector(btnAlerts), for: .touchUpInside)
            return cell
        } else if indexPath.row == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "2", for: indexPath) as! SearchCell
            return cell
        } else if indexPath.row == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "3", for: indexPath) as! CarousCell
            cell.btnA.addTarget(self, action: #selector(btnAlerts), for: .touchUpInside)
            cell.btnB.addTarget(self, action: #selector(btnAlerts), for: .touchUpInside)
            cell.btnC.addTarget(self, action: #selector(btnAlerts), for: .touchUpInside)
            return cell
        } else if indexPath.row == 3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "4", for: indexPath) as! TrendingCell
            cell.self.image.addTarget(self, action: #selector(btnAlerts), for: .touchUpInside)
            return cell
        } else if indexPath.row == 4 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "5", for: indexPath) as! BrandsCell
            cell.self.a.addTarget(self, action: #selector(btnAlerts), for: .touchUpInside)
            cell.self.b.addTarget(self, action: #selector(btnAlerts), for: .touchUpInside)
            cell.self.c.addTarget(self, action: #selector(btnAlerts), for: .touchUpInside)
            cell.self.d.addTarget(self, action: #selector(btnAlerts), for: .touchUpInside)
            cell.self.e.addTarget(self, action: #selector(btnAlerts), for: .touchUpInside)
            return cell
        } else if indexPath.row == 5 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "6", for: indexPath) as! ReelTwoCell
            return cell
        } else { indexPath.row == 6
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "7", for: indexPath) as! FeaturedCell
            return cell
        }
    }
}
extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            return print("Selected Header")
        } else { indexPath.row == 1
            return print("Selected MainNavigation")
        }
    }
}
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: collectionView.bounds.size.width - 16, height: 30)
        } else if indexPath.row == 1 {
            return CGSize(width: collectionView.bounds.size.width - 16, height: 40)
        } else if indexPath.row == 2 {
            return CGSize(width: collectionView.bounds.size.width - 16, height: 400)
        } else if indexPath.row == 3 {
            return CGSize(width: collectionView.bounds.size.width - 16, height: 400)
        } else if indexPath.row == 4 {
            return CGSize(width: collectionView.bounds.size.width - 16, height: 1360)
        } else if indexPath.row == 5 {
            return CGSize(width: collectionView.bounds.size.width - 16, height: 300)
        } else { indexPath.row == 6
            return CGSize(width: collectionView.bounds.size.width - 16, height: 1030)
        }
    }
    private func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGSize {
        let height = view.frame.size.height
        let width = view.frame.size.width
        return CGSize(width: width * 1, height: height * 1.0)
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 8, left: 8, bottom: 8, right: 8)
    }
}
