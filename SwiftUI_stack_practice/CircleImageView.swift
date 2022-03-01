//
//  CircleImageView.swift
//  SwiftUI_stack_practice
//
//  Created by Jaeson.dev on 2022/03/01.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("myImage")
            .resizable()
            .scaledToFill()
            .frame(width: 250, height: 250, alignment: .center)
            .clipShape(Circle())
            .shadow(color: .red, radius: 10, x: 5, y: 10)
            .overlay(Circle()
                        .opacity(0.2)
                        .foregroundColor(.black))
            .overlay(
                Circle().stroke(Color.red, lineWidth: 10)
//                    .padding()
            )
           
            .overlay(
                Text("HI")
                    .foregroundColor(.white)
                    .font(.system(size: 100))
                    .fontWeight(.bold)
            
            )
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
