//
//  MyProfileView.swift
//  SwiftUI_stack_practice
//
//  Created by Jaeson.dev on 2022/03/01.
//

import SwiftUI

struct MyProfileView: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        ScrollView{
            VStack {

                CircleImageView()
                    .padding()
                
                Text("Developer J")
                    .font(.system(.largeTitle))
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                
                Spacer()
                
                Text("Be an Awesome DevJ!")
                    .font(.system(size: 15))
                
//                Spacer()
                
                HStack{

                        Text("유튜브")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(.red)
                            .cornerRadius(20)
                    
                        Text("네이버")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(.green)
                            .cornerRadius(20)
                    
                    
                        Text("다음")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(.yellow)
                            .cornerRadius(20)
                    
                }   //Hstack
                .padding()
            }   //Vstack
        }   //ScrollView
        .navigationBarTitle("My Profile")
        .navigationBarItems(trailing:
                                NavigationLink(destination:
                                                Text("confg")
                                                .font(.largeTitle)
                                                .fontWeight(.black)
                                              ){
            Image(systemName: "gear")
                .font(.largeTitle)
                .foregroundColor(.black)
            
        }
        )
        .onAppear{
            self.isNavigationBarHidden = false
        }
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
