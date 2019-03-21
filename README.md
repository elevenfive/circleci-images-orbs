# CircleCI Images Orb [![CircleCI Build Status](https://circleci.com/gh/cci-orbs/circleci-images.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/cci-orbs/circleci-images) [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/circleci/circleci-images)](https://circleci.com/orbs/registry/orb/circleci/circleci-imagesi)

An orb for using/extending CircleCI's convenience images

## Usage

_For full usage guidelines, see the [orb registry listing](http://circleci.com/orbs/registry/orb/circleci/circleci-images)._

Currently, the orb supports installing a version of the Android NDK of your choice within CircleCI's `circleci/android` Docker convenience image.

### [`install-android-ndk`](https://circleci.com/orbs/registry/orb/circleci/circleci-images#commands-install-android-ndk)

```yaml
version: 2.1

orbs:
  circleci-images: circleci/circleci-images@x.y.z

jobs:
  build:
    docker:
      - image: circleci/android:your-tag
  steps:
    - checkout

    - circleci-images/install-android-ndk
        ndk-version: android-ndk-r19c
        ndk-sha: fd94d0be6017c6acbd193eb95e09cf4b6f61b834
```

There are two required parameters: `ndk-version` and `ndk-sha`. Any version and checksum can be passed; however, the orb is only tested against [CircleCI's Android images](https://hub.docker.com/r/circleci/android) with versions `17c`, `18b`, and `19c` and their checksums. The list of official SHA-1 checksums is available at: https://developer.android.com/ndk/downloads.

## Contributing

We welcome [issues](https://github.com/CircleCI-Public/gcp-binary-authorization-orb/issues) to and [pull requests](https://github.com/CircleCI-Public/gcp-binary-authorization-orb/pulls) against this repository!

For further questions/comments about this or other orbs, visit [CircleCI's orbs discussion forum](https://discuss.circleci.com/c/orbs).
