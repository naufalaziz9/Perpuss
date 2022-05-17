//
//  TambahBuku.swift
//  Perpus
//
//  Created by naufalazizz on 08/05/22.
//

import SwiftUI

struct TambahBuku: View {
    @Environment(\.managedObjectContext) var context
    @State var idText = ""
    @State var judulText = ""
    @State var gambarText = ""
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .leading){
                    Text("Tambah Buku")
                        .font(.title)
                        .fontWeight(.heavy)
//                    TextField("ID buku", text: self.$idText)
//                        .padding(14)
//                        .background(Color.white)
//                        .foregroundColor(Color.black)
//                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth:2))
//                        .cornerRadius(10)
                    TextField("Judul buku", text: self.$judulText)
                        .padding(14)
                        .background(Color.white)
                        .foregroundColor(Color.black)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth:2))
                        .cornerRadius(10)
                    TextField("Link gambar", text: self.$gambarText)
                        .padding(14)
                        .background(Color.white)
                        .foregroundColor(Color.black)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth:2))
                        .cornerRadius(10)
                    Button("Selesai") {
                        self.tambahBuku()
                        print("Button tapped!")
                    }
                    .padding(14)
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    NavigationLink (destination: ListBuku(coreDM: CDManager())) {
                        Text("List Buku")
                    }
                    .padding(12)
                    .background(Color.black)
                    .cornerRadius(8)
                }
                .padding(.horizontal, 20)
                .onTapGesture {
                    hideKeyboard()
                }
            }
        }
    }
    func tambahBuku() {
        let newBuku = Buku(context: self.context)
        newBuku.judul = judulText
        newBuku.gambar = gambarText
        do {
            try self.context.save()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}

struct TambahBuku_Previews: PreviewProvider {
    static var previews: some View {
        TambahBuku()
    }
}
