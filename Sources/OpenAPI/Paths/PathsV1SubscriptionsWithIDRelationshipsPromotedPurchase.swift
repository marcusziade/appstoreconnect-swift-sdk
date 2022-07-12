// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Subscriptions.WithID.Relationships {
	public var promotedPurchase: PromotedPurchase {
		PromotedPurchase(path: path + "/promotedPurchase")
	}

	public struct PromotedPurchase {
		/// Path: `/v1/subscriptions/{id}/relationships/promotedPurchase`
		public let path: String
	}
}
