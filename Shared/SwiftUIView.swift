//
//  SwiftUIView.swift
//  StateNado
//
//  Created by tomoyo_kageyama on 2022/03/06.
//

import SwiftUI


struct SwiftUIView: View {
    @ObservedObject var param: Parameter
    
    var body: some View {
        Toggle(isOn: $param.isShow, label: {
            Text("Favorite")
        })
        Slider(value: $param.value, in: 0...100)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(param: Parameter())
    }
}
