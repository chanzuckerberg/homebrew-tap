# homebrew-tap

A collection of various hombrew formulae.

**NOTE**
The default branch was renamed to `main`. If you tapped previously, you will need to update your local reference to the new upstream.

You can do as follows:
```
brew update-reset --debug $(brew --repo chanzuckerberg/tap)
```

Otherwise
```
brew untap -f chanzuckerberg/tap
brew tap chanzuckerberg/tap
```
