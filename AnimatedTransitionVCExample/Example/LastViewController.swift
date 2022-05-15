//
//  LastViewController.swift
//  AnimatedTransitionVCExample
//
//  Created by Artem Mushtakov on 15.05.2022.
//

import UIKit

class LastViewController: UIViewController {

    // MARK: - Live cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupView()
    }
    
    // MARK: - UI Elements
    
    private lazy var buttonOpenFirstVC: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Open First VC", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 17)
        button.layer.cornerRadius = 10
        button.backgroundColor = .brown
        button.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        return button
    } ()

    // MARK: - Setup view
    
    fileprivate func setupView() {
        view.addSubview(buttonOpenFirstVC)
        
        buttonOpenFirstVC.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonOpenFirstVC.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonOpenFirstVC.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonOpenFirstVC.widthAnchor.constraint(equalToConstant: 150),
            buttonOpenFirstVC.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    // MARK: - Setup actions
    
    @objc fileprivate func actionButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
