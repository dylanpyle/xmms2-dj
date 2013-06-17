# xmms2-dj

An early work in progress. Goals:

- An XMMS2 client which exposes a RESTful JSON API.
- A 'super-client' web application which consumes this API.

A very POC-level version exists with some basic functionality. Immediate TODOs include:

- Separating the XMMS2 interface and the API into distinct components. This way, we can swap out the former for a "real" XMMS2 client rather than a layer on top of the [`xmms2` cli](https://xmms2.org/wiki/Client:XMMS2_CLI_client).
- Implement and expose the entirety of needed functionality - playlists, collections, etc.
- Build a nice web application.
