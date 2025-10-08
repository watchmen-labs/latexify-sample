# Offline Repro Pack for google/latexify_py

## Build (offline)

```bash
docker build --network=none -t latexify-offline .
```

## Run tests

Baseline:

```bash
docker run --rm -v "$(pwd)":/work latexify-offline pytest
```

PRE (apply test.patch):

```bash
docker run --rm -v "$(pwd)":/work latexify-offline pre
```

POST (apply golden.patch on top of PRE):

```bash
docker run --rm -v "$(pwd)":/work latexify-offline post
```

Artifacts are saved to `.repro/` on the host.