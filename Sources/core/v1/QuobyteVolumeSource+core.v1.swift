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

public extension core.v1 {

	///
	/// Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
	///
	struct QuobyteVolumeSource: KubernetesResource, Codable {
	
		///
		/// Group to map volume access to Default is no group
		///
		var group: String?
	
		///
		/// ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
		///
		var readOnly: Bool?
	
		///
		/// Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
		///
		var registry: String
	
		///
		/// Tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin
		///
		var tenant: String?
	
		///
		/// User to map volume access to Defaults to serivceaccount user
		///
		var user: String?
	
		///
		/// Volume is a string that references an already created Quobyte volume by name.
		///
		var volume: String
	
	}
}

