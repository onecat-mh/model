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

public extension certificates.v1beta1 {

	///
	/// This information is immutable after the request is created. Only the Request and Usages fields can be set on creation, other fields are derived by Kubernetes and cannot be modified by users.
	///
	struct CertificateSigningRequestSpec: KubernetesResource {
		///
		/// Extra information about the requesting user. See user.Info interface for details.
		///
		public var extra: [String: [String]]?
		///
		/// Group information about the requesting user. See user.Info interface for details.
		///
		public var groups: [String]?
		///
		/// Base64-encoded PKCS#10 CSR data
		///
		public var request: String
		///
		/// Requested signer for the request. It is a qualified name in the form: `scope-hostname.io/name`. If empty, it will be defaulted:
		///  1. If it's a kubelet client certificate, it is assigned
		///     "kubernetes.io/kube-apiserver-client-kubelet".
		///  2. If it's a kubelet serving certificate, it is assigned
		///     "kubernetes.io/kubelet-serving".
		///  3. Otherwise, it is assigned "kubernetes.io/legacy-unknown".
		/// Distribution of trust for signers happens out of band. You can select on this field using `spec.signerName`.
		///
		public var signerName: String?
		///
		/// UID information about the requesting user. See user.Info interface for details.
		///
		public var uid: String?
		///
		/// allowedUsages specifies a set of usage contexts the key will be valid for. See: https://tools.ietf.org/html/rfc5280#section-4.2.1.3
		///      https://tools.ietf.org/html/rfc5280#section-4.2.1.12
		///
		public var usages: [String]?
		///
		/// Information about the requesting user. See user.Info interface for details.
		///
		public var username: String?
		///
		/// Default memberwise initializer
		///
		public init(
			extra: [String: [String]]? = nil,
			groups: [String]? = nil,
			request: String,
			signerName: String? = nil,
			uid: String? = nil,
			usages: [String]? = nil,
			username: String? = nil
		) {
			self.extra = extra
			self.groups = groups
			self.request = request
			self.signerName = signerName
			self.uid = uid
			self.usages = usages
			self.username = username
		}
	}
}

///
/// Codable conformance
///
extension certificates.v1beta1.CertificateSigningRequestSpec {

	private enum CodingKeys: String, CodingKey {
		case extra = "extra"
		case groups = "groups"
		case request = "request"
		case signerName = "signerName"
		case uid = "uid"
		case usages = "usages"
		case username = "username"
	}

}

