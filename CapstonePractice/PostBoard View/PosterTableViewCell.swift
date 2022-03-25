//
//  PosterTableViewCell.swift
//  CapstonePractice
//
//  Created by Yundong Lee on 2022/03/25.
//

import UIKit
import SnapKit

class PosterTableViewCell: UITableViewCell, SetUpView {
    
    static let identifier = "PosterTableViewCell"
    
    let titleLabel = UILabel()
    let contentLabel = UILabel()
    let dateIdLabel = UILabel()
    
    let likeLabel = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setUp() {
        addSubview(titleLabel)
        addSubview(contentLabel)
        addSubview(dateIdLabel)
        addSubview(likeLabel)
        
        titleLabel.text = "This is title"
        contentLabel.text = "this is content of this poster"
        dateIdLabel.text = "03.24"
        likeLabel.text = "5likes"
    }
    
    func setUpConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(5)
            make.height.equalTo(25)
            make.leading.equalToSuperview().offset(8)
            make.trailing.equalToSuperview().offset(-8)
        }
        
        contentLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.height.equalTo(15)
            make.leading.equalToSuperview().offset(8)
            make.trailing.equalToSuperview().offset(-8)
        }
        
        dateIdLabel.snp.makeConstraints { make in
            make.top.equalTo(contentLabel.snp.bottom).offset(5)
            make.height.equalTo(15)
            make.leading.equalToSuperview().offset(8)
            make.width.equalTo(100)
        }
        
        likeLabel.snp.makeConstraints { make in
            make.top.equalTo(contentLabel.snp.bottom).offset(5)
            make.height.equalTo(15)
            make.trailing.equalToSuperview().offset(-8)
            make.width.equalTo(100)
        }
    }
    
    
}
