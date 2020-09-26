//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

public extension flowcontrol.v1alpha1 {

	///
	/// NonResourcePolicyRule is a predicate that matches non-resource requests according to their verb and the target non-resource URL. A NonResourcePolicyRule matches a request if and only if both (a) at least one member of verbs matches the request and (b) at least one member of nonResourceURLs matches the request.
	///
	struct NonResourcePolicyRule: KubernetesResource {
		///
		/// `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:
		///   - "/healthz" is legal
		///   - "/hea*" is illegal
		///   - "/hea" is legal but matches nothing
		///   - "/hea/*" also matches nothing
		///   - "/healthz/*" matches all per-component health checks.
		/// "*" matches all non-resource urls. if it is present, it must be the only entry. Required.
		///
		public var nonResourceURLs: [String]
		///
		/// `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs. If it is present, it must be the only entry. Required.
		///
		public var verbs: [String]
		///
		/// Default memberwise initializer
		///
		public init(
			nonResourceURLs: [String],
			verbs: [String]
		) {
			self.nonResourceURLs = nonResourceURLs
			self.verbs = verbs
		}
	}
}

///
/// Codable conformance
///
extension flowcontrol.v1alpha1.NonResourcePolicyRule {

	private enum CodingKeys: String, CodingKey {
		case nonResourceURLs = "nonResourceURLs"
		case verbs = "verbs"
	}

}

