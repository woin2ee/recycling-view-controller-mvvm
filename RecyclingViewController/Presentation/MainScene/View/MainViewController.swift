//
//  MainViewController.swift
//  RecyclingViewController
//
//  Created by Jaewon on 2022/07/22.
//

import UIKit

final class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        let secondVC = SecondViewController.init()
        present(secondVC, animated: true)
    }
}
