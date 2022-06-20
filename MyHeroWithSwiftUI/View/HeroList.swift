//
//  HeroList.swift
//  MyHeroWithSwiftUI
//
//  Created by Wahid on 20/06/22.
//

import Foundation
import SwiftUI

struct HeroList: View {
    var body: some View {
        List(heroes) { hero in
            ZStack {
                HeroRow(hero: hero)
                NavigationLink(destination: HeroDetail(hero: hero)) {
                    EmptyView()
                }
            }
        }.navigationBarTitle(Text("Pahlawan Indonesia"), displayMode: .inline)
    }
}
