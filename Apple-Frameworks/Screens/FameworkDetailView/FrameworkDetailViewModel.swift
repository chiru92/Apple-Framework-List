//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by CHIRANJIT SARKAR on 30/08/21.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    
    let framework: Framework
    var isShowingDetailsView: Binding<Bool>
    @Published var isShowingSafariView = false
    
    init(framework: Framework, isShowingDetailsView: Binding<Bool>) {
        self.framework = framework
        self.isShowingDetailsView = isShowingDetailsView
    }
}

