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

public extension authentication.v1 {

	///
	/// TokenRequestSpec contains client provided parameters of a token request.
	///
	struct TokenRequestSpec: KubernetesResource {
		///
		/// Audiences are the intendend audiences of the token. A recipient of a token must identitfy themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
		///
		public var audiences: [String]
		///
		/// BoundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.
		///
		public var boundObjectRef: authentication.v1.BoundObjectReference?
		///
		/// ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
		///
		public var expirationSeconds: Int64?
		///
		/// Default memberwise initializer
		///
		public init(
			audiences: [String],
			boundObjectRef: authentication.v1.BoundObjectReference? = nil,
			expirationSeconds: Int64? = nil
		) {
			self.audiences = audiences
			self.boundObjectRef = boundObjectRef
			self.expirationSeconds = expirationSeconds
		}
	}
}

