//
//  ReelTwoCell.swift
//  ecom
//
//  Created by Jose Miguel Agustin Yabut on 3/20/21.
//

import UIKit
import SnapKit

class ReelTwoCell: UICollectionViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    let data = [
        ReelTwoStruct(title: "x", backgroundImage: #imageLiteral(resourceName: "x")),
        ReelTwoStruct(title: "xx", backgroundImage: #imageLiteral(resourceName: "xx")),
        ReelTwoStruct(title: "y", backgroundImage: #imageLiteral(resourceName: "y")),
        ReelTwoStruct(title: "yy", backgroundImage: #imageLiteral(resourceName: "yy")),
        ReelTwoStruct(title: "z", backgroundImage: #imageLiteral(resourceName: "z")),
        ReelTwoStruct(title: "zz", backgroundImage: #imageLiteral(resourceName: "zz"))
    ]
    fileprivate let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(ReelTwoImgCell.self, forCellWithReuseIdentifier: "ImgCell")
        return cv
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(collectionView)
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(contentView)
            make.bottom.equalTo(contentView)
            make.left.right.equalTo(0)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImgCell", for: indexPath) as! ReelTwoImgCell
        cell.data = self.data[indexPath.item]
        return cell
    }
    //local array implementation//
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
