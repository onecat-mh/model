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

public extension autoscaling.v2beta2 {

	///
	/// HPAScalingRules configures the scaling behavior for one direction. These Rules are applied after calculating DesiredReplicas from metrics for the HPA. They can limit the scaling velocity by specifying scaling policies. They can prevent flapping by specifying the stabilization window, so that the number of replicas is not set instantly, instead, the safest value from the stabilization window is chosen.
	///
	struct HPAScalingRules: KubernetesResource {
		///
		/// policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid
		///
		public var policies: [autoscaling.v2beta2.HPAScalingPolicy]?
		///
		/// selectPolicy is used to specify which policy should be used. If not set, the default value MaxPolicySelect is used.
		///
		public var selectPolicy: String?
		///
		/// StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
		///
		public var stabilizationWindowSeconds: Int32?
		///
		/// Default memberwise initializer
		///
		public init(
			policies: [autoscaling.v2beta2.HPAScalingPolicy]? = nil,
			selectPolicy: String? = nil,
			stabilizationWindowSeconds: Int32? = nil
		) {
			self.policies = policies
			self.selectPolicy = selectPolicy
			self.stabilizationWindowSeconds = stabilizationWindowSeconds
		}
	}
}

///
/// Codable conformance
///
extension autoscaling.v2beta2.HPAScalingRules {

	private enum CodingKeys: String, CodingKey {
		case policies = "policies"
		case selectPolicy = "selectPolicy"
		case stabilizationWindowSeconds = "stabilizationWindowSeconds"
	}

}

