# Containerized R in vscode

- [Visual Studio Code](https://code.visualstudio.com/)
- Extensions
    - [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)
    - [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
    - Other extensions automagically installed *inside* container by `devcontainer.json`

> ## Here Be \[Swamp] Dragons ##
>
> If everything isn't carefully positioned or if this hits an unexpected
> bump, it may strip the plaster off of the walls and make a furious cup
> of cat.

- `.devcontainer/Dockerfile`
    - minimal-ish (contains `texlive`) R environment with all the goodies to interface with vscode
    - `renv` vs vscode
        - Install R packages used by vscode to `/opt/R/library`
        - Add `/opt/R/library` to `renv`'s `external.libraries`
    - **TODO:** Are current builddeps still necessary since binary CRAN works?
    - **TODO:** caching (`apt`), caching (`install.packages`), caching (`renv`)
- `.devcontainer/devcontainer.json`
    - Informs vscode about container
    - Installs vscode extensions to support R
    - Configure vscode R extension for `radian`
- `.vscode/settings.json`
    - Enables `docker` extension while connected to container
    - Inception avoided!
- **TODO:** Make `radian` default terminal instead of `bash`
- **TODO:** Auto-attach vscode to R
- **TODO:** debug the debugger
    - Install: Cmd-Shift-P `r.debugger.updateRPackage`
    - Auto add to container using `devcontainer.json`?
