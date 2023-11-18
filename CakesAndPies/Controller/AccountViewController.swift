//
//  AccountViewController.swift
//  CakesAndPies
//
//  Created by Александр Андреев on 29.07.2023.
//

import UIKit

class AccountViewController: UIViewController {
    
    private let vieww = YouAccountView()
    private var backButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        // Do any additional setup after loading the view.
    }
    

    private func configure() {
        view.addSubview(vieww)
        vieww.snp.makeConstraints { make in
            make.leading.top.trailing.bottom.equalToSuperview()
        }
        
        backButton = vieww.backButton
        backButton.addTarget(self, action: #selector(backPressed), for: .touchUpInside)
    }

}

extension AccountViewController {
    
    @objc func backPressed() {
        navigationController?.popViewController(animated: true)
    }
    
    

}
