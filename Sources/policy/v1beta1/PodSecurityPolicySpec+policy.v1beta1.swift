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
	/// PodSecurityPolicySpec defines the policy enforced.
	///
	struct PodSecurityPolicySpec: KubernetesResource, Codable {
	
		///
		/// allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
		///
		var allowPrivilegeEscalation: Bool?
	
		///
		/// AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes. This is an alpha field, and is only honored if the API server enables the CSIInlineVolume feature gate.
		///
		var allowedCSIDrivers: [policy.v1beta1.AllowedCSIDriver]?
	
		///
		/// allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.
		///
		var allowedCapabilities: [String]?
	
		///
		/// allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "volumes" field.
		///
		var allowedFlexVolumes: [policy.v1beta1.AllowedFlexVolume]?
	
		///
		/// allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used.
		///
		var allowedHostPaths: [policy.v1beta1.AllowedHostPath]?
	
		///
		/// AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled.
		///
		var allowedProcMountTypes: [String]?
	
		///
		/// allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.
		/// 
		/// Examples: e.g. "foo/*" allows "foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.
		///
		var allowedUnsafeSysctls: [String]?
	
		///
		/// defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list.
		///
		var defaultAddCapabilities: [String]?
	
		///
		/// defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.
		///
		var defaultAllowPrivilegeEscalation: Bool?
	
		///
		/// forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.
		/// 
		/// Examples: e.g. "foo/*" forbids "foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.
		///
		var forbiddenSysctls: [String]?
	
		///
		/// fsGroup is the strategy that will dictate what fs group is used by the SecurityContext.
		///
		var fsGroup: policy.v1beta1.FSGroupStrategyOptions
	
		///
		/// hostIPC determines if the policy allows the use of HostIPC in the pod spec.
		///
		var hostIPC: Bool?
	
		///
		/// hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
		///
		var hostNetwork: Bool?
	
		///
		/// hostPID determines if the policy allows the use of HostPID in the pod spec.
		///
		var hostPID: Bool?
	
		///
		/// hostPorts determines which host port ranges are allowed to be exposed.
		///
		var hostPorts: [policy.v1beta1.HostPortRange]?
	
		///
		/// privileged determines if a pod can request to be run as privileged.
		///
		var privileged: Bool?
	
		///
		/// readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
		///
		var readOnlyRootFilesystem: Bool?
	
		///
		/// requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
		///
		var requiredDropCapabilities: [String]?
	
		///
		/// RunAsGroup is the strategy that will dictate the allowable RunAsGroup values that may be set. If this field is omitted, the pod's RunAsGroup can take any value. This field requires the RunAsGroup feature gate to be enabled.
		///
		var runAsGroup: policy.v1beta1.RunAsGroupStrategyOptions?
	
		///
		/// runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
		///
		var runAsUser: policy.v1beta1.RunAsUserStrategyOptions
	
		///
		/// runtimeClass is the strategy that will dictate the allowable RuntimeClasses for a pod. If this field is omitted, the pod's runtimeClassName field is unrestricted. Enforcement of this field depends on the RuntimeClass feature gate being enabled.
		///
		var runtimeClass: policy.v1beta1.RuntimeClassStrategyOptions?
	
		///
		/// seLinux is the strategy that will dictate the allowable labels that may be set.
		///
		var seLinux: policy.v1beta1.SELinuxStrategyOptions
	
		///
		/// supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
		///
		var supplementalGroups: policy.v1beta1.SupplementalGroupsStrategyOptions
	
		///
		/// volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.
		///
		var volumes: [String]?
	
	}
}

