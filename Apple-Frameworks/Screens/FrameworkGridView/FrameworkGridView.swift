//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by CHIRANJIT SARKAR on 26/08/21.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(
                        destination: FrameworkDetailView(framework: framework, isShowingDetailsView: $viewModel.isShowingDetailsView)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

//struct BackgroundView: View {
//    var body: some View {
//        RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3014709262, green: 0.3264091597, blue: 0.3626382185, alpha: 1)), Color(#colorLiteral(red: 0.1252376285, green: 0.1355975172, blue: 0.1506478621, alpha: 1))]), center: .topLeading, startRadius: 0, endRadius: 400)
//            .edgesIgnoringSafeArea(.all)
//    }
//}
