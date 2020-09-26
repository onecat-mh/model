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
	/// WindowsSecurityContextOptions contain Windows-specific options and credentials.
	///
	struct WindowsSecurityContextOptions: KubernetesResource {
		///
		/// GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.
		///
		public var gmsaCredentialSpec: String?
		///
		/// GMSACredentialSpecName is the name of the GMSA credential spec to use.
		///
		public var gmsaCredentialSpecName: String?
		///
		/// The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
		///
		public var runAsUserName: String?
		///
		/// Default memberwise initializer
		///
		public init(
			gmsaCredentialSpec: String? = nil,
			gmsaCredentialSpecName: String? = nil,
			runAsUserName: String? = nil
		) {
			self.gmsaCredentialSpec = gmsaCredentialSpec
			self.gmsaCredentialSpecName = gmsaCredentialSpecName
			self.runAsUserName = runAsUserName
		}
	}
}

///
/// Codable conformance
///
extension core.v1.WindowsSecurityContextOptions {

	private enum CodingKeys: String, CodingKey {
		case gmsaCredentialSpec = "gmsaCredentialSpec"
		case gmsaCredentialSpecName = "gmsaCredentialSpecName"
		case runAsUserName = "runAsUserName"
	}

}

