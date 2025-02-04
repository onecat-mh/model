//
// Copyright 2020 Swiftkube Project
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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.20.9
/// core.v1.ContainerStatus
///

import Foundation

public extension core.v1 {

	///
	/// ContainerStatus contains details for the current status of this container.
	///
	struct ContainerStatus: KubernetesResource {
		///
		/// Container's ID in the format 'docker://<container_id>'.
		///
		public var containerID: String?
		///
		/// The image the container is running. More info: https://kubernetes.io/docs/concepts/containers/images
		///
		public var image: String
		///
		/// ImageID of the container's image.
		///
		public var imageID: String
		///
		/// Details about the container's last termination condition.
		///
		public var lastState: core.v1.ContainerState?
		///
		/// This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.
		///
		public var name: String
		///
		/// Specifies whether the container has passed its readiness probe.
		///
		public var ready: Bool
		///
		/// The number of times the container has been restarted, currently based on the number of dead containers that have not yet been removed. Note that this is calculated from dead containers. But those containers are subject to garbage collection. This value will get capped at 5 by GC.
		///
		public var restartCount: Int32
		///
		/// Specifies whether the container has passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. Is always true when no startupProbe is defined.
		///
		public var started: Bool?
		///
		/// Details about the container's current condition.
		///
		public var state: core.v1.ContainerState?
		///
		/// Default memberwise initializer
		///
		public init(
			containerID: String? = nil,
			image: String,
			imageID: String,
			lastState: core.v1.ContainerState? = nil,
			name: String,
			ready: Bool,
			restartCount: Int32,
			started: Bool? = nil,
			state: core.v1.ContainerState? = nil
		) {
			self.containerID = containerID
			self.image = image
			self.imageID = imageID
			self.lastState = lastState
			self.name = name
			self.ready = ready
			self.restartCount = restartCount
			self.started = started
			self.state = state
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ContainerStatus {

	private enum CodingKeys: String, CodingKey {

		case containerID = "containerID"
		case image = "image"
		case imageID = "imageID"
		case lastState = "lastState"
		case name = "name"
		case ready = "ready"
		case restartCount = "restartCount"
		case started = "started"
		case state = "state"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.containerID = try container.decodeIfPresent(String.self, forKey: .containerID)
		self.image = try container.decode(String.self, forKey: .image)
		self.imageID = try container.decode(String.self, forKey: .imageID)
		self.lastState = try container.decodeIfPresent(core.v1.ContainerState.self, forKey: .lastState)
		self.name = try container.decode(String.self, forKey: .name)
		self.ready = try container.decode(Bool.self, forKey: .ready)
		self.restartCount = try container.decode(Int32.self, forKey: .restartCount)
		self.started = try container.decodeIfPresent(Bool.self, forKey: .started)
		self.state = try container.decodeIfPresent(core.v1.ContainerState.self, forKey: .state)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(containerID, forKey: .containerID)
		try encodingContainer.encode(image, forKey: .image)
		try encodingContainer.encode(imageID, forKey: .imageID)
		try encodingContainer.encode(lastState, forKey: .lastState)
		try encodingContainer.encode(name, forKey: .name)
		try encodingContainer.encode(ready, forKey: .ready)
		try encodingContainer.encode(restartCount, forKey: .restartCount)
		try encodingContainer.encode(started, forKey: .started)
		try encodingContainer.encode(state, forKey: .state)
	}
}
