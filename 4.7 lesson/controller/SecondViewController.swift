//
//  SecondViewController.swift
//  4.7 lesson
//
//  Created by adyl CEO on 05/02/2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let successLabel: UILabel = {
           let label = UILabel()
           label.text = "Перевод выполнен"
           label.textAlignment = .center
           label.font = UIFont.boldSystemFont(ofSize: 24)
           return label
       }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
            view.backgroundColor = .white
            title = "Успех"

            
            view.addSubview(successLabel)

            
            successLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                successLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                successLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        }
  
}
