# Offline Repro Pack for google/latexify_py

Vendored snapshot commit:

    fea55f8a0389b0e196d967d2eef8b84883d02ff1

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