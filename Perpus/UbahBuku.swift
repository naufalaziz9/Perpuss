//
//  UbahBuku.swift
//  Perpus
//
//  Created by naufalazizz on 08/05/22.
//

import SwiftUI

struct UbahBuku: View {
    @State var idText = ""
    @State var judulText = ""
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Text("Ubah Buku")
                    .font(.title)
                    .fontWeight(.heavy)
                TextField("ID buku", text: $idText)
                    .padding(14)
                    .background(Color.white)
                    .foregroundColor(Color.black)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth:2))
                    .cornerRadius(10)
                    .disabled(true)
                TextField("Judul buku", text: $judulText)
                    .padding(14)
                    .background(Color.white)
                    .foregroundColor(Color.black)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth:2))
                    .cornerRadius(10)
                Button("Selesai") {
                    print("Button tapped!")
                }
                .padding(14)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding(.horizontal, 20)
            .onTapGesture {
                hideKeyboard()
            }
        }
    }
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}

struct UbahBuku_Previews: PreviewProvider {
    static var previews: some View {
        UbahBuku()
    }
}
