//
//  MenuView.swift
//  CakesAndPies
//
//  Created by Александр Андреев on 29.07.2023.
//

import UIKit

class MenuView: UIView {
    
    public lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        scrollView.contentSize = contentCize
        scrollView.frame = bounds
        return scrollView
    }()
    public lazy var contentView: UIImageView = {
        let contentView = UIImageView()
        contentView.image = UIImage(named: Resources.Backgrounds.menuBackground)
        //contentView.frame.size = contentCize
        return contentView
    }()
    
    public var scrollButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: Resources.Buttons.scrollButton), for: .normal)
        return button
    }()
    
    private var contentCize: CGSize {
        CGSize(width: frame.width, height: UIScreen.main.bounds.height * 5.05)
    }
    
    public let backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: Resources.Buttons.backButton), for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
        addSubview(scrollView)
        addSubview(backButton)
        
        scrollView.snp.makeConstraints { make in
            make.bottom.top.leading.trailing.equalToSuperview()
        }
        
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { make in
            make.bottom.leading.trailing.width.equalToSuperview()
            make.top.equalTo(scrollView.snp.top)
            make.height.equalTo(scrollView).multipliedBy(5.05)
        }
        
        layoutIfNeeded()
        scrollView.contentSize = contentView.bounds.size
        scrollView.addSubview(scrollButton)
        scrollButton.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview().inset(UIScreen.main.bounds.height*0.2)
            make.width.equalTo(105)
            make.height.equalTo(58)
        }
        backButton.snp.makeConstraints { make in
            make.width.equalTo(29)
            make.height.equalTo(26)
            make.leading.equalToSuperview().offset(16)
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
        }
    }

}
