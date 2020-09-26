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
	/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
	///
	struct Subject: KubernetesResource {
		///
		/// Required
		///
		public var kind: String
		///
		/// No description
		///
		public var group: flowcontrol.v1alpha1.GroupSubject?
		///
		/// No description
		///
		public var serviceAccount: flowcontrol.v1alpha1.ServiceAccountSubject?
		///
		/// No description
		///
		public var user: flowcontrol.v1alpha1.UserSubject?
		///
		/// Default memberwise initializer
		///
		public init(
			kind: String,
			group: flowcontrol.v1alpha1.GroupSubject? = nil,
			serviceAccount: flowcontrol.v1alpha1.ServiceAccountSubject? = nil,
			user: flowcontrol.v1alpha1.UserSubject? = nil
		) {
			self.kind = kind
			self.group = group
			self.serviceAccount = serviceAccount
			self.user = user
		}
	}
}

///
/// Codable conformance
///
extension flowcontrol.v1alpha1.Subject {

	private enum CodingKeys: String, CodingKey {
		case kind = "kind"
		case group = "group"
		case serviceAccount = "serviceAccount"
		case user = "user"
	}

}

