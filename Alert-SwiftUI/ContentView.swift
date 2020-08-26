//
//  ContentView.swift
//  Alert-SwiftUI
//
//  Created by Ciobanasu Ion on 8/26/20.
//  Copyright © 2020 Ciobanasu Ion. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isError = false
    
    var body: some View {
        //showAlert()
        showActionSheet()
    }
    
    fileprivate func showAlert() -> some View {
        return Button(action: {
            self.isError = true
        }, label: {
            Text("Login")
        }).alert(isPresented: $isError, content: {
            Alert(title: Text("Downlad"),
                  message: Text("Are you sure?"),
                  primaryButton: .destructive(Text("Yes"), action: {
                    print("Destructive Action")
                  }),
                  secondaryButton: .cancel() )
        })
    }
    
    fileprivate func showActionSheet() -> some View {
        return Button(action: {
            self.isError = true
        }, label: {
            Text("Login")
        }).actionSheet(isPresented: $isError, content: {
            ActionSheet(title: Text("Download"),
                        message: Text("Do you want to download photos?"),
                        buttons: [.default(Text("Download")),
                                  .destructive(Text("Cancel"), action: {
                                    print("This is was canceled")
                                  })])
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
