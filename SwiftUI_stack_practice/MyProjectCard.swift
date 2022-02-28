//
//  MyProjectCard.swift
//  SwiftUI_stack_practice
//
//  Created by Jaeson.dev on 2022/02/27.
//

import SwiftUI

struct MyProjectCard: View {
    
    @State var shouldAlert : Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
//            Rectangle().frame(height: 0)
            Divider()
                .opacity(0)
            Text("정대리 유튜브 프로젝트")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("10AM - 11AM")
                .padding(.bottom, 10)
                .foregroundColor(.secondary)
            HStack{
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(.red)
                    )
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipShape(Circle())
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipShape(Circle())
                
                Spacer()
                
                
                Button(action: { // 행해지는 부분
                    print("확인 버튼 클릭")
                    shouldAlert.toggle()
                    
                }){ // 레이아웃
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldAlert) {
                    Alert(title: Text("얼러트버틑"))
                }
                
                
                    
            }
        }
        .padding(30)
        .background(.yellow)
        .cornerRadius(20)
    }
    
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
