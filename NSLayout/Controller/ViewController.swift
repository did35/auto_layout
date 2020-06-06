//
//  ViewController.swift
//  NSLayout
//
//  Created by Didier Delhaisse on 06/06/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    weak var testView: UIView!
    weak var button1: UIButton!
    weak var button2: UIButton!
    weak var button3: UIButton!
    
    // MARK: - LoadView
    override func loadView() {
        super.loadView()
        
        let testView = UIView(frame: .zero)
        testView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(testView)
        NSLayoutConstraint.activate([
            testView.widthAnchor.constraint(equalToConstant: 80),
            //testView.widthAnchor.constraint(equalTo: testView.heightAnchor),
            testView.heightAnchor.constraint(equalToConstant: 160),
            testView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            testView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        self.testView = testView
        
        let button1 = UIButton(frame: .zero)
        button1.setBackgroundImage(UIImage(named: "acButton"), for: .normal)
        button1.translatesAutoresizingMaskIntoConstraints = false
        self.testView.addSubview(button1)
        self.testView.bringSubviewToFront(button1)
        NSLayoutConstraint.activate([
            button1.widthAnchor.constraint(equalToConstant: 60),
            button1.heightAnchor.constraint(equalToConstant: 30),
            button1.centerXAnchor.constraint(equalTo: self.testView.centerXAnchor),
            button1.centerYAnchor.constraint(equalTo: self.testView.centerYAnchor, constant: -40)
        ])
        self.button1 = button1
        
        let button2 = UIButton(frame: .zero)
        button2.setBackgroundImage(UIImage(named: "dcButton"), for: .normal)
        button2.translatesAutoresizingMaskIntoConstraints = false
        self.testView.addSubview(button2)
        self.testView.bringSubviewToFront(button2)
        NSLayoutConstraint.activate([
            button2.widthAnchor.constraint(equalToConstant: 60),
            button2.heightAnchor.constraint(equalToConstant: 30),
            button2.centerXAnchor.constraint(equalTo: self.testView.centerXAnchor),
            button2.centerYAnchor.constraint(equalTo: self.testView.centerYAnchor)
        ])
        self.button2 = button2
        
        let button3 = UIButton(frame: .zero)
        button3.setBackgroundImage(UIImage(named: "stbyButton"), for: .normal)
        button3.translatesAutoresizingMaskIntoConstraints = false
        self.testView.addSubview(button3)
        self.testView.bringSubviewToFront(button3)
        NSLayoutConstraint.activate([
            button3.widthAnchor.constraint(equalToConstant: 60),
            button3.heightAnchor.constraint(equalToConstant: 30),
            button3.centerXAnchor.constraint(equalTo: self.testView.centerXAnchor),
            button3.centerYAnchor.constraint(equalTo: self.testView.centerYAnchor, constant: 40)
        ])
        self.button3 = button3
    }
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testView.backgroundColor = .red
        addActionButton()
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

