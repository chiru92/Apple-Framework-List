//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by CHIRANJIT SARKAR on 26/08/21.
//

import SwiftUI

struct FrameworkTitleView: View {
    var framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 64, height: 64, alignment: .center)
                .aspectRatio(contentMode: .fit)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
