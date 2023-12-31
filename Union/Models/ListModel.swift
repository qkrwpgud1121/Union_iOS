//
//  ListMode.swift
//  Union
//
//  Created by JehyeongPark on 10/16/23.
//

import Foundation

// MARK: - 리스트 Response

struct ListMain: Decodable {
    let resultCode: String?
    let resultMessage: String?
    let responseData: responseData
}

struct responseData: Decodable {
    let list: [DetailList]?
}

struct DetailList: Decodable {
    let boardId: String?
    let type: String?
    let endDate: String?
    let title: String?
    let detail: String?
    let people: Int?
    let progressType: String?
    let progressMonth: String?
    let contact: String?
    let stack: [String]
    let position: [String]
    let registrant: String?
    
    enum CodingKeys: String, CodingKey {
        case boardId = "unionBoardId"
        case type = "groupType"
        case endDate = "deadline"
        case title = "unionBoardSubject"
        case detail = "unionBoardContent"
        case people = "numberOfGroup"
        case progressType = "progressType"
        case progressMonth = "progressMonth"
        case contact = "contactInformation"
        case stack = "stackList"
        case position = "groupPositionList"
        case registrant = "name"
    }
}

// MARK: - 리스트 Request

struct MainListParam: Codable {
    var requestData: mainRequest
    let paging: pagingRequest
}

struct mainRequest: Codable {
    var groupType: String
    var unionBoardSubject: String
    var unionBoardContent: String
}

struct pagingRequest: Codable {
    let number: Int
    let size: Int
//    let totalElements: Int
//    let totalPages: Int
//    let sortProp: String
//    let direction: String
//    let empty: Bool
//    let offset: Int
}
