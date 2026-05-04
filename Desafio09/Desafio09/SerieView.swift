//
//  SerieView.swift
//  Desafio09
//
//  Created by Turma01-7 on 30/04/26.
//

import SwiftUI

struct SerieView: View {
    
    @State var SRS: Series
    
    var body: some View {
       ZStack{
           Color.black
               .ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string: SRS.imagem)){
                    imagem in
                    imagem
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 250, height: 250)
                
                Text("""
                Nome: \(SRS.nome)
                Temporadas: \(SRS.temporadas)
                Generos: \(SRS.genero)
                Streaming: \(SRS.streaming)
                """)
                .foregroundStyle(.white)
                .padding(10)
                .background(Color("fundo"))
                .cornerRadius(10)
                .font(.system(size: 20))
                Spacer()
            }
            
        }
    }
}

#Preview {
    SerieView(SRS: Series(_id: "", _rev: "", nome: "", imagem: "", temporadas: 0, genero: "", streaming: "", date: ""))
}
