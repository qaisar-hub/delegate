//
//  ViewController.swift
//  customDelegate
//
//  Created by Shabnam Parveen on 6/14/22.
//

import UIKit

class ViewController: UIViewController, customProtocol {
    func passData(_ data: String) {
        label.text = data
    }
    
    var text: String = "any value"
    
    
    let label : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let button : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        label.text = text
        // Do any additional setup after loading the view.
        view.addSubview(label)
        view.addSubview(button)
        
       setUP()
        
    }
    
    func setUP() {
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true

        label.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -50).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    

    
    @objc func buttonTapped() {
        let svc = SecondViewController()
        svc.delegate = self
        present(svc, animated: true, completion: nil)
    }


}


