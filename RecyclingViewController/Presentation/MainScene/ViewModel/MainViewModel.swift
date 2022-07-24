//
//  MainViewModel.swift
//  RecyclingViewController
//
//  Created by Jaewon on 2022/07/22.
//

import Foundation
import Combine

final class MainViewModel {
    
    @Published var isShowing: Bool = true
    
    func didTapToggleViewSwitch() {
        isShowing.toggle()
    }
}
