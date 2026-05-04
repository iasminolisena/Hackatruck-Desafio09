//
//  SeriesModel.swift
//  Desafio09
//
//  Created by Turma01-7 on 30/04/26.
//

import Foundation

struct Series: Codable, Hashable{
    let _id: String
    let _rev: String
    let nome: String
    let imagem: String
    let temporadas: Int
    let genero: String
    let streaming: String
    let date: String
}
