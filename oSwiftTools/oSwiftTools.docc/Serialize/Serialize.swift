//
//  Serialize.swift
//  
//
//  Created by Douglas Gomes on 25/06/25.
//

@propertyWrapper
final class Serialize<Value> : Hashable {
    let key: String
    var wrappedValue: Value
    
    init(wrappedValue value: Value, _ key: String){
        self.wrappedValue = value
        self.key = key
    }
    
    static func == (lhs: Serialize<Value>, rhs: Serialize<Value>) -> Bool {
        return lhs.key == rhs.key
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self))
    }
}

extension Serialize: EncodableKey where Value: Encodable {
    func encodeValue(from container: inout EncodeContainer) throws {
        let codingKey = DynamicCodingKeys(key: key)
        try container.encondeIfPresent(wrappedValue, forKey: codingKey)
    }
}

extension Serialize: DecodableKey where Value: Decodable {
    func decodeValue(from container: DecodeContainer) throws {
        let codingKey = DynamicCodingKeys(key: key)
        if let value = try container.decodeIfPresent(Value.self, forKey: codingKey) {
            self.wrappedValue = value
        }
    }
}
