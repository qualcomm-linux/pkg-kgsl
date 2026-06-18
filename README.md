# pkg-kgsl

This repository has debian packaging rules and scripts for kgsl project present at https://github.com/qualcomm-linux/kgsl.

## Branches

- **qli-ci**: The primary branch containing workflow logic in the `.github/` folder, along with boilerplate documentation files such as license, contribution guidelines, and this README.
- **qcom/ubuntu/resolute**: This branch contains kgsl debian packaging rules and scripts for Ubuntu 26.04 (Resolute Raccoon).
- **qcom/debian/trixie**: This branch contains kgsl debian packaging rules and scripts for Debian Trixie.

## Typical Workflows

1. **Upstream promotion**: When the upstream project tags a new release, the promote workflow merges it into the packaging branch and opens a PR.
2. **PR validation**: PRs in this repo are validated against the package build to catch breakages early.
3. **Release**: A manual dispatch finalizes the changelog, builds the package, uploads artifacts to S3, and notifies [qcom-distro-images](https://github.com/qualcomm-linux/qcom-distro-images).

## Development

How to develop new features/fixes for the software. Maybe different than "usage". Also provide details on how to contribute via a [CONTRIBUTING.md file](CONTRIBUTING.md).

## Usage

Build: To build the the package, go to *Actions* tab, select the *Build Debian Package* workflow, then 'Run workflow'

Upstream Version Promotion: ...

The workflows of this repo use the reusable workflows from qcom-build-utils in the background. To understand more how everything
connects together, see https://github.com/qualcomm-linux/qcom-build-utils

## Installation Instructions

sudo dpkg -i kgsl-dkms_x_arm64.deb
where x holds the version number of the package.


## Getting in Contact

How to contact maintainers. E.g. GitHub Issues, GitHub Discussions could be indicated for many cases. However a mail list or list of Maintainer e-mails could be shared for other types of discussions. E.g.

* [Report an Issue on GitHub](../../issues)
* [Open a Discussion on GitHub](../../discussions)
* [E-mail us](mailto:Maintainers.pkg-kgsl@qualcomm.com) for general questions

## License

pkg-kgsl is licensed under the GPL-2.0 license. See [LICENSE.txt](LICENSE.txt) for the full license text.
