//
//  CustomButton.swift
//  NSLayout
//
//  Created by Didier Delhaisse on 07/06/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    weak var button1: UIButton!
    weak var button2: UIButton!
    weak var button3: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aCoder: NSCoder) {
        super.init(coder: aCoder)
    }
    
    func constraints(button: UIButton, view: UIView, constant: CGFloat) {
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 60),
            button.heightAnchor.constraint(equalToConstant: 30),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant)
        ])
    }
    
    func setButton1(title: String, view: UIView) {
        let button1 = UIButton(frame: .zero)
        button1.setBackgroundImage(UIImage(named: title), for: .normal)
        button1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button1)
        view.bringSubviewToFront(button1)
        constraints(button: button1, view: view, constant: -40)
        self.button1 = button1
    }
    
    func setButton2(title: String, view: UIView) {
        let button2 = UIButton(frame: .zero)
        button2.setBackgroundImage(UIImage(named: title), for: .normal)
        button2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button2)
        view.bringSubviewToFront(button2)
        constraints(button: button2, view: view, constant: 0)
        self.button2 = button2
    }
    
    func setButton3(title: String, view: UIView) {
        let button3 = UIButton(frame: .zero)
        button3.setBackgroundImage(UIImage(named: title), for: .normal)
        button3.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button3)
        view.bringSubviewToFront(button3)
        constraints(button: button3, view: view, constant: 40)
        self.button3 = button3
    }
    
    func addActionButton() {
        button1.addTarget(self, action: #selector(button1Tapped), for: .touchUpInside)
        button2.addTarget(self, action: #selector(button2Tapped), for: .touchUpInside)
        button3.addTarget(self, action: #selector(button3Tapped), for: .touchUpInside)
    }
    
    @objc func button1Tapped() {
        print("AC button was tapped")
    }
    
    @objc func button2Tapped() {
        print("DC button was tapped")
    }
    
    @objc func button3Tapped() {
        print("STBY button was tapped")
    }
}
