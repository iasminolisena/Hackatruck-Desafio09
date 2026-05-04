//
//  Service.swift
//  Desafio09
//
//  Created by Turma01-7 on 30/04/26.
//

import Foundation
import Combine

struct Service{
    func fetchHP(url: URL) -> AnyPublisher<[Series], Error>{
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [Series].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}

