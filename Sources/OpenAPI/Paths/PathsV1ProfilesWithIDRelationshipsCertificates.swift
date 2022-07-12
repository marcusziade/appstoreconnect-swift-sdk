// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Profiles.WithID.Relationships {
	public var certificates: Certificates {
		Certificates(path: path + "/certificates")
	}

	public struct Certificates {
		/// Path: `/v1/profiles/{id}/relationships/certificates`
		public let path: String
	}
}
