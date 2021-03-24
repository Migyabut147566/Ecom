//
//  FeaturedCell.swift
//  ecom
//
//  Created by Jose Miguel Agustin Yabut on 3/20/21.
//

import UIKit
import SnapKit

class FeaturedCell: UICollectionViewCell {

    weak var featuredBrands: UIView!
    var a = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)

        let featuredBrands = UIView(frame: .zero)
        contentView.addSubview(featuredBrands)
        featuredBrands.translatesAutoresizingMaskIntoConstraints = false
        self.featuredBrands = featuredBrands
        featuredBrands.snp.makeConstraints { (make) -> Void in
            make.top.left.equalToSuperview().offset(5)
            make.bottom.right.equalToSuperview().offset(-5)
        }
        let trending = UIButton(frame: .zero)
        featuredBrands.addSubview(trending)
        trending.translatesAutoresizingMaskIntoConstraints = false
        trending.isUserInteractionEnabled = false
        trending.setImage(UIImage(named: "bottomImg"), for: [])
        trending.snp.makeConstraints { (make) -> Void in
            make.top.left.equalTo(featuredBrands).offset(5)
            make.height.equalTo(400)
            make.right.equalTo(featuredBrands).offset(-5)
        }
        let skin = UIButton(frame: .zero)
        featuredBrands.addSubview(skin)
        skin.translatesAutoresizingMaskIntoConstraints = false
        skin.setImage(UIImage(named: "bottomImg2"), for: [])
        skin.clipsToBounds = true
        skin.contentMode = .scaleAspectFill
        skin.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(trending.snp.bottom)
            make.height.equalTo(600)
            make.left.right.equalTo(trending)
        }
        self.contentView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.a = skin
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
