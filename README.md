About smesh-feedstock
=====================

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/smesh-feedstock/blob/main/LICENSE.txt)

Home: https://github.com/LaughlinResearch/SMESH

Package license: LGPL-2.1-or-later

Summary: A complete MESH framework based on the OCCT library.

Standalone version of the meshing library from the Salome Platform.

Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=5832&branchName=main">
            <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/smesh-feedstock?branchName=main">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=5832&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/smesh-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_aarch64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=5832&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/smesh-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_aarch64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>linux_ppc64le</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=5832&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/smesh-feedstock?branchName=main&jobName=linux&configuration=linux%20linux_ppc64le_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=5832&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/smesh-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_arm64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=5832&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/smesh-feedstock?branchName=main&jobName=osx&configuration=osx%20osx_arm64_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_64</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=5832&branchName=main">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/smesh-feedstock?branchName=main&jobName=win&configuration=win%20win_64_" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-smesh-green.svg)](https://anaconda.org/freecad/smesh) | [![Conda Downloads](https://img.shields.io/conda/dn/freecad/smesh.svg)](https://anaconda.org/freecad/smesh) | [![Conda Version](https://img.shields.io/conda/vn/freecad/smesh.svg)](https://anaconda.org/freecad/smesh) | [![Conda Platforms](https://img.shields.io/conda/pn/freecad/smesh.svg)](https://anaconda.org/freecad/smesh) |

Installing smesh
================

Installing `smesh` from the `freecad/label/qt6` channel can be achieved by adding `freecad/label/qt6` to your channels with:

```
conda config --add channels freecad/label/qt6
conda config --set channel_priority strict
```

Once the `freecad/label/qt6` channel has been enabled, `smesh` can be installed with `conda`:

```
conda install smesh
```

or with `mamba`:

```
mamba install smesh
```

It is possible to list all of the versions of `smesh` available on your platform with `conda`:

```
conda search smesh --channel freecad/label/qt6
```

or with `mamba`:

```
mamba search smesh --channel freecad/label/qt6
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search smesh --channel freecad/label/qt6

# List packages depending on `smesh`:
mamba repoquery whoneeds smesh --channel freecad/label/qt6

# List dependencies of `smesh`:
mamba repoquery depends smesh --channel freecad/label/qt6
```




Updating smesh-feedstock
========================

If you would like to improve the smesh recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`freecad` channel, whereupon the built conda packages will be available for
everybody to install and use from the `freecad` channel.
Note that all branches in the conda-forge/smesh-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@adrianinsaval](https://github.com/adrianinsaval/)
* [@looooo](https://github.com/looooo/)

