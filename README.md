# CFLM TestBox Test Runner action

This action will run a CommandBox server on the CFML engine of your choice and run TestBox on that server.

## Inputs

### `cfml-engine`

**Required** The CFML engine to use in CommandBox. Default `"lucee@5"`.

## Example usage

uses: actions/cfml-testbox-action@v1
with:
  cfml-engine: 'adobe@2018'
