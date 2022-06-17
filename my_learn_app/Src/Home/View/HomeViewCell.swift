//
//  HomeViewCell.swift
//  my_learn_app
//
//  Created by aldinugroho on 17/06/22.
//

import UIKit

class HomeViewCell: UICollectionViewCell {
    static let identifier = "HomeViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup() {
        contentView.backgroundColor = .systemRed
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
