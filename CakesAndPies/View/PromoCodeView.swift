//
//  PromoCodeView.swift
//  CakesAndPies
//
//  Created by Александр Андреев on 29.07.2023.
//

import UIKit

class PromoCodeView: UIView {
    
    private let background = UIImageView(image: UIImage(named: Resources.Backgrounds.promoCodeBackground))

    private let rectangle = UIImageView(image: UIImage(named: Resources.Images.redRectangle))
    public let promoUntil: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: Resources.Fonts.LexendBold, size: 14)
        label.text = "BY THE END OF THE WEEK"
        label.textColor = .white
        return label
    }()
    public let promoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: Resources.Fonts.BayonRegular, size: 43)
        label.textAlignment = .center
        label.textColor = UIColor(red: 0.824, green: 0.263, blue: 0.365, alpha: 1)
//        label.text = "6 M I S W 7"
        return label
    }()
    
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
    
    
    private func configure() {
        addSubview(background)
        addSubview(promoLabel)
        addSubview(rectangle)
        addSubview(promoUntil)
        addSubview(backButton)
        //promoLabel.backgroundColor = .black
        background.snp.makeConstraints { make in
            make.leading.trailing.top.bottom.equalToSuperview()
        }
        promoLabel.snp.makeConstraints { make in
            make.top.equalTo(snp.centerY).inset(12)
//            make.height.equalTo(64)
//            make.width.equalTo(200)
            make.centerX.equalToSuperview()
            make.height.equalTo(0.0664*UIScreen.main.bounds.height)
            make.width.equalTo(0.6*UIScreen.main.bounds.width)
        }
        rectangle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(UIScreen.main.bounds.height*0.144)
            make.centerX.equalToSuperview()
            make.height.equalTo(UIScreen.main.bounds.height*0.072)
            make.width.equalTo(UIScreen.main.bounds.width*0.712)
        }
        promoUntil.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(rectangle.snp.centerY)
        }
        
        backButton.snp.makeConstraints { make in
            make.width.equalTo(29)
            make.height.equalTo(26)
            make.leading.equalToSuperview().offset(16)
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
        }
        
    }
    

}
