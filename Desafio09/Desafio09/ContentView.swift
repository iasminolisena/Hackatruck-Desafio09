//
//  ContentView.swift
//  Desafio09
//
//  Created by Turma01-7 on 30/04/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
       NavigationStack {
                ZStack {
                    Color.black
                        .ignoresSafeArea()
                    
                        VStack {
                            Text("Minhas Series")
                                .foregroundStyle(.white)
                                .font(.system(size: 40))
                            
                            Text("\(viewModel.info.count)").foregroundStyle(.white)
                            
                            ScrollView{
                            ForEach(viewModel.info, id: \._id){ serie in
                                NavigationLink(destination: SerieView(SRS: serie)) {
                                    HStack() {
                                        
                                        AsyncImage(url: URL(string: serie.imagem)){
                                            imagem in
                                            imagem
                                                .resizable()
                                                .scaledToFit()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 200,height: 100)
                                        Text(serie.nome)
                                            .foregroundStyle(.white)
                                            .padding(.horizontal)
                                        Spacer()
                                        
                                        
                                    }
                                    .padding(.horizontal)
                                }
                            }
                        }
                    }
                    
                    
    
                }
                
                .onAppear(){
                    viewModel.fetch()
                }
            }
        }
}

#Preview {
    ContentView()
}
