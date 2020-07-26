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
	/// NetworkPolicyPeer describes a peer to allow traffic from. Only certain combinations of fields are allowed
	///
	struct NetworkPolicyPeer: KubernetesResource {
		///
		/// IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
		///
		public var ipBlock: networking.v1.IPBlock?
		///
		/// Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
		/// 
		/// If PodSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector.
		///
		public var namespaceSelector: meta.v1.LabelSelector?
		///
		/// This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
		/// 
		/// If NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the Pods matching PodSelector in the policy's own Namespace.
		///
		public var podSelector: meta.v1.LabelSelector?
		///
		/// Default memberwise initializer
		///
		public init(
			ipBlock: networking.v1.IPBlock? = nil,
			namespaceSelector: meta.v1.LabelSelector? = nil,
			podSelector: meta.v1.LabelSelector? = nil
		) {
			self.ipBlock = ipBlock
			self.namespaceSelector = namespaceSelector
			self.podSelector = podSelector
		}
	}
}

