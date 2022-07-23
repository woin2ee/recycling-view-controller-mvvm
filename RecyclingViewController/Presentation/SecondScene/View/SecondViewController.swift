//
//  SecondViewController.swift
//  RecyclingViewController
//
//  Created by Jaewon on 2022/07/23.
//

import UIKit

final class SecondViewController: UIViewController {
    
    private var counterViewController: CounterViewController = {
        let storyboard = UIStoryboard.init(name: "Counter", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CounterViewController")
        return vc as! CounterViewController
    }()
    
    var counterView: UIView {
        counterViewController.view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(counterView)
        
        counterView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            counterView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            counterView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            counterView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            counterView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
    }
}
