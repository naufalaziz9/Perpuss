//
//  ListBuku.swift
//  Perpus
//
//  Created by naufalazizz on 08/05/22.
//

import SwiftUI

struct ListBuku: View {
    let coreDM: CDManager
    @State private var listBuku: [Buku] = [Buku]()
    @Environment(\.managedObjectContext) var context
    @FetchRequest(entity: Buku.entity(), sortDescriptors: []) var buku: FetchedResults<Buku>
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                NavigationLink (destination: TambahBuku()) {
                    Text("Tambah Buku")
                }
                .padding(12)
                .background(Color.red)
                .cornerRadius(8)
                VStack{
                    List{
                        ForEach(listBuku, id: \.self) {baris in
                            NavigationLink (destination: DetailBuku()) {
                                VStack{
                                    Text("\(baris.judul ?? "Data nil")")
                                        .foregroundColor(.green)
                                }
                                
                            }
                            .padding(12)
                        }
                    }
                    .listStyle(.plain)
                    
                }
                
            }
            .padding(.horizontal, 20)
        }
        .frame(maxHeight: .infinity)
        .onAppear(perform: {
            listBuku = coreDM.getAllBuku()
        })
    }
}

struct ListBuku_Previews: PreviewProvider {
    static var previews: some View {
        ListBuku(coreDM: CDManager())
    }
}
