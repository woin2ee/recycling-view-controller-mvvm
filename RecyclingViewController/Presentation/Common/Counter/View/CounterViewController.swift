//
//  CounterViewController.swift
//  RecyclingViewController
//
//  Created by Jaewon on 2022/07/22.
//

import UIKit
import Combine

final class CounterViewController: UIViewController {
    
    private var cancellable = Set<AnyCancellable>.init()
    private var viewModel = CounterViewModel.init()
    
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    private func bindViewModel() {
        viewModel.$count
            .sink { count in
                self.countLabel.text = String(count)
            }
            .store(in: &cancellable)
    }
    
    @IBAction func didTapPlusButton(_ sender: UIButton) {
        viewModel.didTapPlusButton()
    }
    
    @IBAction func didTapMinusButton(_ sender: UIButton) {
        viewModel.didTapMinusButton()
    }
}
