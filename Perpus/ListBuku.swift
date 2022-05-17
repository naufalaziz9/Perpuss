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
                .background(Color.black)
                .cornerRadius(8)
                VStack{
                    List{
                        ForEach(listBuku, id: \.self) {bariss in
                            NavigationLink (destination: DetailBuku(dataBuku: bariss)) {
                                VStack{
                                    Image("\(bariss.gambar ?? "Data nil")")
                                    Text("\(bariss.judul ?? "Data nil")")
                                        .foregroundColor(.green)
                                }
                                .foregroundColor(.green)
                                
                            }
                            .foregroundColor(.green)
                            .padding(12)
                        }
                        .foregroundColor(.green)
                    }
                    .foregroundColor(.green)
                    .listStyle(.plain)
                    
                }
                .foregroundColor(.green)
                .frame(maxHeight: .infinity)
                .padding(.bottom, 10)
                .padding(.horizontal, 20)
                .onAppear(perform: {
                    listBuku = coreDM.getAllBuku()
                })
                
            }
            .foregroundColor(.green)
            .padding(.horizontal, 20)
        }
        .foregroundColor(.green)
        .frame(maxHeight: .infinity)
//        .onAppear(perform: {
//            listBuku = coreDM.getAllBuku()
//        })
    }
}

struct ListBuku_Previews: PreviewProvider {
    static var previews: some View {
        ListBuku(coreDM: CDManager())
    }
}
