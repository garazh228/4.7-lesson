//
//  ViewController.swift
//  4.7 lesson
//
//  Created by adyl CEO on 05/02/2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let button1 = UIButton(type: .system)
        button1.setTitle("Кнопка 1", for: .normal)
        button1.frame = CGRect(x: 50, y: 100, width: 200, height: 30)
 //       button1.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button1)
        
        
        let button2 = UIButton(type: .system)
        button2.setTitle("Кнопка 2", for: .normal)
        button2.frame = CGRect(x: 50, y: 150, width: 200, height: 30)
  //      button2.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button2)
        
        
        let button3 = UIButton(type: .system)
        button3.setTitle("Кнопка 3", for: .normal)
        button3.frame = CGRect(x: 50, y: 200, width: 200, height: 30)
   //     button3.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button3)
    }
    
    
}

