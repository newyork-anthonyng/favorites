1. `npm install -g semantic-release-cli`
1. Set up your `package.json` and Github repository
1. Turn on your new repository inside [Travis CI](https://travis-ci.org/account/repositories)
1. Make sure that your `package.json` package name is not already taken on `npmjs.com`
1. `semantic-release-cli setup`
1. `touch .travis.yml`. (Use [this file as a template](https://github.com/newyork-anthonyng/react-dynamic-overflow/blob/master/.travis.yml))
1. `npm i -D travis-deploy-once @semantic-release/npm`
1. Add appropriate scripts from `.travis.yml` to your `package.json` file
1. Update `package.json` with a `release` key
```js
// package.json
{
  "release": {
    "plugins": [
      "@semantic-release/npm"
    ] 
  }
}
```

Now `semantic-release` is all set up. When you push code, `semantic-release` will publish a release to Github and npm.

[Make sure to follow conventional commit messages](https://github.com/commitizen/cz-cli).
