//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by CHIRANJIT SARKAR on 26/08/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            
            //Spacer()
            
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
             
            Link(destination:  URL(string: viewModel.framework.urlString) ?? URL(string: "ahttps://developer.apple.com/")!, label: {
                AFButton(title: "Learn More")
            })
            
            /*Button {
                $viewModel.isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "ahttps://developer.apple.com/")!)
            })
            .padding()
            */
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailsView: .constant(false)))
            .preferredColorScheme(.dark)
    }
}
