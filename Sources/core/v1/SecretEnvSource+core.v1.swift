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

public extension core.v1 {

	///
	/// SecretEnvSource selects a Secret to populate the environment variables with.
	/// 
	/// The contents of the target Secret's Data field will represent the key-value pairs as environment variables.
	///
	struct SecretEnvSource: KubernetesResource, Codable {
	
		///
		/// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
		///
		var name: String?
	
		///
		/// Specify whether the Secret must be defined
		///
		var optional: Bool?
	
	}
}

