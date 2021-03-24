//
//  ReelTwoImgCell.swift
//  ecom
//
//  Created by Jose Miguel Agustin Yabut on 3/22/21.
//

import UIKit

class ReelTwoImgCell: UICollectionViewCell {
    
    var data: ReelTwoStruct? {
        didSet {
            guard let data = data else { return }
            imageView.image = data.backgroundImage
        }
    }
    var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 8
        contentView.addSubview(imageView)
        self.imageView = imageView
        self.imageView.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(-40)
            make.height.equalTo(290)
            make.left.equalTo(safeAreaInsets.left).offset(40)
            make.right.equalTo(0)
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
