//
//  MyCell.swift
//  CollectionViewTest
//
//  Created by Jose Miguel Agustin Yabut on 3/20/21.
//

import UIKit
import SnapKit

class CarousCell: UICollectionViewCell {
    
    weak var naviGroup: UIImageView!
    var scroll: UIScrollView!
    var pageControl: UIPageControl!
    
    var btnA: UIButton!
    var btnB: UIButton!
    var btnC: UIButton!
    var btnD: UIButton!
    var btnE: UIButton!

    var imageNames = ["a", "b", "c", "d", "e"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let scroll = UIScrollView(frame: .zero)
        contentView.addSubview(scroll)
        
        let pageControl = UIPageControl(frame: .zero)
        contentView.addSubview(pageControl)
        pageControl.frame = CGRect(x: 100, y: 100, width: 300, height: 50)
        pageControl.numberOfPages = 6;
        pageControl.currentPage = 0;
        self.pageControl = pageControl
        self.pageControl.backgroundColor = .white
        self.pageControl.pageIndicatorTintColor = .purple
        
        let btnA = UIButton()
        scroll.addSubview(btnA)
        btnA.setTitle("Payday Super Sale", for: [])
        btnA.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        btnA.setTitleColor(.black, for: [])
        btnA.addBottomBorder(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1), height: 3.0)

        let btnB = UIButton()
        scroll.addSubview(btnA)
        btnB.setTitle("Health", for: [])
        btnB.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        btnB.setTitleColor(.black, for: [])
        
        let btnC = UIButton()
        scroll.addSubview(btnA)
        btnC.setTitle("Skincare", for: [])
        btnC.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        btnC.setTitleColor(.black, for: [])
        
        let btnD = UIButton()
        scroll.addSubview(btnA)
        btnD.setTitle("Makeup", for: [])
        btnD.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        btnD.setTitleColor(.black, for: [])
        
        let btnE = UIButton()
        scroll.addSubview(btnA)
        btnE.setTitle("Bath & Body Care", for: [])
        btnE.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        btnE.setTitleColor(.black, for: [])
        
        scroll.addSubview(btnA)
        scroll.addSubview(btnB)
        scroll.addSubview(btnC)
        scroll.addSubview(btnD)
        scroll.addSubview(btnE)

        let contentRect: CGRect = scroll.subviews.reduce(into: .zero) { rect, view in
            rect = rect.union(view.frame)
        }
        scroll.contentSize = contentRect.size
        scroll.layer.masksToBounds = true
        scroll.autoresizesSubviews = true

        let naviGroup = UIImageView(frame: .zero)
        scroll.addSubview(naviGroup)
        let timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { timer in naviGroup.image = UIImage(named: self.imageNames.randomElement()!)}
        timer.fire()
        self.btnA = btnA
        self.btnB = btnB
        self.btnC = btnC
        self.btnD = btnD
        self.btnE = btnE
        self.scroll = scroll
        self.naviGroup = naviGroup
        self.naviGroup.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(scroll).offset(55)
            make.bottom.left.right.equalTo(safeAreaLayoutGuide)
        }
        self.scroll.snp.makeConstraints { (make) -> Void in
            make.top.left.equalTo(safeAreaLayoutGuide)
            make.width.right.equalTo(0)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-30)
        }
        self.btnA.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(scroll)
            make.left.equalTo(scroll).offset(10)
            make.width.equalTo(150)
            make.bottom.equalTo(self.naviGroup.snp.top)
        }
        self.btnB.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(scroll)
            make.left.equalTo(scroll).offset(160)
            make.width.equalTo(100)
            make.bottom.equalTo(self.naviGroup.snp.top)
        }
        self.btnC.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(scroll)
            make.left.equalTo(scroll).offset(260)
            make.width.equalTo(100)
            make.bottom.equalTo(self.naviGroup.snp.top)
        }
        self.btnD.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(scroll)
            make.left.equalTo(scroll).offset(360)
            make.width.equalTo(100)
            make.bottom.equalTo(self.naviGroup.snp.top)
        }
        self.btnE.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(scroll)
            make.left.equalTo(scroll).offset(460)
            make.width.equalTo(100)
            make.bottom.equalTo(self.naviGroup.snp.top)
        }
        self.pageControl.snp.makeConstraints { (make) -> Void in
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
            make.left.equalTo(safeAreaInsets.left).offset(105)
        }
    }
    //brute force implementation//
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
