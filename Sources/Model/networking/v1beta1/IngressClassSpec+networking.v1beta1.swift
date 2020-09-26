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
	/// IngressClassSpec provides information about the class of an Ingress.
	///
	struct IngressClassSpec: KubernetesResource {
		///
		/// Controller refers to the name of the controller that should handle this class. This allows for different "flavors" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. "acme.io/ingress-controller". This field is immutable.
		///
		public var controller: String?
		///
		/// Parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters.
		///
		public var parameters: core.v1.TypedLocalObjectReference?
		///
		/// Default memberwise initializer
		///
		public init(
			controller: String? = nil,
			parameters: core.v1.TypedLocalObjectReference? = nil
		) {
			self.controller = controller
			self.parameters = parameters
		}
	}
}

///
/// Codable conformance
///
extension networking.v1beta1.IngressClassSpec {

	private enum CodingKeys: String, CodingKey {
		case controller = "controller"
		case parameters = "parameters"
	}

}

