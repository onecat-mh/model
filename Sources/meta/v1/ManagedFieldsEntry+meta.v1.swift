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

public extension meta.v1 {

	///
	/// ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource that the fieldset applies to.
	///
	struct ManagedFieldsEntry: KubernetesResource {
		///
		/// APIVersion defines the version of this resource that this field set applies to. The format is "group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.
		///
		public var apiVersion: String?
		///
		/// FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: "FieldsV1"
		///
		public var fieldsType: String?
		///
		/// FieldsV1 holds the first JSON version format as described in the "FieldsV1" type.
		///
		public var fieldsV1: [String: Any]?
		///
		/// Manager is an identifier of the workflow managing these fields.
		///
		public var manager: String?
		///
		/// Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
		///
		public var operation: String?
		///
		/// Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'
		///
		public var time: String?
		///
		/// Default memberwise initializer
		///
		public init(
			apiVersion: String? = nil,
			fieldsType: String? = nil,
			fieldsV1: [String: Any]? = nil,
			manager: String? = nil,
			operation: String? = nil,
			time: String? = nil
		) {
			self.apiVersion = apiVersion
			self.fieldsType = fieldsType
			self.fieldsV1 = fieldsV1
			self.manager = manager
			self.operation = operation
			self.time = time
		}
	}
}

extension meta.v1.ManagedFieldsEntry {

	private enum CodingKeys: String, CodingKey {
		case apiVersion = "apiVersion"
		case fieldsType = "fieldsType"
		case fieldsV1 = "fieldsV1"
		case manager = "manager"
		case operation = "operation"
		case time = "time"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.apiVersion = try container.decodeIfPresent(String.self, forKey: .apiVersion)
		self.fieldsType = try container.decodeIfPresent(String.self, forKey: .fieldsType)
		self.fieldsV1 = try container.decodeIfPresent([String: Any].self, forKey: .fieldsV1)
		self.manager = try container.decodeIfPresent(String.self, forKey: .manager)
		self.operation = try container.decodeIfPresent(String.self, forKey: .operation)
		self.time = try container.decodeIfPresent(String.self, forKey: .time)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encode(self.apiVersion, forKey: .apiVersion)
		try container.encode(self.fieldsType, forKey: .fieldsType)
		try container.encode(self.fieldsV1, forKey: .fieldsV1)
		try container.encode(self.manager, forKey: .manager)
		try container.encode(self.operation, forKey: .operation)
		try container.encode(self.time, forKey: .time)
	}
}

