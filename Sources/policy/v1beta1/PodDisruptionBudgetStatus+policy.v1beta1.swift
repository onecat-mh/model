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

public extension policy.v1beta1 {

	///
	/// PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget. Status may trail the actual state of a system.
	///
	struct PodDisruptionBudgetStatus: KubernetesResource, Codable {
	
		///
		/// current number of healthy pods
		///
		var currentHealthy: Int32
	
		///
		/// minimum desired number of healthy pods
		///
		var desiredHealthy: Int32
	
		///
		/// DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
		///
		var disruptedPods: [String: String]?
	
		///
		/// Number of pod disruptions that are currently allowed.
		///
		var disruptionsAllowed: Int32
	
		///
		/// total number of pods counted by this disruption budget
		///
		var expectedPods: Int32
	
		///
		/// Most recent generation observed when updating this PDB status. PodDisruptionsAllowed and other status informatio is valid only if observedGeneration equals to PDB's object generation.
		///
		var observedGeneration: Int64?
	
	}
}

