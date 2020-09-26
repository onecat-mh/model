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
	/// PriorityLevelConfigurationStatus represents the current state of a "request-priority".
	///
	struct PriorityLevelConfigurationStatus: KubernetesResource {
		///
		/// `conditions` is the current state of "request-priority".
		///
		public var conditions: [flowcontrol.v1alpha1.PriorityLevelConfigurationCondition]?
		///
		/// Default memberwise initializer
		///
		public init(
			conditions: [flowcontrol.v1alpha1.PriorityLevelConfigurationCondition]? = nil
		) {
			self.conditions = conditions
		}
	}
}

///
/// Codable conformance
///
extension flowcontrol.v1alpha1.PriorityLevelConfigurationStatus {

	private enum CodingKeys: String, CodingKey {
		case conditions = "conditions"
	}

}

