# Cosign

[Cosign](https://github.com/sigstore/cosign) is a tool used to sign, verify and store container signatures in OCI registries.  
The official image is a distroless image, while this image is using alpine linux as base image.

The user is set to cosign/cosign (uid/gid 1000).

## Tags

Tags follow the releases of cosign, they are automatically built via GitLab CI, `latest` is the most recent version.  
Be sure to check the tags for a full list of tags if you need a more specific version constraint.

### Registries

The `jitesoft/alpine` images should be possible to find at the following registries:

* `docker.io/jitesoft/cosign` (or just `jitesoft/cosign`)
* `registry.gitlab.com/jitesoft/dockerfiles/cosign`
* `ghcr.io/jitesoft/cosign`

### Dockerfile

Dockerfile and scripts can be found at [GitLab](https://gitlab.com/jitesoft/dockerfiles/cosign) or [GitHub](https://github.com/jitesoft/docker-cosign).  

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

### Licenses

Cosign is released under the [Apache v2.0](https://github.com/sigstore/cosign/blob/main/LICENSE) license.  
This repository is released under the MIT license.

### Sponsors

Jitesoft images are built via GitLab CI on runners hosted by the following wonderful organisations:

<a href="https://fosshost.org/">
  <img src="https://raw.githubusercontent.com/jitesoft/misc/master/sponsors/fosshost.png" height="128" alt="Fosshost logo" />
</a>
<a href="https://www.aarch64.com/">
  <img src="https://raw.githubusercontent.com/jitesoft/misc/master/sponsors/aarch64.png" height="128" alt="Aarch64 logo" />
</a>

_The companies above are not affiliated with Jitesoft or any Jitesoft Projects directly._

---

Sponsoring is vital for the further development and maintaining of open source.  
Questions and sponsoring queries can be made by <a href="mailto:sponsor@jitesoft.com">email</a>.  
If you wish to sponsor our projects, reach out to the email above or visit any of the following sites:

[Open Collective](https://opencollective.com/jitesoft-open-source)  
[GitHub Sponsors](https://github.com/sponsors/jitesoft)  
[Patreon](https://www.patreon.com/jitesoft)

