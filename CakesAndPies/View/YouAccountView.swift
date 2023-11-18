//
//  YouAccountView.swift
//  CakesAndPies
//
//  Created by Александр Андреев on 29.07.2023.
//

import UIKit

class YouAccountView: UIView {

    let background = UIImageView(image: UIImage(named: Resources.Backgrounds.youAccountBackground))
    public let backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: Resources.Buttons.backButton), for: .normal)
        return button
    }()
    
    public let every5CakeSV: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .center
        view.distribution = .fillEqually
        view.spacing = -3
        return view
        
    }()
    public let every10DrinksSV: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .center
        view.distribution = .fillEqually
        view.spacing = 13.5
        return view
        
    }()
    public let every7DoughnutsSV: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .center
        view.distribution = .fillEqually
        view.spacing = 10
        return view
    }()
    
    public let every10CakeSV: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .center
        view.distribution = .fillEqually
        view.spacing = 10
        return view
    }()
    
    public var cake1Button = UIButton()
    public var cake2Button = UIButton()
    public var cake3Button = UIButton()
    public var cake4Button = UIButton()
    public var cake5Button = UIButton()
    
    
    public var drink1Button = UIButton()
    public var drink2Button = UIButton()
    public var drink3Button = UIButton()
    public var drink4Button = UIButton()
    public var drink5Button = UIButton()
    public var drink6Button = UIButton()
    public var drink7Button = UIButton()
    public var drink8Button = UIButton()
    public var drink9Button = UIButton()
    public var drink10Button = UIButton()
    
    
    public var doughnut1Button = UIButton()
    public var doughnut2Button = UIButton()
    public var doughnut3Button = UIButton()
    public var doughnut4Button = UIButton()
    public var doughnut5Button = UIButton()
    public var doughnut6Button = UIButton()
    public var doughnut7Button = UIButton()
    
    
    public var miniCake1Button = UIButton()
    public var miniCake2Button = UIButton()
    public var miniCake3Button = UIButton()
    public var miniCake4Button = UIButton()
    public var miniCake5Button = UIButton()
    public var miniCake6Button = UIButton()
    public var miniCake7Button = UIButton()
    public var miniCake8Button = UIButton()
    public var miniCake9Button = UIButton()
    public var miniCake10Button = UIButton()

    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        congirure()
        setupConstraintsForSales()
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
    
    private func setupButtons() {
        [cake1Button, cake2Button, cake3Button, cake4Button, cake5Button].forEach {
            every5CakeSV.addArrangedSubview($0)
            $0.setBackgroundImage(UIImage(named: Resources.Images.cake), for: .normal)
            $0.snp.makeConstraints { make in
                make.width.equalTo(UIScreen.main.bounds.width*0.0951)
                make.height.equalTo(UIScreen.main.bounds.height*0.0509)
            }
            $0.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        }
        
        [drink1Button, drink2Button, drink3Button, drink4Button, drink5Button, drink6Button, drink7Button, drink8Button, drink9Button, drink10Button].forEach {
            every10DrinksSV.addArrangedSubview($0)
            $0.setBackgroundImage(UIImage(named: Resources.Buttons.drinkButton), for: .normal)
            $0.snp.makeConstraints { make in
                make.width.equalTo(UIScreen.main.bounds.width*0.043309)
                make.height.equalTo(UIScreen.main.bounds.height*0.0498)
            }
            $0.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
            
        }
        
        [doughnut1Button, doughnut2Button, doughnut3Button, doughnut4Button, doughnut5Button, doughnut6Button, doughnut7Button].forEach {
            every7DoughnutsSV.addArrangedSubview($0)
            $0.setBackgroundImage(UIImage(named: Resources.Buttons.doughnoutButton), for: .normal)
            $0.snp.makeConstraints { make in
                make.width.height.equalTo(30)
            }
            $0.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        }
        
        [miniCake1Button, miniCake2Button, miniCake3Button, miniCake4Button, miniCake5Button, miniCake6Button, miniCake7Button, miniCake8Button, miniCake9Button, miniCake10Button].forEach {
            $0.setBackgroundImage(UIImage(named: Resources.Buttons.miniCakeButton), for: .normal)
            every10CakeSV.addArrangedSubview($0)
            $0.snp.makeConstraints { make in
                make.width.equalTo(25.6)
                make.height.equalTo(34.1)
            }
            $0.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)

        }
    }
    
    private func setupConstraintsForSales() {
        addSubview(every5CakeSV)
        addSubview(every10DrinksSV)
        addSubview(every7DoughnutsSV)
        addSubview(every10CakeSV)
        every5CakeSV.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width*0.577)
            make.height.equalTo(UIScreen.main.bounds.height*0.06359)
            make.centerX.equalToSuperview().offset(5)
            make.top.equalToSuperview().offset(UIScreen.main.bounds.height*0.2206)
        }
        every10DrinksSV.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width*0.81877-20)
            make.height.equalTo(UIScreen.main.bounds.height*0.06359)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(UIScreen.main.bounds.height*0.4060)
        }
        every7DoughnutsSV.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width*0.687-20)
            make.height.equalTo(UIScreen.main.bounds.height*0.06359)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(UIScreen.main.bounds.height*0.6138)
        }
        
        
        every10CakeSV.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width*0.8575-20)
            make.height.equalTo(UIScreen.main.bounds.height*0.06359)
            make.centerX.equalToSuperview().offset(4)
            make.top.equalToSuperview().offset(UIScreen.main.bounds.height*0.7981)
        }
        
        setupButtons()
    }
    
}

extension YouAccountView {
    
    @objc func buttonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            // Измените прозрачность кнопки при анимации
            sender.alpha = sender.alpha == 1.0 ? 0.5 : 1.0
        }
    }


}
