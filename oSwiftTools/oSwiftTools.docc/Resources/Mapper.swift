//
//  Mapper.swift
//  
//
//  Created by Douglas Gomes on 25/06/25.
//

protocol Mapper<Input, Output> {
    func map(_ value: Input) -> Output
}

protocol AsyncMapper<Input, Output> {
    func map(_ value: Input) async -> Output
}
