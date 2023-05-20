//
//  LoginView.swift
//  ToDoList
//
//  Created by Diego Padilla Quijas on 07/05/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        @State var email = ""
        @State var password = ""
        
        NavigationView{
            VStack{
                //Header
                HeaderView()
                //Login form
                Form{
                    TextField("Email Address", text: $email).textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password).textFieldStyle(DefaultTextFieldStyle())
                    
                    Button{
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10).foregroundColor(Color.blue)
                            Text("Log In").foregroundColor(Color.white).bold()
                        }
                    }.padding()
                }
                // Create Account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }.padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
