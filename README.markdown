# companion.money

A companion for programmable money.

## Clone

    $ git clone git@github.com:nerdfiles/companion.money.git ./companion.money

Now...

## Workflows

    $ cd ./companion.money
    $ make start

### Setup

    $ make install
    $ make cname {some-cname.surge.sh}
    $ make all

### Long-form development

    $ make serve
    $ make dev-app
    $ make dev-style
    (... hackity hack ...)
    $ make cleanup
    $ make publish

### Hotfix development

    (... hackity hack ...)
    $ make build-app
    $ make deploy

## Dependencies

1. `percol`
2. Compass
3. CoffeeScript
4. `bower`
5. Python (for `SimpleHTTPServer`)
