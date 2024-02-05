//
//  FirstViewController.swift
//  4.7 lesson
//
//  Created by adyl CEO on 05/02/2024.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    
    var senderCardNumber: String = "1234567890123456" // Номер карты отправителя
    var senderBalance: Double = 1000.0 // Баланс отправителя
    var receiverCardNumber: String?
    var transferAmount: Double?
    
    lazy var validationService: TransferValidation = CheckProtocolFunc()
    
    private let receiverCardTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Номер карты получателя"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private let amountTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Сумма перевода"
        textField.borderStyle = .roundedRect
        textField.keyboardType = .decimalPad
        return textField
    }()
    
    private let senderInfoLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private let transferButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 16
        button.setTitle("Перевести", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.tintColor = .white
        button.backgroundColor = .systemPurple
        
        button.addTarget(self, action: #selector(transferButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        
        senderInfoLabel.text = "Отправитель: \(senderCardNumber)\nБаланс: \(senderBalance)"
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        title = "Перевод"
        
        
        view.addSubview(receiverCardTextField)
        view.addSubview(amountTextField)
        view.addSubview(senderInfoLabel)
        view.addSubview(transferButton)
        
        
        receiverCardTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            receiverCardTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            receiverCardTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            receiverCardTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            receiverCardTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        amountTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            amountTextField.topAnchor.constraint(equalTo: receiverCardTextField.bottomAnchor, constant: 20),
            amountTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            amountTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            amountTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        senderInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            senderInfoLabel.topAnchor.constraint(equalTo: amountTextField.bottomAnchor, constant: 20),
            senderInfoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            senderInfoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        transferButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            transferButton.topAnchor.constraint(equalTo: senderInfoLabel.bottomAnchor, constant: 20),
            transferButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            transferButton.heightAnchor.constraint(equalToConstant: 40),
            transferButton.widthAnchor.constraint(equalToConstant: 130)
        ])
    }
    
    @objc private func transferButtonTapped() {
        guard let text1 = receiverCardTextField.text, !text1.isEmpty,
              let text2 = amountTextField.text, !text2.isEmpty else {
            receiverCardTextField.layer.borderWidth = 1.0
            receiverCardTextField.layer.borderColor = UIColor.red.cgColor
            amountTextField.layer.borderWidth = 1.0
            amountTextField.layer.borderColor = UIColor.red.cgColor
            return
        }
        
        receiverCardTextField.layer.borderWidth = 0.0
        amountTextField.layer.borderWidth = 0.0
        
        guard let receiverCardNumber = receiverCardTextField.text,
              let transferAmountText = amountTextField.text,
              let transferAmount = Double(transferAmountText) else {
            
            return
        }
        
        
        let isCardValid = validationService.isValidCardNumber(receiverCardNumber)
        let isAmountValid = validationService.isValidTransferAmount(transferAmount, fromBalance: senderBalance)
        
        if isCardValid && isAmountValid {
            
            let vc = SecondViewController()
            navigationController?.pushViewController(vc, animated: true)
        } else {
            
        }
    }
}
