/* 
Copyright (c) 2023 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Posts : Codable {
	let postId : Int?
	let timeshamp : Int?
	let title : String?
	let preview_text : String?
	let likes_count : Int?

	enum CodingKeys: String, CodingKey {

		case postId = "postId"
		case timeshamp = "timeshamp"
		case title = "title"
		case preview_text = "preview_text"
		case likes_count = "likes_count"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		postId = try values.decodeIfPresent(Int.self, forKey: .postId)
		timeshamp = try values.decodeIfPresent(Int.self, forKey: .timeshamp)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		preview_text = try values.decodeIfPresent(String.self, forKey: .preview_text)
		likes_count = try values.decodeIfPresent(Int.self, forKey: .likes_count)
	}

}