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

public extension networking.v1 {

	///
	/// NetworkPolicyPort describes a port to allow traffic on
	///
	struct NetworkPolicyPort: KubernetesResource, Codable {
	
		///
		/// The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers.
		///
		var port: IntOrString?
	
		///
		/// The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
		///
		var `protocol`: String?
	
	}
}

