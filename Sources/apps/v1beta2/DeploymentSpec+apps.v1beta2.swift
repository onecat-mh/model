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

public extension apps.v1beta2 {

	///
	/// DeploymentSpec is the specification of the desired behavior of the Deployment.
	///
	struct DeploymentSpec: KubernetesResource, Codable {
	
		///
		/// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
		///
		var minReadySeconds: Int32?
	
		///
		/// Indicates that the deployment is paused.
		///
		var paused: Bool?
	
		///
		/// The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
		///
		var progressDeadlineSeconds: Int32?
	
		///
		/// Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
		///
		var replicas: Int32?
	
		///
		/// The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
		///
		var revisionHistoryLimit: Int32?
	
		///
		/// Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment. It must match the pod template's labels.
		///
		var selector: meta.v1.LabelSelector
	
		///
		/// The deployment strategy to use to replace existing pods with new ones.
		///
		var strategy: apps.v1beta2.DeploymentStrategy?
	
		///
		/// Template describes the pods that will be created.
		///
		var template: core.v1.PodTemplateSpec
	
	}
}

