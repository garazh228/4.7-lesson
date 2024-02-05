//
//  ViewController.swift
//  4.7 lesson
//
//  Created by adyl CEO on 05/02/2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let button1: UIButton = {
        let button1 = UIButton(type: .system)
        button1.setTitle("Перевод", for: .normal)
        button1.tintColor = .white
        button1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        button1.backgroundColor = .systemPurple
        button1.layer.cornerRadius = 32
        button1.frame = CGRect(x: 50, y: 200, width: 300, height: 70)
        button1.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button1
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(button1)
        
    }
    
    
    @objc func buttonTapped(sender: UIButton) {
        let vc = FirstViewController()
        navigationController?.pushViewController(vc, animated: true)
        }
    }

