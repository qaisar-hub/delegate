//
//  SecondViewController.swift
//  customDelegate
//
//  Created by Shabnam Parveen on 6/14/22.
//
import UIKit

@objc protocol customProtocol {
    func passData(_ data: String)
    
    // creating optional protocol
    @objc optional func optionalMethod()
}

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(button)
        // Do any additional setup after loading the view.
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true

       
    }
    
    var delegate: customProtocol?
    
    var button : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func buttonTapped() {
        delegate?.passData("updated passed Data")
        dismiss(animated: true, completion: nil)
    }

}
