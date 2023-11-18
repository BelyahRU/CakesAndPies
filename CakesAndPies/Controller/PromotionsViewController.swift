//
//  PromotionsViewController.swift
//  CakesAndPies
//
//  Created by Александр Андреев on 29.07.2023.
//

import UIKit

class PromotionsViewController: UIViewController {
    
    let promotionsView = PromotionsView()
    private var backButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        congirure()
        // Do any additional setup after loading the view.
    }
    
    private func congirure() {
        view.addSubview(promotionsView)
        promotionsView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        
        backButton = promotionsView.backButton
        backButton.addTarget(self, action: #selector(backPressed), for: .touchUpInside)
        
        
    }
}

extension PromotionsViewController {
    @objc func backPressed() {
        navigationController?.popViewController(animated: true)
    }
}
