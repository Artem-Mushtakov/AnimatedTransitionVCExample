//
//  FirstViewController.swift
//  AnimatedTransitionVCExample
//
//  Created by Artem Mushtakov on 15.05.2022.
//

import UIKit

class FirstViewController: UIViewController {

    // MARK: - Live cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        setupView()
    }
    
    // MARK: - UI Elements
    
    private lazy var buttonOpenLastVC: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Open Last VC", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 17)
        button.layer.cornerRadius = 10
        button.backgroundColor = .lightGray
        button.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        return button
    } ()

    // MARK: - Setup view
    
    fileprivate func setupView() {
        view.addSubview(buttonOpenLastVC)
        
        buttonOpenLastVC.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonOpenLastVC.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonOpenLastVC.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonOpenLastVC.widthAnchor.constraint(equalToConstant: 150),
            buttonOpenLastVC.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    // MARK: - Setup actions
    
    @objc fileprivate func actionButton(_ sender: UIButton) {
        let lastViewController = LastViewController()
        lastViewController.modalPresentationStyle = .fullScreen
        self.present(lastViewController, animated: true)
    }
}
