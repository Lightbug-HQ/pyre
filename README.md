<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
    <img src="static/logo.png" alt="Logo" width="250" height="250">

  <h3 align="center">Pyre</h3>

  <p align="center">
    🗼 A <a href="https://github.com/tower-rs/tower/tree/master">Tower</a> on fire! 🔥
    <br/>

   ![Written in Mojo][language-shield]
   [![MIT License][license-shield]][license-url]
   [![Contributors Welcome][contributors-shield]][contributors-url]
   [![Join our Discord][discord-shield]][discord-url]
   

  </p>
</div>

## Overview

Pyre is a set of components for building networking systems in Mojo.

Pyre currently has the following components:
 - [x] Service trait that takes in a `Request` and returns a `Response`

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

Learn how to get up and running with Mojo on the [Modular website](https://www.modular.com/max/mojo).
Once you have a Mojo project set up locally,

1. Add the `mojo-community` channel to your `mojoproject.toml`, e.g:
   ```toml
   [project]
   channels = ["conda-forge", "https://conda.modular.com/max", "https://repo.prefix.dev/mojo-community"]
   ```
2. Add `pyre` in dependencies:
   ```toml
   [dependencies]
   pyre = ">=0.1.0"
   ```
3. Run `magic install` at the root of your project, where `mojoproject.toml` is located
4. Pyre should now be installed. You can import all the default imports at once, e.g:
    ```mojo
    from pyre import *
    ```
    or import individual structs and functions, e.g. 
    ```mojo
    from pyre.service import Service
    ```
5. To use the `Service` trait:
   ```mojo
   trait Service:
    fn func(self, req: Request) raises -> Response:
        ...
   ```
   E.g implement a `Printer` service that prints some details about the request to console:
   ```mojo
    from pyre import Request, Response, OK

    @always_inline
    fn printer(req: Request) -> Response:
            print("Got a request on ", req.uri.path, " with method ", req.method)
            return OK(req.body_raw)
   ```


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[language-shield]: https://img.shields.io/badge/language-mojo-orange
[license-shield]: https://img.shields.io/github/license/saviorand/pyre?logo=github
[license-url]: https://github.com/saviorand/pyre/blob/main/LICENSE
[contributors-shield]: https://img.shields.io/badge/contributors-welcome!-blue
[contributors-url]: https://github.com/saviorand/pyre#contributing
[discord-shield]: https://img.shields.io/discord/1192127090271719495?style=flat&logo=discord&logoColor=white
[discord-url]: https://discord.gg/VFWETkTgrr


## Contributors
Want your name to show up here? See [CONTRIBUTING.md](./CONTRIBUTING.md)!

<a href="https://github.com/saviorand/pyre/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=saviorand/pyre" />
</a>

<sub>Made with [contrib.rocks](https://contrib.rocks).</sub>