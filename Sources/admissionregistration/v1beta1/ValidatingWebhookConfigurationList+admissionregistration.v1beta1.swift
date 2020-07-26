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

public extension admissionregistration.v1beta1 {

	///
	/// ValidatingWebhookConfigurationList is a list of ValidatingWebhookConfiguration.
	///
	struct ValidatingWebhookConfigurationList: KubernetesResource, KubernetesResourceList {

		public typealias Resource = admissionregistration.v1beta1.ValidatingWebhookConfiguration
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "admissionregistration.k8s.io/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "ValidatingWebhookConfigurationList"
		///
		/// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// List of ValidatingWebhookConfiguration.
		///
		public var items: [admissionregistration.v1beta1.ValidatingWebhookConfiguration]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta? = nil,
			items: [admissionregistration.v1beta1.ValidatingWebhookConfiguration]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

extension admissionregistration.v1beta1.ValidatingWebhookConfigurationList: Sequence {

	public typealias Element = admissionregistration.v1beta1.ValidatingWebhookConfiguration

	public func makeIterator() -> AnyIterator<admissionregistration.v1beta1.ValidatingWebhookConfiguration> {
		return AnyIterator(self.items.makeIterator())
	}
}

