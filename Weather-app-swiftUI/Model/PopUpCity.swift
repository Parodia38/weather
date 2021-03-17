//
//  PopUpCity.swift
//  Weather-app-swiftUI
//
//  Created by Naomi Duclaux on 14/03/2021.
//

import Foundation
import SwiftUI

struct PopUpCity: View {
    @Binding var showPopUp: Bool
    @Binding var text: String
    var onDone: (String) -> Void = { _ in }
    
    var body: some View {
        ZStack(alignment: .center) {
            if showPopUp {
                VStack {
                    Spacer()
                    Text("Choisir une nouvelle ville")
                        .font(.system(size: 25, weight:.medium, design:.default))
                        .foregroundColor(.black)
                        .padding(10)
                    TextField("Ville", text: self.$text)
                        .padding()
                    Spacer()
                    HStack(spacing: 40) {
                        Button {
                            showPopUp = false
                        } label: {
                            Text("Annuler")
                                .frame(width: 100, height: 30)
                                .foregroundColor(.red)
                                .font(.system(size: 20, weight: .bold, design: .default))
                                .cornerRadius(4)
                        }
                        Button {
                            onDone(self.text)
                            showPopUp = false
                        } label: {
                            Text("Ok")
                                .frame(width: 100, height: 30)
                                .foregroundColor(.blue)
                                .font(.system(size: 20, weight: .bold, design: .default))
                                .cornerRadius(4)
                        }
                    }
                    .padding(.bottom, 10)
                }
                
            }
        }
        .background(Color.white)
        .frame(width: 300, height: 200)
        .cornerRadius(20).shadow(radius: 20)
    }
}

struct PopUpCity_Previews: PreviewProvider {
    static var previews: some View {
        PopUpCity(showPopUp: .constant(true), text: .constant(""))
    }
}
