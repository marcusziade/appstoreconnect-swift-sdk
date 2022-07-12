// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds.WithID {
	public var diagnosticSignatures: DiagnosticSignatures {
		DiagnosticSignatures(path: path + "/diagnosticSignatures")
	}

	public struct DiagnosticSignatures {
		/// Path: `/v1/builds/{id}/diagnosticSignatures`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.DiagnosticSignaturesResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var filterDiagnosticType: [FilterDiagnosticType]?
			public var fieldsDiagnosticSignatures: [FieldsDiagnosticSignatures]?
			public var limit: Int?

			public enum FilterDiagnosticType: String, Codable, CaseIterable {
				case diskWrites = "DISK_WRITES"
				case hangs = "HANGS"
			}

			public enum FieldsDiagnosticSignatures: String, Codable, CaseIterable {
				case diagnosticType
				case logs
				case signature
				case weight
			}

			public init(filterDiagnosticType: [FilterDiagnosticType]? = nil, fieldsDiagnosticSignatures: [FieldsDiagnosticSignatures]? = nil, limit: Int? = nil) {
				self.filterDiagnosticType = filterDiagnosticType
				self.fieldsDiagnosticSignatures = fieldsDiagnosticSignatures
				self.limit = limit
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterDiagnosticType, forKey: "filter[diagnosticType]")
				encoder.encode(fieldsDiagnosticSignatures, forKey: "fields[diagnosticSignatures]")
				encoder.encode(limit, forKey: "limit")
				return encoder.items
			}
		}
	}
}
