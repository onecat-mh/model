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
	/// TokenReviewStatus is the result of the token authentication request.
	///
	struct TokenReviewStatus: KubernetesResource, Codable {
	
		///
		/// Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
		///
		var audiences: [String]?
	
		///
		/// Authenticated indicates that the token was associated with a known user.
		///
		var authenticated: Bool?
	
		///
		/// Error indicates that the token couldn't be checked
		///
		var error: String?
	
		///
		/// User is the UserInfo associated with the provided token.
		///
		var user: authentication.v1.UserInfo?
	
	}
}

