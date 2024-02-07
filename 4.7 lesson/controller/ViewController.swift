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
        button1.setTitle("Union Bank", for: .normal)
        button1.tintColor = .white
        button1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        button1.backgroundColor = .systemPurple
        button1.layer.cornerRadius = 32
        button1.frame = CGRect(x: 50, y: 200, width: 300, height: 70)
        button1.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button1
    }()
    
    private let button2: UIButton = {
        let button2 = UIButton(type: .system)
        button2.setTitle("Visa Card", for: .normal)
        button2.tintColor = .white
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 32)
        button2.backgroundColor = .systemPurple
        button2.layer.cornerRadius = 32
        button2.frame = CGRect(x: 50, y: 300, width: 300, height: 70)
        button2.addTarget(self, action: #selector(buttonTapped2), for: .touchUpInside)
        return button2
    }()
    
    
    private let button3: UIButton = {
        let button3 = UIButton(type: .system)
        button3.setTitle("Master Card", for: .normal)
        button3.tintColor = .white
        button3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 32)
        button3.backgroundColor = .systemPurple
        button3.layer.cornerRadius = 32
        button3.frame = CGRect(x: 50, y: 400, width: 300, height: 70)
        button3.addTarget(self, action: #selector(buttonTapped3), for: .touchUpInside)
        return button3
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        
    }
    
    //переход 1-ой кнопки
    @objc func buttonTapped(sender: UIButton) {
        let vc = FirstViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    //переход 2-ой кнопки
        @objc func buttonTapped2(sender: UIButton) {
            let vc = VisaCardController()
            navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func buttonTapped3(sender: UIButton) {
        let vc = MasterCardController()
        navigationController?.pushViewController(vc, animated: true)
    }
}







