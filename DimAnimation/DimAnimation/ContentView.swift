//
//  ContentView.swift
//  DimAnimation
//
//  Created by Lyvennitha on 26/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var half = true
    @State private var dim = true
    
    var imgArray = ["Virat", "Virat-1", "Virat-2", "Virat-3", "Virat-4", "Virat-5", "Virat-6"]
    
    var body: some View {
        NavigationView {
            List(imgArray, id:\.self){(img) in
                HStack{
                    Spacer()
//                    Image(img)
//                        .resizable()
//                        .frame(width: UIScreen.main.bounds.size.width-50, height: 300, alignment: .center)
//                        .opacity(dim ? 0.2 : 1.0)
//                        .animation(.easeInOut(duration: 1.0))
//                        .scaleEffect(half ? 0.5 : 1.0)
//                        .onTapGesture {
//                            self.dim.toggle()
//                            self.half.toggle()
//                        }
                    CellClass(half: half, dim: dim, img: img)
                    Spacer()
                }
            }
            .navigationBarTitle("All time Fav")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CellClass: View{
    @State var half = true
    @State var dim = true
    
    @State var img = ""
    
    var body: some View {
        Image(img)
            .resizable()
            .frame(width: UIScreen.main.bounds.size.width-50, height: 300, alignment: .center)
            .opacity(dim ? 0.2 : 1.0)
            .animation(.easeInOut(duration: 1.0))
            .scaleEffect(half ? 0.5 : 1.0)
            .onTapGesture {
                self.dim.toggle()
                self.half.toggle()
            }
    }
}
