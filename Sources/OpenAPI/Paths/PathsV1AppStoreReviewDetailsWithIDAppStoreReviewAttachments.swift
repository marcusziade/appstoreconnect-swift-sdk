// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreReviewDetails.WithID {
	public var appStoreReviewAttachments: AppStoreReviewAttachments {
		AppStoreReviewAttachments(path: path + "/appStoreReviewAttachments")
	}

	public struct AppStoreReviewAttachments {
		/// Path: `/v1/appStoreReviewDetails/{id}/appStoreReviewAttachments`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppStoreReviewAttachmentsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails]?
			public var fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppStoreReviewDetails: String, Codable, CaseIterable {
				case appStoreReviewAttachments
				case appStoreVersion
				case contactEmail
				case contactFirstName
				case contactLastName
				case contactPhone
				case demoAccountName
				case demoAccountPassword
				case demoAccountRequired
				case notes
			}

			public enum FieldsAppStoreReviewAttachments: String, Codable, CaseIterable {
				case appStoreReviewDetail
				case assetDeliveryState
				case fileName
				case fileSize
				case sourceFileChecksum
				case uploadOperations
				case uploaded
			}

			public enum Include: String, Codable, CaseIterable {
				case appStoreReviewDetail
			}

			public init(fieldsAppStoreReviewDetails: [FieldsAppStoreReviewDetails]? = nil, fieldsAppStoreReviewAttachments: [FieldsAppStoreReviewAttachments]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsAppStoreReviewDetails = fieldsAppStoreReviewDetails
				self.fieldsAppStoreReviewAttachments = fieldsAppStoreReviewAttachments
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppStoreReviewDetails, forKey: "fields[appStoreReviewDetails]")
				encoder.encode(fieldsAppStoreReviewAttachments, forKey: "fields[appStoreReviewAttachments]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
