//
//  DetailBuku.swift
//  Perpus
//
//  Created by naufalazizz on 08/05/22.
//

import SwiftUI

struct DetailBuku: View {
    @Environment(\.managedObjectContext) var context
    @ObservedObject var dataBuku: Buku
    @State private var buku: [Buku] = [Buku]()
    @FetchRequest(entity: Buku.entity(), sortDescriptors: []) var buku2: FetchedResults<Buku>
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
        DetailBuku(dataBuku: Buku())
    }
}
