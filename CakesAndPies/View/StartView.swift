//
//  StartView.swift
//  CakesAndPies
//
//  Created by Александр Андреев on 29.07.2023.
//

import Foundation
import UIKit
import SnapKit

class StartView: UIView {
    
    private let background = UIImageView(image: UIImage(named: Resources.Backgrounds.startBackground))
    
    public var menuButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: Resources.Buttons.blueButton), for: .normal)
        button.setTitle("Menu", for: .normal)
        button.titleLabel?.font = UIFont(name: Resources.Fonts.LailaBold, size: 34)
        button.titleLabel?.textAlignment = .center
        return button
    }()
    public var promotionsButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: Resources.Buttons.blueButton), for: .normal)
        button.setTitle("Promotions", for: .normal)
        button.titleLabel?.font = UIFont(name: Resources.Fonts.LailaBold, size: 34)
        button.titleLabel?.textAlignment = .center
        return button
    }()
    
    public var promoCodeButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: Resources.Buttons.blueButton), for: .normal)
        button.setTitle("Promo-code", for: .normal)
        button.titleLabel?.font = UIFont(name: Resources.Fonts.LailaBold, size: 34)
        button.titleLabel?.textAlignment = .center
        return button
    }()
    
    public var youAccount: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: Resources.Buttons.blueButton), for: .normal)
        button.setTitle("You Account", for: .normal)
        button.titleLabel?.font = UIFont(name: Resources.Fonts.LailaBold, size: 34)
        button.titleLabel?.textAlignment = .center
        return button
    }()
    
    private let flags1 = UIImageView(image: UIImage(named: Resources.Images.redFlags))
    private let flags2 = UIImageView(image: UIImage(named: Resources.Images.redFlags))
    private let flags3 = UIImageView(image: UIImage(named: Resources.Images.redFlags))
    private let flags4 = UIImageView(image: UIImage(named: Resources.Images.redFlags))
    
    private let sv: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.spacing = 22
        sv.alignment = .fill
        sv.distribution = .fillEqually
        
        return sv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        addSubview(background)
        addSubview(flags1)
        addSubview(flags2)
        addSubview(flags3)
        addSubview(flags4)
        addSubview(sv)
        sv.addArrangedSubview(menuButton)
        sv.addArrangedSubview(promotionsButton)
        sv.addArrangedSubview(promoCodeButton)
        sv.addArrangedSubview(youAccount)
        
        
        
        background.snp.makeConstraints { make in
            make.top.bottom.trailing.leading.equalToSuperview()
        }
        sv.snp.makeConstraints { make in
            //make.height.equalTo(346)
            make.width.equalTo(238)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(0.45*UIScreen.main.bounds.height)
        }
        
        [menuButton, promotionsButton, promoCodeButton, youAccount].forEach {
            $0.snp.makeConstraints { make in
                make.height.equalTo(70)
                make.width.equalToSuperview()
            }
        }
        
        flags1.snp.makeConstraints { make in
            make.centerY.equalTo(menuButton)
            make.centerX.equalTo(menuButton)
            make.width.equalTo(300)
            make.height.equalTo(58)
        }
        
        flags2.snp.makeConstraints { make in
            make.centerY.equalTo(promotionsButton)
            make.centerX.equalTo(promotionsButton)
            make.width.equalTo(300)
            make.height.equalTo(58)
        }
        flags3.snp.makeConstraints { make in
            make.centerY.equalTo(promoCodeButton)
            make.centerX.equalTo(promoCodeButton)
            make.width.equalTo(300)
            make.height.equalTo(58)
        }
        flags4.snp.makeConstraints { make in
            make.centerY.equalTo(youAccount)
            make.centerX.equalTo(youAccount)
            make.width.equalTo(300)
            make.height.equalTo(58)
        }
        
        
        
        
    }
}
