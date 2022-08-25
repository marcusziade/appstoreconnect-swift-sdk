// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppInfoLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appInfoLocalizations/{id}`
		public let path: String

		public func get(fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppInfoLocalizationResponse> {
			.get(path, query: makeGetQuery(fieldsAppInfoLocalizations, include))
		}

		private func makeGetQuery(_ fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsAppInfoLocalizations, forKey: "fields[appInfoLocalizations]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsAppInfoLocalizations: String, Codable, CaseIterable {
			case appInfo
			case locale
			case name
			case privacyChoicesURL = "privacyChoicesUrl"
			case privacyPolicyText
			case privacyPolicyURL = "privacyPolicyUrl"
			case subtitle
		}

		public enum Include: String, Codable, CaseIterable {
			case appInfo
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppInfoLocalizationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppInfoLocalizationResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}