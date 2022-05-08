//
//  DetailBuku.swift
//  Perpus
//
//  Created by naufalazizz on 08/05/22.
//

import SwiftUI

struct DetailBuku: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                Text("Tambah Buku")
                    .font(.title)
                    .fontWeight(.heavy)
                Text("ID buku")
                Text("Judul buku")
                NavigationLink (destination: UbahBuku()) {
                    Text("Ubah Buku")
                }
                .padding(12)
                .background(Color.blue)
                .cornerRadius(8)
            }
            .padding(.horizontal, 20)
        }
    }
}

struct DetailBuku_Previews: PreviewProvider {
    static var previews: some View {
        DetailBuku()
    }
}
