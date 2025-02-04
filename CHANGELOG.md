# Changelog

## 0.4.0

- Update to Kubernetes v1.20.9
- Add proper `Quantity` SerDe (PR #1 by @mustard-mh)

## 0.3.2

- Add supported platforms for Swift package
- Add CI for iOS build

## 0.3.1

### New

- New marker protocols for:
  - `ScalableResource`
  - `StatusHavingResorce`
  - `EvictableResource`

## 0.3.0

- Update to Kubernetes v1.19.8

## 0.2.2

- Change personal copyright to Swiftkube Project

## 0.2.1

- Update to Kubernetes v1.18.13
  - No model changes between 1.18.9 and 1.18.13. This release is to track the update explicitly via a version bump.

## 0.2.0

### New

- New marker protocols for the supported API actions
  - `ReadableResource`
  - `ListableResource`
  - `CreatableResource`
  - `ReplaceableResource`
  - `DeletableResource`
  - `CollectionDeletableResource`

### API Changes

- Renamed `GroupVersionKind` initializer argument from `init(forName:)` to `init(for:)`

## 0.1.0

Initial release
