// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.RoutingAppCoverages {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/routingAppCoverages/{id}`
		public let path: String

		public func get(fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.RoutingAppCoverageResponse> {
			.get(path, query: makeGetQuery(fieldsRoutingAppCoverages, include))
		}

		private func makeGetQuery(_ fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsRoutingAppCoverages, forKey: "fields[routingAppCoverages]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsRoutingAppCoverages: String, Codable, CaseIterable {
			case appStoreVersion
			case assetDeliveryState
			case fileName
			case fileSize
			case sourceFileChecksum
			case uploadOperations
			case uploaded
		}

		public enum Include: String, Codable, CaseIterable {
			case appStoreVersion
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.RoutingAppCoverageUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.RoutingAppCoverageResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
