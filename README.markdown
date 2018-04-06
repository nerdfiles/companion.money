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

### Development

    $ make serve
    $ make dev-app
    $ make dev-style
    (... hackity hack ...)
    $ make cleanup
    $ make publish

Or just:

    $ make start
    $ (choose "build-app")
    (... hackity hack ...)
    $ make deploy

## Dependencies

1. `percol`
2. Compass
3. CoffeeScript
4. `bower`
5. Python (for `SimpleHTTPServer`)
