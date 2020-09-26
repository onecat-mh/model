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

public extension networking.v1beta1 {

	///
	/// IngressBackend describes all endpoints for a given service and port.
	///
	struct IngressBackend: KubernetesResource {
		///
		/// Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.
		///
		public var resource: core.v1.TypedLocalObjectReference?
		///
		/// Specifies the name of the referenced service.
		///
		public var serviceName: String?
		///
		/// Specifies the port of the referenced service.
		///
		public var servicePort: IntOrString?
		///
		/// Default memberwise initializer
		///
		public init(
			resource: core.v1.TypedLocalObjectReference? = nil,
			serviceName: String? = nil,
			servicePort: IntOrString? = nil
		) {
			self.resource = resource
			self.serviceName = serviceName
			self.servicePort = servicePort
		}
	}
}

///
/// Codable conformance
///
extension networking.v1beta1.IngressBackend {

	private enum CodingKeys: String, CodingKey {
		case resource = "resource"
		case serviceName = "serviceName"
		case servicePort = "servicePort"
	}

}

