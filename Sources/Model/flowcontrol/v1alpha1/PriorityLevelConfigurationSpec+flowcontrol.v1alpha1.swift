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
	/// PriorityLevelConfigurationSpec specifies the configuration of a priority level.
	///
	struct PriorityLevelConfigurationSpec: KubernetesResource {
		///
		/// `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
		///
		public var limited: flowcontrol.v1alpha1.LimitedPriorityLevelConfiguration?
		///
		/// `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			limited: flowcontrol.v1alpha1.LimitedPriorityLevelConfiguration? = nil,
			type: String
		) {
			self.limited = limited
			self.type = type
		}
	}
}

///
/// Codable conformance
///
extension flowcontrol.v1alpha1.PriorityLevelConfigurationSpec {

	private enum CodingKeys: String, CodingKey {
		case limited = "limited"
		case type = "type"
	}

}

