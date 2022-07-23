# port2pid

Uses `lsof` to determine the port an application is listening on.

## Usage

```
port2pid <port>
```

## Development

`port2pid` requires [Crystal](https://crystal-lang.org/) compiler.  A binary can be built by running

```
make
```

and installed at `/usr/local/bin` via

```
make install
```
