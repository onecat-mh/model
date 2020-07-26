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

public extension auditregistration.v1alpha1 {

	///
	/// WebhookThrottleConfig holds the configuration for throttling events
	///
	struct WebhookThrottleConfig: KubernetesResource {
		///
		/// ThrottleBurst is the maximum number of events sent at the same moment default 15 QPS
		///
		public var burst: Int64?
		///
		/// ThrottleQPS maximum number of batches per second default 10 QPS
		///
		public var qps: Int64?
		///
		/// Default memberwise initializer
		///
		public init(
			burst: Int64? = nil,
			qps: Int64? = nil
		) {
			self.burst = burst
			self.qps = qps
		}
	}
}

