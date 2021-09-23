# pros-build
Build a PROS C++ project in Github Actions!

## Inputs

### `path`
The path to the project makefile. Default `.`

## Example usage
```
uses: fishsticks89/pros-build@v1
with:
  path: projects/mainproject/
```

## Full Example Workflow
```
name: Build

# Controls when the workflow will run
on: [push, pull_request, workflow_dispatch]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Check out repository code
        uses: actions/checkout@v2
      - name: Builds Code
        uses: fishsticks89/pros-build@v1
```
