# pros-build
Build a PROS C++ project in Github Actions!

Note: this only works with the latest version of PROS

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
    timeout-minutes: 10
    steps:
      - name: Check out repository code
        uses: actions/checkout@v3
      - name: Builds Code
        uses: fishsticks89/pros-build@v1
```
