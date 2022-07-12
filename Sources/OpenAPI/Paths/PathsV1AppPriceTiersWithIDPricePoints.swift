// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppPriceTiers.WithID {
	public var pricePoints: PricePoints {
		PricePoints(path: path + "/pricePoints")
	}

	public struct PricePoints {
		/// Path: `/v1/appPriceTiers/{id}/pricePoints`
		public let path: String

		@available(*, deprecated, message: "Deprecated")
		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppPricePointsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterTerritory: [String]?
			public var fieldsAppPriceTiers: [FieldsAppPriceTiers]?
			public var fieldsAppPricePoints: [FieldsAppPricePoints]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppPriceTiers: String, Codable, CaseIterable {
				case pricePoints
			}

			public enum FieldsAppPricePoints: String, Codable, CaseIterable {
				case customerPrice
				case priceTier
				case proceeds
				case territory
			}

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
			}

			public enum Include: String, Codable, CaseIterable {
				case priceTier
				case territory
			}

			public init(filterTerritory: [String]? = nil, fieldsAppPriceTiers: [FieldsAppPriceTiers]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterTerritory = filterTerritory
				self.fieldsAppPriceTiers = fieldsAppPriceTiers
				self.fieldsAppPricePoints = fieldsAppPricePoints
				self.fieldsTerritories = fieldsTerritories
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterTerritory, forKey: "filter[territory]")
				encoder.encode(fieldsAppPriceTiers, forKey: "fields[appPriceTiers]")
				encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
