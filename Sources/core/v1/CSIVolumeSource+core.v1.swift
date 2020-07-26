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
	/// Represents a source location of a volume to mount, managed by an external CSI driver
	///
	struct CSIVolumeSource: KubernetesResource {
		///
		/// Driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
		///
		public var driver: String
		///
		/// Filesystem type to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
		///
		public var fsType: String?
		///
		/// NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed.
		///
		public var nodePublishSecretRef: core.v1.LocalObjectReference?
		///
		/// Specifies a read-only configuration for the volume. Defaults to false (read/write).
		///
		public var readOnly: Bool?
		///
		/// VolumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
		///
		public var volumeAttributes: [String: String]?
		///
		/// Default memberwise initializer
		///
		public init(
			driver: String,
			fsType: String? = nil,
			nodePublishSecretRef: core.v1.LocalObjectReference? = nil,
			readOnly: Bool? = nil,
			volumeAttributes: [String: String]? = nil
		) {
			self.driver = driver
			self.fsType = fsType
			self.nodePublishSecretRef = nodePublishSecretRef
			self.readOnly = readOnly
			self.volumeAttributes = volumeAttributes
		}
	}
}

