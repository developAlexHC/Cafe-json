//
//	RootClass.swift
//
//	Create by 棋安 謝 on 30/12/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct RootClass : Codable {

	let address : String?
	let cheap : Int?
	let city : String?
	let id : String?
	let latitude : String?
	let limitedTime : String?
	let longitude : String?
	let mrt : String?
	let music : Int?
	let name : String?
	let openTime : String?
	let quiet : Int?
	let seat : Int?
	let socket : String?
	let standingDesk : String?
	let tasty : Int?
	let url : String?
	let wifi : Int?


	enum CodingKeys: String, CodingKey {
		case address = "address"
		case cheap = "cheap"
		case city = "city"
		case id = "id"
		case latitude = "latitude"
		case limitedTime = "limited_time"
		case longitude = "longitude"
		case mrt = "mrt"
		case music = "music"
		case name = "name"
		case openTime = "open_time"
		case quiet = "quiet"
		case seat = "seat"
		case socket = "socket"
		case standingDesk = "standing_desk"
		case tasty = "tasty"
		case url = "url"
		case wifi = "wifi"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		address = try values.decodeIfPresent(String.self, forKey: .address)
		cheap = try values.decodeIfPresent(Int.self, forKey: .cheap)
		city = try values.decodeIfPresent(String.self, forKey: .city)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		latitude = try values.decodeIfPresent(String.self, forKey: .latitude)
		limitedTime = try values.decodeIfPresent(String.self, forKey: .limitedTime)
		longitude = try values.decodeIfPresent(String.self, forKey: .longitude)
		mrt = try values.decodeIfPresent(String.self, forKey: .mrt)
		music = try values.decodeIfPresent(Int.self, forKey: .music)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		openTime = try values.decodeIfPresent(String.self, forKey: .openTime)
		quiet = try values.decodeIfPresent(Int.self, forKey: .quiet)
		seat = try values.decodeIfPresent(Int.self, forKey: .seat)
		socket = try values.decodeIfPresent(String.self, forKey: .socket)
		standingDesk = try values.decodeIfPresent(String.self, forKey: .standingDesk)
		tasty = try values.decodeIfPresent(Int.self, forKey: .tasty)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		wifi = try values.decodeIfPresent(Int.self, forKey: .wifi)
	}


}