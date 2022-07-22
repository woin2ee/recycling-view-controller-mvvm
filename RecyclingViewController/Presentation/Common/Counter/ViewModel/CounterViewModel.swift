//
//  CounterViewModel.swift
//  RecyclingViewController
//
//  Created by Jaewon on 2022/07/22.
//

import Foundation
import Combine

final class CounterViewModel {
    
    @Published var count: Int = 0
    
    func didTapPlusButton() {
        count += 1
    }
    
    func didTapMinusButton() {
        count -= 1
    }
}
