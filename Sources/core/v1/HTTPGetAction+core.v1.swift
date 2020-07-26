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
	/// HTTPGetAction describes an action based on HTTP Get requests.
	///
	struct HTTPGetAction: KubernetesResource {
		///
		/// Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
		///
		public var host: String?
		///
		/// Custom headers to set in the request. HTTP allows repeated headers.
		///
		public var httpHeaders: [core.v1.HTTPHeader]?
		///
		/// Path to access on the HTTP server.
		///
		public var path: String?
		///
		/// Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
		///
		public var port: IntOrString
		///
		/// Scheme to use for connecting to the host. Defaults to HTTP.
		///
		public var scheme: String?
		///
		/// Default memberwise initializer
		///
		public init(
			host: String? = nil,
			httpHeaders: [core.v1.HTTPHeader]? = nil,
			path: String? = nil,
			port: IntOrString,
			scheme: String? = nil
		) {
			self.host = host
			self.httpHeaders = httpHeaders
			self.path = path
			self.port = port
			self.scheme = scheme
		}
	}
}

