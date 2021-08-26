//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by CHIRANJIT SARKAR on 26/08/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailsView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            //Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
             
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "ahttps://developer.apple.com/")!)
            })
            .padding()
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailsView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
