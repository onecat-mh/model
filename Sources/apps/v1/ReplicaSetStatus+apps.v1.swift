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

public extension apps.v1 {

	///
	/// ReplicaSetStatus represents the current status of a ReplicaSet.
	///
	struct ReplicaSetStatus: KubernetesResource {
		///
		/// The number of available replicas (ready for at least minReadySeconds) for this replica set.
		///
		public var availableReplicas: Int32?
		///
		/// Represents the latest available observations of a replica set's current state.
		///
		public var conditions: [apps.v1.ReplicaSetCondition]?
		///
		/// The number of pods that have labels matching the labels of the pod template of the replicaset.
		///
		public var fullyLabeledReplicas: Int32?
		///
		/// ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
		///
		public var observedGeneration: Int64?
		///
		/// The number of ready replicas for this replica set.
		///
		public var readyReplicas: Int32?
		///
		/// Replicas is the most recently oberved number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
		///
		public var replicas: Int32
		///
		/// Default memberwise initializer
		///
		public init(
			availableReplicas: Int32? = nil,
			conditions: [apps.v1.ReplicaSetCondition]? = nil,
			fullyLabeledReplicas: Int32? = nil,
			observedGeneration: Int64? = nil,
			readyReplicas: Int32? = nil,
			replicas: Int32
		) {
			self.availableReplicas = availableReplicas
			self.conditions = conditions
			self.fullyLabeledReplicas = fullyLabeledReplicas
			self.observedGeneration = observedGeneration
			self.readyReplicas = readyReplicas
			self.replicas = replicas
		}
	}
}

