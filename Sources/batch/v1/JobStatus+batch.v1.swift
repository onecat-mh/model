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

public extension batch.v1 {

	///
	/// JobStatus represents the current state of a Job.
	///
	struct JobStatus: KubernetesResource, Codable {
	
		///
		/// The number of actively running pods.
		///
		var active: Int32?
	
		///
		/// Represents time when the job was completed. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.
		///
		var completionTime: String?
	
		///
		/// The latest available observations of an object's current state. More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
		///
		var conditions: [batch.v1.JobCondition]?
	
		///
		/// The number of pods which reached phase Failed.
		///
		var failed: Int32?
	
		///
		/// Represents time when the job was acknowledged by the job controller. It is not guaranteed to be set in happens-before order across separate operations. It is represented in RFC3339 form and is in UTC.
		///
		var startTime: String?
	
		///
		/// The number of pods which reached phase Succeeded.
		///
		var succeeded: Int32?
	
	}
}

