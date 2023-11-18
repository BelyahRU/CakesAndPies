//
//  PromoCodeViewController.swift
//  CakesAndPies
//
//  Created by Александр Андреев on 29.07.2023.
//

import UIKit

class PromoCodeViewController: UIViewController {
    
    let vieww = PromoCodeView()
    private var backButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        // Do any additional setup after loading the view.
    }
    
    func configure() {
        view.addSubview(vieww)
        vieww.snp.makeConstraints { make in
            make.bottom.top.leading.trailing.equalToSuperview()
        }
        vieww.promoLabel.text = AppDelegate.promo
        backButton = vieww.backButton
        backButton.addTarget(self, action: #selector(backPressed), for: .touchUpInside)
    }

}

extension PromoCodeViewController {
    @objc func backPressed() {
        navigationController?.popViewController(animated: true)
    }
}
