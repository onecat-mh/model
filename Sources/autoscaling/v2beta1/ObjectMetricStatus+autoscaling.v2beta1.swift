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

public extension autoscaling.v2beta1 {

	///
	/// ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
	///
	struct ObjectMetricStatus: KubernetesResource {
		///
		/// averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
		///
		public var averageValue: Quantity?
		///
		/// currentValue is the current value of the metric (as a quantity).
		///
		public var currentValue: Quantity
		///
		/// metricName is the name of the metric in question.
		///
		public var metricName: String
		///
		/// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the ObjectMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
		///
		public var selector: meta.v1.LabelSelector?
		///
		/// target is the described Kubernetes object.
		///
		public var target: autoscaling.v2beta1.CrossVersionObjectReference
		///
		/// Default memberwise initializer
		///
		public init(
			averageValue: Quantity? = nil,
			currentValue: Quantity,
			metricName: String,
			selector: meta.v1.LabelSelector? = nil,
			target: autoscaling.v2beta1.CrossVersionObjectReference
		) {
			self.averageValue = averageValue
			self.currentValue = currentValue
			self.metricName = metricName
			self.selector = selector
			self.target = target
		}
	}
}

