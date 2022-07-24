//
//  MainViewController.swift
//  RecyclingViewController
//
//  Created by Jaewon on 2022/07/22.
//

import UIKit
import Combine

final class MainViewController: UIViewController {
    
    private var cancellable = Set<AnyCancellable>.init()
    private var viewModel: MainViewModel = .init()
    
    @IBOutlet weak var anyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    private func bindViewModel() {
        viewModel.$isShowing
            .sink { isShowing in
                self.anyView.isHidden = !isShowing
            }
            .store(in: &cancellable)
    }
    
    @IBAction func didTapToggleViewSwitch(_ sender: UISwitch) {
        viewModel.didTapToggleViewSwitch()
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        let secondVC = SecondViewController.init()
        present(secondVC, animated: true)
    }
}
