// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.ScmRepositories {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/scmRepositories/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.ScmRepositoryResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsScmRepositories: [FieldsScmRepositories]?
			public var include: [Include]?
			public var fieldsScmGitReferences: [FieldsScmGitReferences]?
			public var fieldsScmPullRequests: [FieldsScmPullRequests]?

			public enum FieldsScmRepositories: String, Codable, CaseIterable {
				case defaultBranch
				case gitReferences
				case httpCloneURL = "httpCloneUrl"
				case lastAccessedDate
				case ownerName
				case pullRequests
				case repositoryName
				case scmProvider
				case sshCloneURL = "sshCloneUrl"
			}

			public enum Include: String, Codable, CaseIterable {
				case defaultBranch
				case scmProvider
			}

			public enum FieldsScmGitReferences: String, Codable, CaseIterable {
				case canonicalName
				case isDeleted
				case kind
				case name
				case repository
			}

			public enum FieldsScmPullRequests: String, Codable, CaseIterable {
				case destinationBranchName
				case destinationRepositoryName
				case destinationRepositoryOwner
				case isClosed
				case isCrossRepository
				case number
				case repository
				case sourceBranchName
				case sourceRepositoryName
				case sourceRepositoryOwner
				case title
				case webURL = "webUrl"
			}

			public init(fieldsScmRepositories: [FieldsScmRepositories]? = nil, include: [Include]? = nil, fieldsScmGitReferences: [FieldsScmGitReferences]? = nil, fieldsScmPullRequests: [FieldsScmPullRequests]? = nil) {
				self.fieldsScmRepositories = fieldsScmRepositories
				self.include = include
				self.fieldsScmGitReferences = fieldsScmGitReferences
				self.fieldsScmPullRequests = fieldsScmPullRequests
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsScmGitReferences, forKey: "fields[scmGitReferences]")
				encoder.encode(fieldsScmPullRequests, forKey: "fields[scmPullRequests]")
				return encoder.items
			}
		}
	}
}
