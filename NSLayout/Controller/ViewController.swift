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
    
    let customButton = CustomButton()
    
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
        
        customButton.setButton1(title: "acButton", view: testView)
        customButton.setButton2(title: "dcButton", view: testView)
        customButton.setButton3(title: "stbyButton", view: testView)
    }
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        testView.backgroundColor = .red
        customButton.addActionButton()
    }
}

