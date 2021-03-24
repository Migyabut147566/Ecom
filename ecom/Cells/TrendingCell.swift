//
//  TrendingCell.swift
//  ecom
//
//  Created by Jose Miguel Agustin Yabut on 3/20/21.
//

import UIKit
import SnapKit

class TrendingCell: UICollectionViewCell {

    weak var trendingProducts: UIView!
    var image = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)

        let trendingProducts = UIView(frame: .zero)
        contentView.addSubview(trendingProducts)
        trendingProducts.translatesAutoresizingMaskIntoConstraints = false
        self.trendingProducts = trendingProducts
        trendingProducts.snp.makeConstraints { (make) -> Void in
            make.top.left.equalToSuperview().offset(5)
            make.bottom.right.equalToSuperview().offset(-5)
        }
        let trending = UIButton(frame: .zero)
        trendingProducts.addSubview(trending)
        trending.translatesAutoresizingMaskIntoConstraints = false
        trending.isUserInteractionEnabled = false
        trending.setImage(UIImage(named: "Trending"), for: [])
        trending.snp.makeConstraints { (make) -> Void in
            make.top.left.equalTo(trendingProducts).offset(5)
            make.height.equalTo(50)
            make.right.equalTo(trendingProducts).offset(-5)
        }
        let image = UIButton(frame: .zero)
        trendingProducts.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.setImage(UIImage(named: "T1"), for: [])
        image.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(trending.snp.bottom)
            make.left.equalTo(trendingProducts)
            make.bottom.right.equalTo(trendingProducts).offset(-5)
        }
        self.image = image
        self.contentView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
