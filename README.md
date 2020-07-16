# CFML TestBox Test Runner action

This action will run a CommandBox server using the CFML engine of your choice and run TestBox on that server.

## Inputs

### `cfml-engine`

**Required** The CFML engine to use in CommandBox. Default `"lucee@5"`.

## Example usage

```
uses: coldfumonkeh/cfml-testbox-action@v1
with:
  cfml-engine: 'adobe@2018'
```

The above snippet will ensure this action will fire up an Adobe ColdFusion 2018 CommandBox server.

## Matrix Testing Example

The following is an example `.github/workflows/main.yml` file that you can use in your repositories to create matrix testing strategies for various versions of CFML engines:

```
name: CFML Testing Workflow

# Controls when the action will run. Triggers the workflow on push or pull request
# events but only for the master branch
on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  test:
    
    name: Test on ${{ matrix.cfml_engine }}
    runs-on: ubuntu-latest

    strategy:
      matrix:
        cfml_engine: [lucee@4, lucee@5, adobe@2016, adobe@2018]

    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: CFML TestBox Action
        uses: coldfumonkeh/cfml-testbox-action@v1
        with:
          cfml-engine: ${{ matrix.cfml_engine }}
```