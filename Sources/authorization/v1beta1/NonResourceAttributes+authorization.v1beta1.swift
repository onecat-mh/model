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

public extension authorization.v1beta1 {

	///
	/// NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
	///
	struct NonResourceAttributes: KubernetesResource {
		///
		/// Path is the URL path of the request
		///
		public var path: String?
		///
		/// Verb is the standard HTTP verb
		///
		public var verb: String?
		///
		/// Default memberwise initializer
		///
		public init(
			path: String? = nil,
			verb: String? = nil
		) {
			self.path = path
			self.verb = verb
		}
	}
}

