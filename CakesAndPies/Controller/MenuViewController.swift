//
//  MenuViewController.swift
//  CakesAndPies
//
//  Created by Александр Андреев on 29.07.2023.
//

import UIKit

class MenuViewController: UIViewController {
    
    private let menuView = MenuView()
    private var scrollButton = UIButton()
    private var backButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view.addSubview(menuView)
        menuView.snp.makeConstraints { make in
            make.leading.top.trailing.bottom.equalToSuperview()
        }
        scrollButton = menuView.scrollButton
        scrollButton.addTarget(self, action: #selector(scrollToTop), for: .touchUpInside)
        
        backButton = menuView.backButton
        backButton.addTarget(self, action: #selector(backPressed), for: .touchUpInside)
    }
}

extension MenuViewController {
    @objc func scrollToTop() {
        menuView.scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
    @objc func backPressed() {
        navigationController?.popViewController(animated: true)
    }
    
    

}
