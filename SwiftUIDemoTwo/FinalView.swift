//
//  FinalView.swift
//  SwiftUIDemoTwo
//
//  Created by wOOx Technology on 02/12/22.
//

import SwiftUI

struct FinalView: View {
    var body: some View {
        VStack {
            ContentView(frameWidth: UIScreen.main.bounds.width, frameHeight: 500)
                .frame(width: UIScreen.main.bounds.width, height: 500, alignment: .center)
            Spacer()
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.red)
                
                
        }
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}
