//
//  TabBar.swift
//  Perpus
//
//  Created by naufalazizz on 08/05/22.
//

import SwiftUI

struct TabBar: View {
    init() {
        UINavigationBar.appearance().isOpaque = true
        UITabBar.appearance().backgroundColor = UIColor(Color.gray)
        UIScrollView.appearance().bounces = true
    }
    
    let persistenceContainer = CDManager.shared
    
    @State private var selectedView = 1
    @State var color = UIColor.white
    
    var body: some View {
        NavigationView{
            TabView(selection: $selectedView) {
                TambahBuku()
                    .tabItem {
                        Label("Laporan", systemImage: "chart.pie.fill")
                    }
                    .tag(1)
                
                ListBuku(coreDM: persistenceContainer)
                    .tabItem {
                        Label("Kategori", systemImage: "rectangle.grid.2x2.fill")
                    }
                    .tag(2)
            }
            .accentColor(Color.green)
            .preferredColorScheme(.light)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
