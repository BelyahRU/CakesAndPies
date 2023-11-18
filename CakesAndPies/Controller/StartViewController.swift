//
//  StartViewController.swift
//  CakesAndPies
//
//  Created by Александр Андреев on 29.07.2023.
//

import UIKit

class StartViewController: UIViewController {
    
    private let startView = StartView()
    
    private var menu = UIButton()
    private var promotion = UIButton()
    private var promoCode = UIButton()
    private var account = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view.addSubview(startView)
        startView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        
        menu = startView.menuButton
        promotion = startView.promotionsButton
        promoCode = startView.promoCodeButton
        account = startView.youAccount
        
        menu.addTarget(self, action: #selector(menuPressed), for: .touchUpInside)
        promotion.addTarget(self, action: #selector(promotionPressed), for: .touchUpInside)
        promoCode.addTarget(self, action: #selector(promoCodePressed), for: .touchUpInside)
        account.addTarget(self, action: #selector(accountPressed), for: .touchUpInside)
    }
    


}

extension StartViewController {
    @objc func menuPressed() {
        let vc = MenuViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func promotionPressed() {
        let vc = PromotionsViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func promoCodePressed() {
        let vc = PromoCodeViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func accountPressed() {
        let vc = AccountViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
