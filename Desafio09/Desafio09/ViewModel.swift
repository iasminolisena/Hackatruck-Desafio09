//
//  ViewModel.swift
//  Desafio09
//
//  Created by Turma01-7 on 30/04/26.
//

import Foundation
import Combine

class ViewModel: ObservableObject{
    
    @Published var info: [Series] = []
    
    private let service = Service()
    private var cancellables = Set<AnyCancellable>()
    
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/ver") else{
            return
        }
        service.fetchHP(url: url)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {_ in}) { serie in
                self.info = serie
            }
            .store(in: &cancellables)
    }
}
