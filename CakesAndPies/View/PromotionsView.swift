//
//  PromotionsView.swift
//  CakesAndPies
//
//  Created by Александр Андреев on 29.07.2023.
//

import UIKit

class PromotionsView: UIView {
    
    let background = UIImageView(image: UIImage(named: Resources.Backgrounds.promotionsBackground))
    public let backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: Resources.Buttons.backButton), for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        congirure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func congirure() {
        addSubview(background)
        addSubview(backButton)
        background.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        
        backButton.snp.makeConstraints { make in
            make.width.equalTo(29)
            make.height.equalTo(26)
            make.leading.equalToSuperview().offset(16)
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
        }
        
        
        
    }
    
}
